# queryGetCell

Returns data contained in that specific cell

```javascript
queryGetCell(query, column_name [, row_number])
```

```javascript
returns any
```

## Member Function Syntax

```javascript
query.getCell(column_name [, row_number])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| column_name | string | Yes |  |  |
| row_number | numeric | No | -9999 |  |

## The simple querygetcell example

Here we've example about querygetcell. We created query using queryNew() then we got the last title column value using querygetCell. If we give row number displays the particular row title value otherwise it displays last row value.

```javascript
<cfset myQuery = queryNew("id,name","integer,varchar",[[1,"Rajesh"],[2,"Anil"]])>
<cfoutput>#querygetcell(myQuery,'name')#</cfoutput>
```

### Expected Result: Anil

## The simple querygetcell (getCell) script based example

Here we've the example to get particular column(title) value in script syntax

```javascript
<cfscript>
var myQuery = queryNew("id,title","integer,varchar",[[1,"Charlottes Web"],[3,"The Outsiders"],[4,"Mieko and the Fifth Treasure"]]);
writeOutput(myQuery.getCell('title',2));
</cfscript>
```

### Expected Result: The Outsiders
