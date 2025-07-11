# spreadsheetShiftRows

 shifts one or more rows in Excel spreadsheet object up or down. . The contents of the shifted row, including empty cells, overwrites data in the column to which it is shifted.

```javascript
spreadsheetShiftRows(spreadsheetObj, start, end [, rows])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| start | numeric | Yes |  | No Help Available |
| end | numeric | Yes |  | No Help Available |
| rows | numeric | No |  | No Help Available |

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
 <cfset spreadsheetAddRow(s, "Name1,Beers1,Vegetables1,Fruits1,Meats1")>
  <!--- Add query ---> 
   <cfscript> 
  SpreadsheetShiftRows(s,2,2,2); 
 </cfscript> 
 <cfoutput> 
 <cfheader name="Content-Disposition" value="inline; filename=testFile.xls">  <cfcontent type="application/vnd.msexcel" variable="#SpreadSheetReadBinary(s)#">
 
 </cfoutput>
```
