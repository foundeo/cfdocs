# spreadsheetSetColumnWidth

 Sets the width of a column in a worksheet.

```javascript
spreadsheetSetColumnWidth(spreadsheetObj, columnNumber, width)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | The Excel spreadsheet object to which to set the column width. |
| columnNumber | numeric | Yes |  | Specifies the column to set the width. |
| width | numeric | Yes |  | Specifies the width in points. |

## Simple spreadsheetSetColumnWidth Example

Here,we've example to set the width for particular column in excel.

```javascript
<cfset Detail=SpreadsheetNew("student",false)>
<cfset SpreadSheetAddRow(Detail,"id,Name,age")>
<cfset SpreadSheetAddRow(Detail,"1,Dhar,10")>
<cfset spreadsheetSetColumnWidth(Detail,1,50)>
<cfset SpreadsheetWrite(Detail,expandPath("./Detail.xls"),true)>
```
