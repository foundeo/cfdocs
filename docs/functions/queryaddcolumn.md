# queryAddColumn

 Adds a column to a query and populates its rows with the
 contents of a one-dimensional array. Pads query columns,
 if necessary, to ensure that all columns have the same number
 of rows.

```javascript
queryAddColumn(query, column_name [, datatype], array_name)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someQuery.addColumn(column_name [, datatype], array_name)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| column_name | string | Yes |  |  |
| datatype | string | No |  | Column data type. |
| array_name | array | Yes |  |  |

## Tag Example

```javascript
<!--- Make a query. ---> 
 <cfset myQuery = queryNew("")> 
  <!--- Create an array. ---> 
 <cfset FastFoodArray = arrayNew(1)> 
 <cfset FastFoodArray[1] = "French Fries"> 
 <cfset FastFoodArray[2] = "Hot Dogs"> 
 <cfset FastFoodArray[3] = "Fried Clams"> 
 <cfset FastFoodArray[4] = "Thick Shakes"> 
 <!--- Use the array to add a column to the query. ---> 
 <cfset nColumnNumber = queryAddColumn(myQuery, "FastFood", "VarChar", FastFoodArray)> 
 <cfdump var="#myQuery#" />
```

## member syntax example

add a column to a query using member syntax

```javascript
books = queryNew("id,title", "integer,varchar");
books.addColumn("author", "varchar", []);
writeDump(books);
```
