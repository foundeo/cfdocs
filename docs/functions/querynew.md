# queryNew

Creates a new query object. The query can be populated with data using functions queryAddRow, querySetCell, or by passing it in to the rowData argument.

```javascript
queryNew(columnList [, columnTypeList [, rowData]])
```

```javascript
returns query
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| columnList | string | Yes |  | A string or a variable that contains one. Delimited list<br /> of column names, or an empty string. |
| columnTypeList | string | No |  | CF7+ Comma-delimited list specifying column data types. |
| rowData | any | No |  | CF10+ Data to populate the query. Can be a struct (with keys matching column names), an array of structs, or an array of arrays (in same order as columnList) |

## Builds a simple query using queryNew

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

## Builds a simple query using queryNew

Using CFML Tags with the queryAddRow querySetCell functions to populate the query.

```javascript
<cfset news = queryNew("id,title", "integer,varchar")>
<cfset queryAddRow(news)>
<cfset querySetCell(news, "id", "1")>
<cfset querySetCell(news, "title", "Dewey defeats Truman")>
<cfset queryAddRow(news)>
<cfset querySetCell(news, "id", "2")>
<cfset querySetCell(news, "title", "Men walk on Moon")>
<cfset writeDump(news)>
```

## Creating and Populating a query using an array rowData in queryNew

CF10+ Passes an array of structs to create a new query.

```javascript
news = queryNew("id,title",
    "integer,varchar",
    [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
writeDump(news);
```

## Creating and Populating a single row query using rowData in queryNew

CF10+ If you only need one row you can pass a single struct instead of an array into the rowData argument.

```javascript
news = queryNew("id,title",
    "integer,varchar",
    {"id":1,"title":"Dewey defeats Truman"});
writeDump(news);
```

## Creating and populating a query with an array of structs

CF2018u5+ Directly assigns columns and values with an array of structs.

```javascript
news = queryNew([
    {"id":1,"title":"Dewey defeats Truman"},
    {"id":2,"title":"Man walks on Moon"}
]);
writeDump(news);
```
