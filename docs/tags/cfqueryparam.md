# cfqueryparam

Verifies the data type of a query parameter and, for DBMSs that support bind variables, enables CFML to use bind variables in the SQL statement. Bind variable usage enhances performance when executing a cfquery statement multiple times.

 This tag is nested within a cfquery tag, embedded in a query SQL statement. If you specify optional parameters, this tag performs data validation.

NOTE: Due to security it's highly recommended to use this tag for any user input or non-static value used in a query to prevent code injections and the like.

### Syntax

```html
<cfqueryparam>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfqueryparam();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | string | No |  | Value that CFML passes to the right of the comparison operator in a where clause.

 If CFSQLType is a date or time option, ensure that the date value uses your DBMS-specific date format. Use the CreateODBCDateTime or DateFormat and TimeFormat functions to format the date value. |
| cfsqltype | string | No |  | SQL type that parameter (any type) is bound to. As of CF11+ or Lucee4.5+ you can omit the `cf_sql_` prefix. 
See [CFSqlType Cheatsheet](https://cfdocs.org/cfsqltype-cheatsheet) for a mapping of CFSQL data types to DBMS data types. |
| maxlength | numeric | No |  | Maximum length of parameter. |
| scale | numeric | No | 0 | Number of decimal places in parameter. Applies to `CF_SQL_NUMERIC` and `CF_SQL_DECIMAL`. |
| null | boolean | No |  | Whether parameter is passed as a `NULL` value.

 Yes: ignores the `value` attribute and passes `NULL`
 No: passes the `value` attribute |
| list | boolean | No |  | Yes: The value attribute value is a delimited list
 No: it is not |
| separator | string | No |  | Character that separates values in list, in value attribute. |

## Basic example

Shows how to use a cfqueryparam tag within cfquery.

```html
<cfquery name="news">
    SELECT id,title,story
    FROM news
    WHERE id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>
```

## Using a list on an IN statement

Assumes url.idList is a comma separated list of integers, eg: 1,2,3

```html
<cfquery name="news">
    SELECT id,title,story
    FROM news
    WHERE id IN (<cfqueryparam value="#url.idList#" cfsqltype="cf_sql_integer" list="true">)
</cfquery>
```

## Using an expressions to controll null values

Shows a basic example of using an expression to control whether null is passed to the queryparam

```html
<cfquery name="test">
      INSERT into test ( key, value )
      VALUES(
            <cfqueyparam value="#key#" cfsqltype="cf_sql_varchar" null="#isNumeric(Key) EQ false#">
            <cfqueryparam value="#value#" cfsqltype="cf_sql_varchar" null="#value EQ ''#">
      )
</cfquery>
```

## cfscript equivalent of cfqueryparam

CF11+ script syntax using queryExecute and struct notation

```html
exampleData = queryNew("id,title","integer,varchar",[{"id":1,"title":"Dewey defeats Truman"},{"id":2,"title":"Man walks on Moon"}]);

result = queryExecute(
  "SELECT title FROM exampleData WHERE id = :id", 
  { id = 2 },
  { dbtype="query" }
);

writeOutput( result.title[1] );
```

### Expected Result: Man walks on Moon

## cfscript equivalent of cfqueryparam

CF11+ script syntax using queryExecute and struct notation for multiple parameters

```html
exampleData = queryNew("id,title","integer,varchar",[{"id":1,"title":"Dewey defeats Truman"},{"id":2,"title":"Man walks on Moon"}]);

result = queryExecute(
 "SELECT * FROM exampleData WHERE id = :id AND title = :title", 
 { 
 title={value="Man walks on Moon", cfsqltype="cf_sql_varchar"}, id={value=2, cfsqltype="cf_sql_integer"} 
 },
 { dbtype="query" } 
); 

writeOutput(result.title[1]);
```

### Expected Result: Man walks on Moon

## cfscript equivalent of cfqueryparam

CF11+ script syntax using queryExecute and full array notation

```html
exampleData = queryNew("id,title","integer,varchar",[{"id":1,"title":"Dewey defeats Truman"},{"id":2,"title":"Man walks on Moon"}]);

result = queryExecute(
  "SELECT title FROM exampleData WHERE id = ?", 
  [
    { value=2, cfsqltype="cf_sql_varchar" }
  ],
  { dbtype="query" }
);

writeOutput( result.title[1] );
```

### Expected Result: Man walks on Moon

## cfscript equivalent of cfqueryparam

CF11+ script syntax using queryExecute and array shorthand

```html
exampleData = queryNew("id,title","integer,varchar",[{"id":1,"title":"Dewey defeats Truman"},{"id":2,"title":"Man walks on Moon"}]);

result = queryExecute(
  "SELECT title FROM exampleData WHERE id = ?", 
  [ 2 ],
  { dbtype="query" }
);

writeOutput( result.title[1] );
```

### Expected Result: Man walks on Moon
