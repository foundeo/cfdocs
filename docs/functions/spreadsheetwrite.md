# spreadsheetwrite

 Writes Spreadsheet object into file

```javascript
spreadsheetwrite(spreadsheetObj, fileName [, password] [, overwrite])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | No Help Available |
| fileName | string | Yes |  | No Help Available |
| password | string | No |  | No Help Available |
| overwrite | boolean | No |  | No Help Available |

## Script Example

```javascript
<cfscript> 
         spObj = spreadsheetread("#dirname#SingleSheet.xls","Sheet2"); 
         spreadsheetCreateSheet(spObj,"A"); 
         spreadsheetaddrow(spObj,"x,x,x,x,x",3,1); 
         spreadsheetsetActiveSheet(spObj,"A"); 
         spreadsheetaddrow(spObj,"z,z,z,z,z",3,1); 
         spreadsheetsetActiveSheetNumber(spObj,1); 
         spreadsheetaddrow(spObj,"a,b,c,d,e",3,1); 
         SpreadsheetWrite(spObj,"#dirname#SingleSheet1.xls","yes"); 
 </cfscript>
```

## Script Example

This will work if there was a place to store the xls file.

```javascript
<cfset filename = 'pathToFile.xls' /> 
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
  <cfset spreadsheetWrite(s, filename, true) />
```
