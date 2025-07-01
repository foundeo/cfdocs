# spreadsheetSetRowHeight

 Sets the height of a row in a worksheet.

```javascript
spreadsheetSetRowHeight(spreadsheetObj, rowNumber, height)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | The Excel spreadsheet object to which to set the column width. |
| rowNumber | numeric | Yes |  | Specifies the row to set the height. |
| height | numeric | Yes |  | Specifies the height in points. |

## Simple spreadsheetSetRowHeight Example

Here,we've example to set the height for particular row in excel. It is supported only in adobe coldfusion.

```javascript
<cfset Detail=SpreadsheetNew("student",false)>
<cfset SpreadSheetAddRow(Detail,"id,Name,Department")>
<cfset SpreadSheetAddRow(Detail,"1,Dhar,CS")>
<cfset spreadsheetSetRowHeight(Detail,2,50)>
<cfset SpreadsheetWrite(Detail,expandPath("./Detail.xls"),true)>
```
