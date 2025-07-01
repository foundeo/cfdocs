# queryFilter

Filters query rows specified in filter criteria

```javascript
queryFilter(query, function(row [, currentRow] [, query] ){} [, parallel] [, maxThreads])
```

```javascript
returns query
```

## Member Function Syntax

```javascript
query.filter(function(row [, currentRow] [, query] ){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | The query to filter |
| callback | boolean | Yes |  | Closure or a function reference that will be called for each of the iteration. Returns true if the row should be included in the filtered query. |
| parallel | boolean | No | false | Lucee4.5+ CF2021+ true if the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ CF2021+ the maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| row | struct | No | A struct with all of the columns for the current iteration |
| currentRow | numeric | No | The row number for the current iteration |
| query | query | No | A reference of the original query |

## Filter a query

```javascript
news = queryNew("id,type,title", "integer,varchar,varchar");
    queryAddRow(news,[{
        id: 1,
        type: "book",
        title: "Cloud Atlas"
    },{
        id: 2,
        type: "book",
        title: "Lord of The Rings"
    },{
        id: 3,
        type: "film",
        title: "Men in Black"
    }]);
    books = queryFilter(news,function(_news) {
        return _news.type is 'book';
    });
    writeDump(valueList(books.title,', '));
```

### Expected Result: Cloud Atlas, Lord of The Rings

## Filter a query as member function

```javascript
news = queryNew("id,type,title", "integer,varchar,varchar");
    queryAddRow(news,[{
        id: 1,
        type: "book",
        title: "Cloud Atlas"
    },{
        id: 2,
        type: "book",
        title: "Lord of The Rings"
    },{
        id: 3,
        type: "film",
        title: "Men in Black"
    }]);
    books = news.filter(function(_news) {
        return _news.type is 'book';
    });
    writeDump(valueList(books.title,', '));
```

### Expected Result: Cloud Atlas, Lord of The Rings
