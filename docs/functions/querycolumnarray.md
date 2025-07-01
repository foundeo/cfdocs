# queryColumnArray

return the column names as array, in the orders of the column in the database

```javascript
queryColumnArray(query)
```

```javascript
returns array
```

## Member Function Syntax

```javascript
query.columnArray()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |

## Dump array of query columns

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
dump(queryColumnArray(news));
```
