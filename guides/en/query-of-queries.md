# Query of Queries

Query of Queries (QoQ) runs an in-memory SQL `SELECT` over query variables already in scope — no
datasource, no driver, no database round trip. You reach it by passing `dbtype: "query"`:

```cfm
employees = queryExecute("SELECT * FROM users WHERE active = 1");   // real database

top = queryExecute(
    "SELECT name, salary FROM employees WHERE salary > :min ORDER BY salary DESC",
    { min: 50000 },
    { dbtype: "query" }                                             // Query of Queries
);
```

The query variable is referenced by its **variable name** in the `FROM` clause.

## The portable core

This much works across engines and is the safe target if your code has to run on more than one:

`SELECT` (including `*`, `table.*` and aliases), `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`
(multi-key, `ASC`/`DESC`), `DISTINCT`, `SELECT TOP n`; `INNER`, `LEFT`, `RIGHT` and
`FULL [OUTER] JOIN ... ON`, plus `CROSS` and comma joins; `UNION` and `UNION ALL`;
`IN (SELECT ...)`; `CAST`/`CONVERT`, `BETWEEN`, `LIKE [ESCAPE]`, `IS [NOT] NULL`; and positional
`?` and named `:name` parameters, including `cfqueryparam`.

## Extended SQL — BoxLang and RustCFML

BoxLang widened what QoQ accepts beyond the traditional CFML set, and **RustCFML followed
BoxLang's lead here rather than inventing its own dialect**. The features below are accepted by
both engines and rejected by Lucee's QoQ. This is not a wrong-result divergence — the same query is
simply accepted by more engines — but SQL using them is **not portable back to Lucee**:

| Feature | BoxLang | RustCFML | Lucee QoQ |
|---|---|---|---|
| `LIMIT n [OFFSET m]` | Yes | Yes | No — uses `SELECT TOP n` |
| `CASE ... WHEN ... END` (searched and simple) | Yes | Yes | No |
| Scalar subquery in the `SELECT` list | Yes | Yes | No |
| Derived table `FROM (SELECT ...) AS t` | Yes | Yes | No |
| Custom SQL functions (`queryRegisterFunction`) | Yes | Yes | No |

### Examples

```cfm
staff = queryNew("id,name,dept", "integer,varchar,integer", [
    { id: 1, name: "Alice", dept: 10 },
    { id: 2, name: "Bob",   dept: 20 },
    { id: 3, name: "Carol", dept: 10 },
    { id: 4, name: "Dave",  dept: 20 }
]);
depts = queryNew("id,title", "integer,varchar", [
    { id: 10, title: "Engineering" },
    { id: 20, title: "Sales" }
]);

// LIMIT / OFFSET
page = queryExecute(
    "SELECT name FROM staff ORDER BY name LIMIT 2 OFFSET 1",
    {}, { dbtype: "query" });            // Bob, Carol

// Scalar subquery in the SELECT list
counted = queryExecute(
    "SELECT name, (SELECT COUNT(*) FROM depts) AS dcount FROM staff WHERE id = 1",
    {}, { dbtype: "query" });            // dcount = 2

// Derived table
eng = queryExecute(
    "SELECT t.name AS n FROM (SELECT name, dept FROM staff WHERE dept = 10) AS t ORDER BY t.name",
    {}, { dbtype: "query" });            // Alice, Carol

// CASE — searched and simple
banded = queryExecute(
    "SELECT name, CASE WHEN dept = 10 THEN 'eng' ELSE 'other' END AS band FROM staff ORDER BY name",
    {}, { dbtype: "query" });
coded = queryExecute(
    "SELECT CASE dept WHEN 10 THEN 'E' WHEN 20 THEN 'S' END AS code FROM staff WHERE id = 2",
    {}, { dbtype: "query" });            // code = "S"
```

## Custom SQL functions — `queryRegisterFunction`

> **BoxLang and RustCFML only.** This has no equivalent on Adobe ColdFusion or Lucee. The concept
> was **introduced by BoxLang**; RustCFML implements it under the same name, taking its influence
> from BoxLang's design.

`queryRegisterFunction` registers a CFML user-defined function or closure under a name you can then
call **inside QoQ SQL** — the QoQ equivalent of a user-defined SQL function. It keeps the logic in
CFML instead of forcing you to pre-process the query in a loop.

### Scalar functions

A scalar function receives one value per row and returns one value. It can be used anywhere an
expression is valid — the `SELECT` list, `WHERE`, `ORDER BY`:

```cfm
nums = queryNew("n,grp", "integer,varchar", [
    { n: 1, grp: "a" }, { n: 2, grp: "a" },
    { n: 3, grp: "b" }, { n: 4, grp: "b" }
]);

queryRegisterFunction("doubleIt", function(x) { return x * 2; });

// in the SELECT list
doubled = queryExecute(
    "SELECT n, doubleIt(n) AS dbl FROM nums ORDER BY n",
    {}, { dbtype: "query" });            // dbl = 2, 4, 6, 8

// in the WHERE clause
big = queryExecute(
    "SELECT n FROM nums WHERE doubleIt(n) > 4 ORDER BY n",
    {}, { dbtype: "query" });            // n = 3, 4
```

### Aggregate functions

Register with a `type` of `"aggregate"`. An aggregate receives **an array of the column's values
for the group** and returns a single value, so it works with `GROUP BY` exactly like `SUM` or
`AVG`. Both engines agree on this contract:

```cfm
queryRegisterFunction("product", function(vals) {
    var p = 1;
    for (var v in vals) { p = p * v; }
    return p;
}, "aggregate");

grouped = queryExecute(
    "SELECT grp, product(n) AS prod FROM nums GROUP BY grp ORDER BY grp",
    {}, { dbtype: "query" });
// grp "a" -> 1 * 2 = 2
// grp "b" -> 3 * 4 = 12
```

### The signatures differ

The two engines expose different argument lists, so a registration call is not copy-paste portable
between them even though the SQL that uses it is:

| Engine | Signature |
|---|---|
| BoxLang | `queryRegisterFunction(name, function, returnType, type)` |
| RustCFML | `queryRegisterFunction(name, udf [, type])` |

BoxLang takes a declared `returnType`; RustCFML infers it and omits that argument. In both, `type`
is `scalar` (the default) or `aggregate`.

### Feature-detecting it

Because Adobe ColdFusion and Lucee have no equivalent, probe for it rather than assuming:

```cfm
supportsCustomQoQFunctions = true;
try {
    queryRegisterFunction("__probe", function(x) { return x; });
} catch (any e) {
    supportsCustomQoQFunctions = false;
}
```

## Limitations

**Correlated subqueries are not supported** on RustCFML — a subquery referencing a column from the
outer row will not work, because subqueries are executed once, uncorrelated. This matches typical
QoQ usage on other engines. A referenced table or column that does not exist raises an error rather
than failing quietly.

## See also

`queryExecute`, `queryNew`, `queryRegisterFunction`
