# spreadsheetSetCellValue

 Specifies the value of an Excel spreadsheet object cell.

```javascript
spreadsheetSetCellValue(spreadsheetObj, value, row, column)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| value | string | Yes |  | No Help Available |
| row | numeric | Yes |  | No Help Available |
| column | numeric | Yes |  | No Help Available |

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
  spreadsheetSetCellValue(s, 111, 2,1); 
 theFormula=SpreadsheetGetCellValue(s,2,1); 
 </cfscript> 
 <cfoutput> 
 Row,Column: #theFormula# 
 </cfoutput>
```
