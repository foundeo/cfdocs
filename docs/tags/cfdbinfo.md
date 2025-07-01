# cfdbinfo

Lets you retrieve information about a data source, including details about the database, tables, queries, procedures, foreign keys, indexes, and version information about the database, driver, and JDBC

### Syntax

```html
<cfdbinfo type="Columns" name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfdbinfo(type="Columns", name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes | Tables | Type of information to get:

 * dbnames: database name and type
 * tables: name, type, and remarks
 * columns: name, SQL data type, size, decimal precision, default value, maximum length in bytes of a character or integer data type column, whether nulls are allowed, ordinal position, remarks, whether the column is a primary key, whether the column is a foreign key, the table that the foreign key refers to, the key name the foreign key refers to
 * version: database product name and version, driver name and version, JDBC major and minor version
 * procedures: name, type, and remarks
 * foreignkeys: foreign key name and table, primary key name, delete and update rules
 * index: name, column on which the index is applied, ordinal position, cardinality, whether the row represents a table statistic or an index, number of pages used by the table or index, whether the index values are unique |
| datasource | string | No |  | Datasource to use to connect to the database. |
| name | string | Yes |  | Name to use to refer to the result. |
| dbname | string | No |  | Name of the database. |
| username | string | No |  | User name to connect to the database. |
| password | string | No |  | Password to connect to the database. |
| pattern | string | No |  | Used only if type = "tables" ,type = "columns" , or type = "procedures"
. Specifies a filter to retrieve information about specific tables, columns, or stored procedures. Use an underline (_) to represent a single wildcard character and a percent sign (%) to represent a wildcard of zero or more characters. |
| table | string | No |  | Name of the table from which you retrieve information. |

## Output Column Names

Along with the data type and size

```html
<cfdbinfo type="columns" name="cols" table="tester">
<cfoutput query="cols">
        #cols.column_name# #cols.type_name#(#cols.column_size#)<br>
</cfoutput>
```
