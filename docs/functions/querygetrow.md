# queryGetRow

Returns a struct having all the columns as keys and their corresponding values.

```javascript
queryGetRow( query, rowNumber );
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
someQuery.getRow(rowNumber)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | query object do get data from. |
| rowNumber | numeric | Yes |  | position of the row to be returned. |

## Use queryGetRow to return a struct

```javascript
news = queryNew("id,title",
    "integer,varchar",
    [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
writeOutput( serializeJSON( queryGetRow(news, 1) ) );
```

### Expected Result: {"title":"Dewey defeats Truman","id":1}

## Use queryGetRow member syntax to return a struct

```javascript
news = queryNew("id,title",
    "integer,varchar",
    [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
writeOutput( serializeJSON( news.getRow(1) ) );
```

### Expected Result: {"title":"Dewey defeats Truman","id":1}
