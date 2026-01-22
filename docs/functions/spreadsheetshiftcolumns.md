# spreadsheetShiftColumns

 shifts one or more columns in Excel spreadsheet object left or right.

```javascript
spreadsheetShiftColumns(spreadsheetObj, start [, end] [, start])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| start | numeric | Yes |  | No Help Available |
| end | numeric | No |  | No Help Available |
| start | numeric | No |  | No Help Available |

## Tag Example

```javascript
<cfset q = queryNew("Name,Beers,Vegetables,Fruits,Meats", "cf_sql_varchar,cf_sql_integer,cf_sql_integer,cf_sql_integer,cf_sql_integer")> 
  <cfset queryAddRow(q)> 
  <cfset querySetCell(q, "Name", "John")> 
  <cfset querySetCell(q, "Beers", "1")> 
  <cfset querySetCell(q, "Vegetables", "1")> 
  <cfset querySetCell(q, "Fruits", "1")> 
  <cfset querySetCell(q, "Meats", "1")> 
  <cfset mySheet =   SpreadsheetNew( "Test"  ) /> 
  <!--- Make a spreadsheet object ---> 
  <cfset s = spreadsheetNew()> 
  <!--- Add header row ---> 
  <cfset spreadsheetAddRow(s, "Name,Beers,Vegetables,Fruits,Meats")> 
 spreadsheetAddRow(s, "Name1,Beers1,Vegetables1,Fruits1,Meats1")>
  <!--- Add query ---> 
   <cfscript> 
  SpreadsheetShiftColumns(s,1,6,1); 
 </cfscript> 
 <cfoutput> 
 <cfheader name="Content-Disposition" value="inline; filename=testFile.xls">  <cfcontent type="application/vnd.msexcel" variable="#SpreadSheetReadBinary(s)#">
 
 </cfoutput>
```
