# queryDeleteRow

Deletes a row within a query object.

```javascript
queryDeleteRow(query [, row])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
query.deleteRow([row])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | Query to modify |
| row | numeric | No | -9999 | Index of the row to delete, starts at 1.  If a row is not specified, the last row is removed. |

## Implicit deletion of the last row

Builds a simple query and removes the last row by not specifying a row index.

```javascript
news = queryNew("id,title", "integer,varchar", [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
queryDeleteRow(news);
writeOutput(news['title'][1]);
```

### Expected Result: Dewey defeats Truman

## Deletes a specific row from the query

Builds a simple query and removes one of the rows.

```javascript
news = queryNew("id,title", "integer,varchar", [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
queryDeleteRow(news, 1);
writeOutput(news['title'][1]);
```

### Expected Result: Man walks on Moon
