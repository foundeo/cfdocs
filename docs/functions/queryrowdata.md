# queryRowData

Returns the cells of a query row as a structure

```javascript
queryRowData(query, rowNumber)
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
query.rowData(rowNumber)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| rowNumber | numeric | Yes |  |  |

## The simple queryRowData example

Here we've a example to get the particular row value from myquery.

```javascript
<cfset myQuery = queryNew("id,name,age","integer,varchar,integer",[[1,"Dharshini",20],[2,"Subash",18]])>
<cfdump var="#queryRowData(myQuery,2)#" />
```

## The simple rowData example

We've example to get the particular row value from myquery using script syntax.

```javascript
<cfscript>
var myQuery = queryNew("id,title,author","integer,varchar,varchar",[[1,"Charlottes Web","E.B. White"],[3,"The Outsiders","S.E. Hinton"],[4,"Mieko and the Fifth Treasure","Eleanor Coerr"]]);
writeDump(myQuery.rowData(3));
</cfscript>
```
