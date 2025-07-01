# queryExecute

Executes a SQL query, returns the result.

```javascript
queryExecute(sql [, params, options])
```

```javascript
returns query
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| sql | string | Yes |  | SQL string to execute. |
| params | any | No |  | Array or Struct of parameter values. When passing an array use ? as place holders. When passing a struct use :keyName where keyName is the name of the key in the structure corresponding to the parameter. The struct or array can be a struct with keys such as the following. |
| options | struct | No |  | Struct containing query options, all cfquery tag attributes are supported except the name attribute. |

## Simple Example

SQL Only Example. Assumes that a default datasource has been specified (by setting the variable this.datasource in Application.cfc)

```javascript
qryResult = queryExecute("SELECT * FROM Employees");
```

## Passing Query Parameters using Struct

Use :structKeyName in your sql then pass a struct with corresponding key names.

```javascript
qryResult = queryExecute("SELECT * FROM Employees WHERE empid = :empid AND country = :country", {country="USA", empid=1});
```

## Passing Query Parameters using Array

When passing with an array use the ? as a placeholder in your sql

```javascript
qryResult = queryExecute("SELECT * FROM Employees WHERE empid = ? AND country = ?", [1,"USA"]);
```

## Passing Query Parameters using Struct of Structs

If you need to pass the cfsqltype or other cfqueryparam attributes you can pass a struct for each param.

```javascript
qryResult = queryExecute("SELECT * FROM Employees WHERE empid = :empid AND country = :country", {country={value="USA", cfsqltype="cf_sql_varchar"}, empid={value=1, cfsqltype="cf_sql_integer"}});
```

## Specifying the Datasource

If you have not defined the datasource using this.datasource in Application.cfc or want to explicitly specify the datasource use the third argument.

```javascript
qryResult = queryExecute("SELECT * FROM Employees", {}, {datasource="myDataSourceName"});
```

## Combined Example

Complete example showing use of an sql statement, query parameters using Struct of Structs, while specifying the datasource .

```javascript
sql = "SELECT * FROM Employees WHERE empid = :empid AND country = :country";
qparams = structNew();
qparams.empid = { value=1, cfsqltype="cf_sql_integer" };
qparams.country = { value="Canada", cfsqltype="cf_sql_varchar" };
options = { datasource="myDataSourceName" };
qryResult = queryExecute(sql, qparams, options);
```

## Get Primary Key of INSERTed record

To return the Generated Key of an INSERT query, you need to specify a result variable in the 3rd argument, options.
* Note your SQL must contain ONLY a single INSERT and no other SQL code or generatedKey will not be available.

```javascript
queryExecute( "INSERT INTO employee ( firstname ) VALUES ( :firstname )", { firstname = { value="Han", cfsqltype="varchar" } }, { result="employee" } );
writeDump( employee.generatedKey );
```

## IN Query using lists

Query the database using a list of values

```javascript
keys = '1,2,3,4,5,6,7';
data = queryExecute("select * from sometable where somecolumn in (:keys)",{keys={value=keys,list=true}});
```

## Query of Queries

Query a local database variable without going through your database

```javascript
users = queryNew( "firstname", "varchar", [{"firstname":"Han"}] );
subUsers = queryExecute( "select * from users", {}, { dbtype="query" } );
writedump( subUsers );
```

## Return Query as an Array of Structs - Lucee5+

Lucee5+ Return a query object converted into an array of structs.

```javascript
users = queryNew( "firstname", "varchar", [{"firstname":"Han"}] );
subUsers = queryExecute( "select * from users", {}, { dbtype="query", returntype="array" } );
writedump( subUsers );
```

### Expected Result: [ { firstname: "Han" } ]

## Return Query as an Array of Structs - Lucee 4.5

Lucee4.5+ Return a query object converted into an array of structs.

```javascript
users = queryNew( "firstname", "varchar", [{"firstname":"Han"}] );
subUsers = queryExecute( "select * from users", {}, { dbtype="query", returntype="array-of-entities" } );
writedump( subUsers );
```

### Expected Result: [ { firstname: "Han" } ]

## Return Query as a Struct of Structs

Lucee5+ Return a query object converted into a struct of structs. (Struct key is based on the "columnkey" parameter)

```javascript
users = queryNew( "id, firstname", "integer, varchar", [{"id":1, "firstname":"Han"}] );
subUsers = queryExecute( "select * from users", {}, { dbtype="query", returntype="struct", columnkey="id" } );
writedump( subUsers );
```

### Expected Result: { 1: { id: 1, firstname: "Han" } }
