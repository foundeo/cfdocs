# queryRowSwap

In a query object, swap the record in the sourceRow with the record from the destinationRow.

```javascript
queryRowSwap(query, sourceRow, destinationRow )
```

```javascript
returns query
```

## Member Function Syntax

```javascript
query.rowSwap(sourceRow, destinationRow)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | The original query object. |
| sourceRow | numeric | Yes |  | The row to swap. |
| destinationRow | numeric | Yes |  | The row to be swapped with. |

## Example1

This is Example1

```javascript
qry=queryNew("rowid,name", "integer,varchar",[ [1, "Bob"],[2, "Theodore"],[3, "Jay"],[4, "William"] ]);
swap1=queryRowSwap(qry,1,4);
writeDump(swap1);
```

## Member function version.

Using the member function.

```javascript
qry=queryNew("rowid,name", "integer,varchar",[ [1, "Bob"],[2, "Theodore"],[3, "Jay"],[4, "William"] ]);
swap2=qry.rowSwap(1,4);
writeDump(swap2);
```
