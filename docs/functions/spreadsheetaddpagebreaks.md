# spreadsheetAddPagebreaks

A function to add page breaks for rows and columns to a Spreadsheet Object.

```javascript
spreadsheetAddPagebreaks(SpreadsheetObj, rowbreaks, colbreaks)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| SpreadsheetObj | any | Yes |  | Excel spreadsheet object to apply page break to. |
| rowbreaks | string | Yes |  | Comma-delimited row numbers where the page breaks will be applied. |
| colbreaks | string | Yes |  | Comma-delimited column numbers where the page breaks will be applied. |

## Simple spreadsheetAddPagebreaks Example

CF11+ Here,we've example to break the excel using spreadsheetaddpagebreaks. It is supported only in adobe coldfusion.

```javascript
<cfset Detail=SpreadsheetNew("student",false)>
<cfset SpreadSheetAddRow(Detail,"id,Name,Department,marks,average")>
<cfset SpreadSheetAddRow(Detail,"1,Dhar,CS,500,50")>
<cfset SpreadSheetAddRow(Detail,"2,DharC,EEE,600,85")>
<cfset SpreadSheetAddRow(Detail,"3,DharCf,EC,700,90")>
<cfset spreadsheetAddPagebreaks(Detail,'1,2', '3,4')>
<cfset SpreadsheetWrite(Detail,expandPath("./Detail.xls"),true)>
```
