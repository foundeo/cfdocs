# spreadsheetMergeCells

 Merges a rectangular block of two or more Excel spreadsheet object cells.

```javascript
spreadsheetMergeCells(spreadsheetObj, startrow, endrow, startcolumn, endcolumn)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| startrow | numeric | Yes |  | No Help Available |
| endrow | numeric | Yes |  | No Help Available |
| startcolumn | numeric | Yes |  | No Help Available |
| endcolumn | numeric | Yes |  | No Help Available |

## Script Example

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
  <!--- Add query ---> 
   <cfscript> 
   Spreadsheetmergecells(s,1,1,1,2); 
 </cfscript> 
 <cfoutput> 
 
 <cfdump var="#s#" /> 
 <cfheader name="Content-Disposition" value="inline; filename=testFile.xls">  <cfcontent type="application/vnd.msexcel" variable="#SpreadSheetReadBinary(s)#">
 </cfoutput>
```
