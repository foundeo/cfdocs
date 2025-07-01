# queryMap

Maps each query row using a function to manipulate the rows fields

```javascript
queryMap(query, function(row [, currentRow] [, query] ){} [, parallel] [, maxThreads])
```

```javascript
returns query
```

## Member Function Syntax

```javascript
query.map(function(row [, currentRow] [, query] ){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | query to process entries from |
| callback | boolean | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| parallel | boolean | No | false | Lucee4.5+ true if the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ the maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| row | struct | No | A struct with all of the columns for the current iteration |
| currentRow | numeric | No | The value for the current iteration |
| query | query | No | A reference of the original struct |

## Maps query results

Manipulates query column

```javascript
news = queryNew("id,title",
	"integer,varchar", [{
		"id": 1,
		"title": "Dewey defeats Truman"
	}, {
		"id": 2,
		"title": "Man walks on Moon"
	}]
);

writeDump(news);

function mapQuery(any Obj) {
	if (Obj.id == 1)
		Obj.title = "NEW: " & Obj.title;
	return Obj;
}

newQuery = QueryMap(news, mapQuery);
writeDump(newQuery);
```
