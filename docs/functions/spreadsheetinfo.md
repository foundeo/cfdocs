# spreadsheetInfo

 Returns spreadsheet property

```javascript
spreadsheetInfo(spreadsheetObj)
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |

## Simple spreadsheetInfo example

Here we have simple example about spreadsheetinfo function. It displays the detail of read sreadsheet like sheet name,last edited,creation date etc..

```javascript
<cfspreadsheet action="read" src="#expandPath("./reports.xls")#" name="SpreadsheetObj" >
<cfset spreadsheetInfo=spreadsheetInfo(SpreadsheetObj)>
<cfdump var="#spreadsheetInfo#" />
```
