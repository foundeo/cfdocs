# spreadsheetAddRows

Adds multiple rows from a query or array to an Excel spreadsheet object.

```javascript
spreadsheetAddRows(spreadsheetObj, data,[ row, column , insert, datatype, includeColumnNames])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| spreadsheetObj | variableName | Yes |  | The spreadsheet object variable |
| data | any | Yes |  | A query or array |
| row | numeric | No |  | The row number in the spreadsheet at which to insert the data. If omitted rows are appended. |
| column | numeric | No |  | The column number to start, all columns to the left will be empty. |
| insert | boolean | No | true | When true appends the row `data` to the `spreadsheetObj`. When `false` attempts to update the spreadsheet object rows. |
| datatype | array | No |  | CF11+ An array of datatype expressions with values `STRING` `NUMERIC` or `DATE`. For example use `DATE:1;NUMERIC:2-2;STRING |
| includeColumnNames | boolean | No | false | CF2016+ When `true` writes column names as headers in the spreadsheet. |

## Adding rows to a spreadsheet from a Query

```javascript
<cfset q = queryNew("name,beers",
    "varchar,integer",
    [ {"name":"John","beers":2}, {"name":"Pete","beers":1} ])> 

<!--- Make a spreadsheet object ---> 
<cfset s = spreadsheetNew()> 
<!--- Add header row ---> 
<cfset spreadsheetAddRow(s, "Name,Beers")> 
<!--- Add query ---> 
<cfset spreadsheetAddRows(s, q)> 
<cfdump var="#s#" />
```

## CF2016: Adding rows to a spreadsheet from a Query using column names as headers

You need to state the row, column, insert and datatype arguments before you can change includeColumnNames to true as ACF internal functions don't allow named arguments.

```javascript
<cfset q = queryNew("name,beers",
    "varchar,integer",
    [ {"name":"John","beers":2}, {"name":"Pete","beers":1} ])> 

<!--- Make a spreadsheet object ---> 
<cfset s = spreadsheetNew()> 
<!--- Add query and preserve column names ---> 
<cfset spreadsheetAddrows(s,q,1,1,true,[""],true)> 
<cfdump var="#s#" />
```
