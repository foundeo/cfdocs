# spreadsheetAddSplitPane

 Adds split pane to spreadsheet.

```javascript
spreadsheetAddSplitPane(spreadsheetObj, x, y, splitColumn, splitRow [, position])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | Spreadsheet variable |  |
| x | numeric | Yes |  | X position for split |  |
| y | numeric | Yes |  | Y position for split |  |
| splitColumn | numeric | Yes |  | Split Column |  |
| splitRow | numeric | Yes |  | Split Row |  |
| position | string | No |  | Specify which pane has the focus | /Users/garethedwards/development/github/cfdocs/docs/functions/spreadsheetaddsplitpane.md|UPPER_RIGHT |

## Simple SpreadsheetAddSplitPane Example

Here,we've example to splitpane in excel using spreadsheetaddsplitpane.

```javascript
<cfset Detail=SpreadsheetNew("student",false)>
<cfset SpreadSheetAddRow(Detail,"id,Name,Department,marks,average")>
<cfset SpreadSheetAddRow(Detail,"1,Dhar,CS,500,50")>
<cfset SpreadSheetAddRow(Detail,"2,DharC,EEE,600,85")>
<cfset SpreadSheetAddRow(Detail,"3,DharCf,EC,700,90")>
<cfset SpreadsheetAddSplitPane(Detail,2000, 2000, 4, 3)>
<cfset SpreadsheetWrite(Detail,expandPath("./Detail.xls"),true)>
```
