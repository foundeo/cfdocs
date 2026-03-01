# cfinsert

Inserts records in data sources from data in a CFML form
 or form Scope.

It can be used instead of cfquery with insert sql command.

### Syntax

```html
<cfinsert datasource="" tablename="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfinsert(datasource="", tablename="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datasource | string | Yes |  | Data source; contains table. |
| tablename | string | Yes |  | Table in which to insert form fields.<br /><br /> ORACLE drivers: must be uppercase.<br /> Sybase driver: case-sensitive. Must be the same case used<br /> when table was created |
| tableowner | string | No |  | For data sources that support table ownership (such as SQL<br /> Server, Oracle, and Sybase SQL Anywhere), use this field to<br /> specify the owner of the table. |
| tablequalifier | string | No |  | For data sources that support table qualifiers, use this<br /> field to specify qualifier for table. The purpose of table<br /> qualifiers varies among drivers. For SQL Server and<br /> Oracle, qualifier refers to name of database that contains<br /> table. For Intersolv dBASE driver, qualifier refers to<br /> directory where DBF files are located. |
| username | string | No |  | Overrides username specified in ODBC setup. |
| password | string | No |  | Overrides password specified in ODBC setup. |
| formfields | string | No |  | Comma-delimited list of form fields to insert. If not<br /> specified, all fields in the form are included.<br /><br /> If a form field is not matched by a column name in the<br /> database, CFML throws an error.<br /><br /> The database table key field must be present in the form.<br /> It may be hidden. |
| providerdsn | string | No |  |  |
| dbtype | string | No |  |  |
| dbname | string | No |  |  |
| dbserver | string | No |  |  |
| provider | string | No |  |  |

## Insert a record using passed form fields

Uses the cfinsert function to insert a record into the a users table based on a list form fields

```html
cfinsert( datasource="myDsn", tablename="users", formFields="firstName,lastName,emailAddress" );
```
