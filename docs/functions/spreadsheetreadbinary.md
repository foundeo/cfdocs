# spreadsheetReadBinary

 Reads spreadsheet file into a binary object

```javascript
spreadsheetReadBinary(spreadsheetObj)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | Spreadsheet file |

## Tag Example

```javascript
<cfset testSpreadsheet = spreadhsheetnew("New Sheet")>
<cfset spreadsheetAddRow(testSpreadsheet ,"column a,column b,column c")>
<cfheader name="Content-Disposition" value="inline; filename=test.xls">
<cfcontent type="application/vnd-ms.excel" variable="#spreadsheetReadBinary(testSpreadsheet)#">
```

## Script Example

```javascript
testSpreadsheet = spreadhsheetnew("New Sheet");
spreadsheetAddRow(testSpreadsheet ,"column a,column b,column c");
cfheader(name="Content-Disposition" value="inline; filename=test.xls")'
cfcontent(type="application/vnd-ms.excel" variable="#spreadsheetReadBinary(testSpreadsheet)#");
```
