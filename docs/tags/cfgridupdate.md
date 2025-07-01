# cfgridupdate

Used within a cfgrid tag. Updates data sources directly from
 edited grid data. This tag provides a direct interface with
 your data source.

 This tag applies delete row actions first, then insert row
 actions, then update row actions. If it encounters an error,
 it stops processing rows.

### Syntax

```html
<cfgridupdate grid="" datasource="" tablename="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfgridupdate(grid="", datasource="", tablename="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| grid | string | Yes |  | Name of cfgrid form element that is the source for the
 update action. |
| datasource | string | Yes |  | Name of data source for the update action. |
| tablename | string | Yes |  | Table in which to insert form fields.

 ORACLE drivers: must be uppercase.
 Sybase driver: case-sensitive. Must be the same case used
 when table was created |
| username | string | No |  | Overrides username specified in ODBC setup. |
| password | string | No |  | Overrides password specified in ODBC setup. |
| tableowner | string | No |  | Table owner, if supported. |
| tablequalifier | string | No |  | For data sources that support table qualifiers, use this
 field to specify qualifier for table. The purpose of table
 qualifiers varies among drivers. For SQL Server and
 Oracle, qualifier refers to name of database that contains
 table. For Intersolv dBASE driver, qualifier refers to
 directory where DBF files are located. |
| keyonly | boolean | No |  | Applies to the update action:
 Yes: the WHERE criteria are limited to the key values
 No: the WHERE criteria include key values and the original
 values of changed fields |
