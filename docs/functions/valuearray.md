# valueArray

Returns an array of values for the given query and column.

```javascript
valueArray(query, column)
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | A query object |
| column | string | Yes |  | The column name whose values you want |

## Simple valueArray Example

Converts the id column values into an array

```javascript
news = queryNew("id", "integer", [ {id:1}, {id:2} ]);
writeOutput( serializeJSON( valueArray(news, "id") ) );
```

### Expected Result: [1,2]
