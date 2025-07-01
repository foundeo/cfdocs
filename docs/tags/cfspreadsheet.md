# cfspreadsheet

Read and writes Microsoft Excel spreadsheet files.

### Syntax

```html
<cfspreadsheet>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfspreadsheet();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | read - Reads the contents of an XLS format file.
update - Adds a new sheet to an existing XLS file. You cannot use the update action to change a sheet in an existing file.
write - Writes a new XLS format file or overwrites an existing file. |
| autosize | boolean | No | true | CF11+ Toggles automatically adjusting the width of columns to accommodate their contents. |
| columnnames | string | No |  | Comma-separated column names. |
| columns | string | No |  | Column number or range of columns. Specify a single number, a hyphen-separated column range, a comma-separated list, or any combination of these; for example: 1,3-6,9. |
| excludeHeaderRow | boolean | No | false | CF9.0.1+ If set to true, excludes the headerRow from being included in the query results of a spreadsheet read.. |
| filename | string | No |  | The pathname of the file that is written. |
| format | string | No |  | Format of the data represented by the name variable. |
| headerrow | numeric | No |  | Row number that contains column names. |
| name | string | No |  | `action="read"` The variable in which to store the spreadsheet file data. You must specify name or query. If format="csv" then name will contain csv variable.
if format="html" then name will contain HTML content.
`action="write|update"` A variable containing CSV-format data or an ColdFusion spreadsheet object containing the data to write. You must specify name or query. |
| overwrite | boolean | No |  | A Boolean value specifying whether to overwrite an existing file. |
| password | string | No |  | Set a password for modifying the sheet. |
| query | string | No |  | `action="read"` The query in which to store the converted spreadsheet file. You must specify format, name, or query.
`action="write|update"` A query variable containing the data to write. You must specify name or query. |
| rows | string | No |  | The range of rows to read. Specify a single number, a hyphen-separated row range, a comma-separated list, or any combination of these. For example: 1,3-6,9. |
| sheet | numeric | No |  | Number of the sheet. |
| sheetname | string | No |  | Name of the sheet. |
| src | string | No |  | The pathname of the file to read. |

## Read an Excel file as variable

Reads the Excel file in src into a variable provided in name.

```html
<cfspreadsheet action="read" src="#expandPath( 'example.xls' )#" name="foo" />
```

## Read an Excel file as query (script syntax)

Reads the Excel file in src into a ColdFusion query variable provided in query using the first row as column names.

```html
cfspreadsheet( action="read", src=expandPath( 'example.xls' ), query="foo", headerrow=1, excludeHeaderRow=true );
```

## Write a spreadsheet

Writes a query to an Excel file.

```html
cfspreadsheet( action="write", fileName=expandPath( 'new-example.xls' ), query="foo", overwrite=true );
```
