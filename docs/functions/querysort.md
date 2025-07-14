# querySort

Sorts a query.

```javascript
querySort(query, sortFunction)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
query.sort(sortFunction)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | The query to sort |
| sortFunction | function | Yes |  | CF2016+ or Lucee5.1.0.13+ a function with two arguments each corresponding to a query row. The function returns -1 if first row is less than second, 0 if equal, or 1 if first row is greater than second. Lucee4.5+ accepts a column name to sort by instead of a function. |
| direction | string | No |  | Lucee4.5+ Only supported on Lucee when second argument is a column name instead of a callback function. |

## Sort a query using the querySort function on a column with date values in ascending order

```javascript
//build a query
exampleQuery = queryNew(
    "id,createdDate",
    "integer,timestamp",
    [
        {id=1, createdDate=dateAdd("d", randRange(-100, 100), now())},
        {id=2, createdDate=dateAdd("d", randRange(-100, 100), now())},
        {id=3, createdDate=dateAdd("d", randRange(-100, 100), now())},
        {id=4, createdDate=dateAdd("d", randRange(-100, 100), now())},
        {id=5, createdDate=dateAdd("d", randRange(-100, 100), now())}
    ]
);
//sort it
querySort(exampleQuery, function(rowA, rowB) {
    return dateCompare(rowA.createdDate, rowB.createdDate);
});
//dump it
writeDump(exampleQuery);
```

## Sort a query using a sort member function on a column with date values in descending order

```javascript
//build a query
exampleQuery = queryNew(
    "id,createdDate",
    "integer,timestamp",
    [
        {id=1, createdDate=dateAdd("d", randRange(-100, 100), now())},
        {id=2, createdDate=dateAdd("d", randRange(-100, 100), now())},
        {id=3, createdDate=dateAdd("d", randRange(-100, 100), now())},
        {id=4, createdDate=dateAdd("d", randRange(-100, 100), now())},
        {id=5, createdDate=dateAdd("d", randRange(-100, 100), now())}
    ]
);
//sort it
exampleQuery.sort(function(rowA, rowB) {
    return -(dateCompare(rowA.createdDate, rowB.createdDate));
});
//dump it
writeDump(exampleQuery);
```

## Sort a query using a sort member function on a column with string values in ascending order

```javascript
//build a query
exampleQuery = queryNew(
    "id,description",
    "integer,varchar",
    [
        {id=1, description="dog"},
        {id=2, description="cat"},
        {id=3, description="bird"},
        {id=4, description="zebra"},
        {id=5, description="snake"}
    ]
);
//sort it
exampleQuery.sort(function(rowA, rowB) {
    return compare(rowA.description, rowB.description);
});
//dump it
writeDump(exampleQuery);
```

## Sort a query using the querySort function on a column with string values in descending order

```javascript
//build a query
exampleQuery = queryNew(
    "id,description",
    "integer,varchar",
    [
        {id=1, description="dog"},
        {id=2, description="cat"},
        {id=3, description="bird"},
        {id=4, description="zebra"},
        {id=5, description="snake"}
    ]
);
//sort it
querySort(exampleQuery, function(rowA, rowB) {
    return -(compare(rowA.description, rowB.description));
});
//dump it
writeDump(exampleQuery);
```

## Sort a query using the querySort function on a column with numeric values in ascending order

```javascript
//build a query
exampleQuery = queryNew(
    "id,description",
    "integer,varchar",
    [
        {id=3, description="dog"},
        {id=5, description="cat"},
        {id=4, description="bird"},
        {id=1, description="zebra"},
        {id=2, description="snake"}
    ]
);
//sort it
querySort(exampleQuery, function(rowA, rowB) {
    return val(rowA.id) < val(rowB.id) ? -1 : val(rowA.id) == val(rowB.id) ? 0 : 1;
});
//dump it
writeDump(exampleQuery);
```
