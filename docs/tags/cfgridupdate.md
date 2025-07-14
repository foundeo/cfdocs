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
| grid | string | Yes |  | Name of cfgrid form element that is the source for the<br /> update action. |
| datasource | string | Yes |  | Name of data source for the update action. |
| tablename | string | Yes |  | Table in which to insert form fields.<br /><br /> ORACLE drivers: must be uppercase.<br /> Sybase driver: case-sensitive. Must be the same case used<br /> when table was created |
| username | string | No |  | Overrides username specified in ODBC setup. |
| password | string | No |  | Overrides password specified in ODBC setup. |
| tableowner | string | No |  | Table owner, if supported. |
| tablequalifier | string | No |  | For data sources that support table qualifiers, use this<br /> field to specify qualifier for table. The purpose of table<br /> qualifiers varies among drivers. For SQL Server and<br /> Oracle, qualifier refers to name of database that contains<br /> table. For Intersolv dBASE driver, qualifier refers to<br /> directory where DBF files are located. |
| keyonly | boolean | No |  | Applies to the update action:<br /> Yes: the WHERE criteria are limited to the key values<br /> No: the WHERE criteria include key values and the original<br /> values of changed fields |
