# spreadsheetSetHeader

 Adds a header to the specified worksheet.

```javascript
spreadsheetSetHeader(spreadsheetObj, leftHeader, centerHeader, rightHeader)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | The Excel spreadsheet object to which to add the header. |
| leftHeader | string | Yes |  | Adds the header in the left side of the worksheet. |
| centerHeader | string | Yes |  | Adds the header in the center of the worksheet. |
| rightHeader | string | Yes |  | Adds the header in the right side of the worksheet. |

## Simple spreadsheetSetHeader Example

Here,we've example to set the header for excel file.

```javascript
<cfset bookDetail=SpreadsheetNew("student",false)>
<cfset SpreadSheetAddRow(bookDetail,"id,BookTitle,author")>
<cfset SpreadSheetAddRow(bookDetail,"1,Charlottes Web,E.B. White")>
<cfset spreadsheetSetHeader(bookDetail,"leftHeader","centerHeader","rightHeader")>
<cfset SpreadsheetWrite(bookDetail,expandPath("./bookDetail.xls"),true)>
```
