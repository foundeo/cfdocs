# cfprocparam

Defines stored procedure parameters.
This tag is nested within a `cfstoredproc` tag.
This tag does not have a body.

### Syntax

```html
<cfprocparam cfsqltype="CF_SQL_BIGINT">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfprocparam(cfsqltype="CF_SQL_BIGINT");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | No | in | This attribute indicates whether the passed variable is an input, output, or input/output.
`in`: The parameter is used to send data to the database system only. Passes the parameter by value.
`out`: The parameter is used to receive data from the database system only. Passes the parameter as a bound variable.
`inout`: The parameter is used to send and receive data. Passes the parameter as a bound variable. |
| variable | string | No |  | The name of the variable that references the value of the output parameter after the stored procedure is called.
Only valid when `type` attribute is `OUT` or `INOUT`. |
| value | string | No |  | The actual value that is passed to the stored procedure. |
| cfsqltype | string | Yes |  | SQL type to which the parameter (any type) is bound.
 CFML supports the following values, where the last element of the name corresponds to the SQL data type. Different database systems might support different subsets of this list. See your DBMS documentation for information on supported parameter types.
Refer to https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-tags/tags-p-q/cfqueryparam.html for how the types are mapped. |
| maxlength | numeric | No | 0 | Maximum length of a string or character IN or INOUT value attribute. A maxLength of `0` allows any length. The maxLength attribute is not required when specifying type=out. |
| scale | numeric | No | 0 | Number of decimal places in a numeric parameter. A scale of `0` allows any number of decimal places. |
| null | boolean | No | NO | Whether the parameter is passed in as a null value. Not used with "OUT" `type` parameters. |
| dbVarName | string | No |  | This attribute is used to specify named parameters when calling a stored procedure. If used, this attribute should be present with each cfprocparam tag of the stored procedure.
This attribute was previously deprecated then reintroduced in CF11
Databases need a variable prefix for named parameters:
`:` for Oracle
'@` for SQL Server.
See the following blog post for more information: https://coldfusion.adobe.com/2015/07/coldfusion-11-and-dbvarname-attribute/. |

## Basic Example

```html
<cfstoredproc procedure = "foo_proc" dataSource = "MY_SYBASE_TEST" username = "sa" password = "mygoodpw" dbServer = "scup" dbName = "pubs2" returnCode = "Yes" debug = "Yes">
<cfprocresult name = RS1> 
<cfprocresult name = RS3 resultSet = 3> 
<cfprocparam type = "IN" CFSQLType = "CF_SQL_INTEGER" value = "1" dbVarName = @param1> 
<cfprocparam type = "OUT" CFSQLType = "CF_SQL_DATE" variable = "FOO" dbVarName = @param2>
</cfstoredproc>
```
