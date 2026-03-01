# spreadsheetGetCellComment

 Gets the comment for an Excel spreadsheet object cell as a structure with formatting information, or all comments for the object.

```javascript
spreadsheetGetCellComment(author [, column] [, comment] [, row])
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| author | string | Yes |  | No Help Available |
| column | numeric | No |  | No Help Available |
| comment | string | No |  | No Help Available |
| row | string | No |  | No Help Available |

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
  <!--- Add query ---> 
   <cfscript> 
   comment1=structNew() ; 
     comment1.anchor="0,0,5,8"; 
     comment1.author="John Smithg"; 
     comment1.comment="This is a test comment"; 
     comment1.size="10"; 
     //Set the comment. 
 SpreadsheetSetCellComment(s,comment1,3,5); 
     //Get the comment from the Excel spreadsheet object. 
     theComment=SpreadsheetGetCellComment(s,3,5); 
 </cfscript> 
 <cfoutput> 
 Row,Column: #theComment.row#,#theComment.column#<br /> 
 Author: #theComment.author#<br /> 
 Comment: #theComment.comment# 
 </cfoutput>
```
