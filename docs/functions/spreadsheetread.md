# spreadsheetRead

Create a new spreadsheet variable from specified file

```javascript
spreadsheetRead(fileName, spreadsheetObj)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| fileName | string | Yes |  | Path to spreadsheet file |
| spreadsheetObj | variableName | Yes |  | Spreadsheet name or number |

## Script Example

```javascript
<cfscript> 
 a = SpreadSheetRead('C:\Files\Report.xls',"Annual Report") 
 </cfscript>
```
