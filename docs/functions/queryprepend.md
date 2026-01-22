# queryPrepend

 Adds a query to the beginning of the current query.

```javascript
queryPrepend(query1, query2)
```

```javascript
returns query
```

## Member Function Syntax

```javascript
qry.prepend(query2)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query1 | query | Yes |  | The initial query object. |
| query2 | query | Yes |  | The query being added. |

## Builds a simple query using queryNew and queryPrepend

Add new query to the end of the current query using queryPrepend.

```javascript
names = queryNew("empl_id,name", "integer,varchar", [["empl_id"=1239,"name"="John"]]);
newnames = queryNew("empl_id,name", "integer,varchar", [["empl_id"=1501,"name"="Jane"]]);
queryPrepend(names, newnames);
writeDump(names);
```
