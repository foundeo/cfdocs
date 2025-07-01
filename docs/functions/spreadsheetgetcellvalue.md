# spreadsheetGetCellValue

 Gets the Value for a for an Excel spreadsheet object cell.

```javascript
spreadsheetGetCellValue(spreadsheetObj, row, column)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| row | string | Yes |  | No Help Available |
| column | string | Yes |  | No Help Available |

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
   theFormula=SpreadsheetGetCellFormula(s,1,1); 
 </cfscript> 
 <cfoutput> 
 Row,Column: #theFormula# 
 </cfoutput>
```
