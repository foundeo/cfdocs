# spreadsheetRemoveSheet

Deletes a spreadsheet.

```javascript
spreadsheetRemoveSheet (spreadsheetObj, sheetname);
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | The Excel spreadsheet object from which you delete the sheet. |
| sheetname | string | Yes |  | Name of the sheet that must be removed. |

## Tag Syntax

```javascript
<cfset spreadsheetVar= spreadsheetNew('New')> 
 <cfset spreadsheetCreateSheet(spreadsheetVar,'A')> 
 <cfset spreadsheetCreateSheet(spreadsheetVar,'B')> 
 <cfspreadsheet action='write' filename='#dirname#mySpreadSheet.xls'  name='spreadsheetVar' overwrite='true' > 
 <cfspreadsheet action='read' src='#dirname#mySpreadSheet.xls' name='spreadSheetVar' >     
 <cfset spreadsheetRemoveSheet(spreadsheetVar,'B')> 
 <cfspreadsheet action='write' filename='#dirname#mySpreadSheet.xls'  name='spreadsheetVar' overwrite='true' >
```
