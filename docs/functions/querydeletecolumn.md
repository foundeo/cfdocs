# queryDeleteColumn

Deletes a column within a query object.

```javascript
queryDeleteColumn(query, column)
```

```javascript
returns array
```

## Member Function Syntax

```javascript
query.deleteColumn(column)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | Query to modify |
| column | string | Yes |  | Name of the column to delete |

## Deletes a column from the query

Builds a simple query and removes the 'id' column.

```javascript
news = queryNew("id,title", "integer,varchar", [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
queryDeleteColumn(news, 'id');
writeOutput(serializeJSON(news));
```

### Expected Result: {"COLUMNS":["TITLE"],"DATA":[["Dewey defeats Truman"],["Man walks on Moon"]]}
