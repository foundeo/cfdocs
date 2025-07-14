# querySetCell

 Sets a cell to a value. If no row number is specified,
 the cell on the last row is set.

```javascript
querySetCell(query, column, value [, row])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
query.setCell(column, value [, row])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| column | string | Yes |  |  |
| value | any | Yes |  |  |
| row | numeric | No |  |  |

## Tag Example

```javascript
<!--- start by making a query ---> 
 <cfquery name = "GetCourses" datasource = "cfdocexamples"> 
 SELECT Course_ID, Descript 
 FROM Courses 
 </cfquery> 
<cfset temp = queryAddRow(GetCourses)> 
<cfset Temp = querySetCell(GetCourses, "Number", 100*CountVar)>
```

## Script member function example

```javascript
<cfscript>
	q = queryNew( "id,name");
	q.addRow();
	q.setCell("id", 1, 1);
	q.setCell("name", "one", 1);
	writeDump(q);
</cfscript>
```
