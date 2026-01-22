# queryAddRow

 Adds a specified number of empty rows to a query.

```javascript
queryAddRow(query [, number/row(s)])
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someQuery.addRow([number/row(s)])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| number/row(s) | numeric | No |  | As of CF10+ you can pass a Structure whose keys map to the query column names to insert a row of data; or an Array of those Structures to insert multiple rows at once. |

## Builds a simple query using queryNew and queryAddRow

CF10+ Pass in row data directly to queryAddRow argument.

```javascript
news = queryNew("id,title", "integer,varchar");
queryAddRow(news, {"id"=1,"title"="Dewey defeats Truman"});
writeDump(news);
```

## Builds a simple query using queryNew and queryAddRow member syntax

CF10+ Pass in row data directly to queryAddRow argument.

```javascript
news = queryNew("id,title", "integer,varchar");
news.addRow({"id"=1,"title"="Dewey defeats Truman"});
writeDump(news);
```

## Builds a simple query using queryNew queryAddRow and querySetCell

Using Script with the queryAddRow querySetCell functions to populate the query.

```javascript
news = queryNew("id,title", "integer,varchar");
queryAddRow(news);
querySetCell(news, "id", "1");
querySetCell(news, "title", "Dewey defeats Truman");
queryAddRow(news);
querySetCell(news, "id", "2");
querySetCell(news, "title", "Men walk on Moon");
writeDump(news);
```

## Builds a simple query using queryNew queryAddRow and querySetCell with rows number

The example above could be simplified this way:

```javascript
news = queryNew("id,title", "integer,varchar");
queryAddRow(news,2);
querySetCell(news, "id", "1",1);
querySetCell(news, "title", "Dewey defeats Truman",1);
querySetCell(news, "id", "2",2);
querySetCell(news, "title", "Men walk on Moon",2);
writeDump(news);
```

## Builds a simple query using queryNew queryAddRow with multiple rows as an array

CF10+ The example above could be simplified even more this way:

```javascript
news = queryNew("id,title", "integer,varchar");
queryAddRow(news, [{"id"=1,"title"="Dewey defeats Truman"},{"id"=2,"title"= "Men walk on Moon"}]);
writeDump(news);
```
