# cfupdate

Updates records in a data source from data in a CFML form
 or form Scope.

### Syntax

```html
<cfupdate datasource="" tablename="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfupdate(datasource="", tablename="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datasource | string | Yes |  | Name of the data source that contains the table |
| tablename | string | Yes |  | Name of table to update.
 For ORACLE drivers, must be uppercase.
 For Sybase driver: case-sensitive; must be in same case
 as used when the table was created |
| tableowner | string | No |  | For data sources that support table ownership (for example,
 SQL Server, Oracle, Sybase SQL Anywhere), the table owner. |
| tablequalifier | string | No |  | For data sources that support table qualifiers. The purpose
 of table qualifiers is as follows:
 SQL Server and Oracle: name of database that contains
 table
 Intersolv dBASE driver: directory of DBF files |
| username | string | No |  | Overrides username value specified in ODBC setup. |
| password | string | No |  | Overrides password value specified in ODBC setup. |
| formfields | string | No |  | Comma-delimited list of form fields to update.

 If a form field is not matched by a column name in the
 database, CFML throws an error.

 The formFields list must include the database table primary
 key field, which must be present in the form. It can be
 hidden. |

## Update a record using passed form fields

Uses the cfupdate function to update a record in the a users table based on a list form fields. The primary key must be included in the list of fields

```html
cfupdate( datasource="myDsn", tablename="users", formFields="userId,firstName,lastName,emailAddress" );
```
