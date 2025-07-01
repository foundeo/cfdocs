# queryColumnCount

Returns the amount of all columns in the given query object

```javascript
queryColumnCount(query)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
query.columnCount()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |

## Output number of query columns

```javascript
myQuery = queryNew("ID,name,age");
writeOutput( queryColumnCount( myQuery ) );
```

### Expected Result: 3
