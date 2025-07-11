# querySetRow

Adds a row to a query, either by struct or array

```javascript
querySetRow(query, [rowNumber,] rowData)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someQuery.setRow([rowNumber,] rowData)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | The query object on which to set the row |
| rowNumber | numeric | No | 0 | Position of the row to be updated. If not provided or set to 0, a new row is added. |
| rowData | any | Yes |  | A struct or array containing the row data |

## Builds a simple query using queryNew and querySetRow

Sets third row of query overwriting news entry

```javascript
news = queryNew("id,title", "integer,varchar", [{"id"=1,"title"="Dewey defeats Truman"},{"id"=2,"title"="Men walk on Moon"},{"id"=3,"title"="Nixon Resigns"},{"id"=4,"title"="The Berlin Wall falls"}]);
querySetRow(news, 3, {"id"=5,"title"="The internet is born"});
writeDump(news);
```

## Builds a simple query using queryNew and someQuery.setRow member syntax

Sets third row of query overwriting news entry

```javascript
news = queryNew("id,title", "integer,varchar", [{"id"=1,"title"="Dewey defeats Truman"},{"id"=2,"title"="Men walk on Moon"},{"id"=3,"title"="Nixon Resigns"},{"id"=4,"title"="The Berlin Wall falls"}]);
news.setRow(3, {"id"=5,"title"="The internet is born"});
writeDump(news);
```
