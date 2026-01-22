# spreadsheetFormatCell

Formats the contents of a single cell of an Excel spreadsheet object.

```javascript
spreadsheetFormatCell(spreadsheetObj, format, row, column)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | any | Yes |  | The spreadsheet object for which formatting will be applied |
| format | struct | Yes |  | A structure containing the formatting information |
| row | numeric | Yes |  | The row the cell to format is in |
| column | numeric | Yes |  | The column the cell to format is in |

## Tag Example

```javascript
<cfset q = queryNew("Name,Beers,Vegetables,Fruits,Meats", "cf_sql_varchar,cf_sql_integer,cf_sql_integer,cf_sql_integer,cf_sql_integer")> 
 <!---<cfloop index="x" from="1" to="10">---> 
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
 <cfset Spreadsheetformatcell(sheet,{dataformat="@"},2,2) > 
 <cfdump var="#s#" /> <cfheader name="Content-Disposition" value="inline; filename=testFile.xls">  <cfcontent type="application/vnd.msexcel" variable="#SpreadSheetReadBinary(s)#">
```
