# spreadsheetCreateSheet

 Create spreadsheet from given spreadsheet object

```javascript
spreadsheetCreateSheet(spreadsheetObj, name)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| name | string | Yes |  | No Help Available |

## Tag Example

The following example creates two sheets: CourseData and EvaluationSheet.

```javascript
<cfscript>
// Make a spreadsheet object
spreadsheet = spreadsheetNew("Sheet A");

// add a new sheet
spreadsheetCreateSheet(spreadsheet, "Sheet B");

// set the new sheet to be the active one
SpreadsheetSetActiveSheet(spreadsheet, "Sheet B");

// populate Sheet B
i = 1;
while (i < 10) {
    SpreadsheetSetCellValue(spreadsheet, "col #i#", 1, i);
    i++;
}

</cfscript>
<cfheader name="Content-Disposition" value="inline; filename=testFile.xls">
<cfcontent type="application/vnd.msexcel" variable="#SpreadSheetReadBinary(spreadsheet)#">
```
