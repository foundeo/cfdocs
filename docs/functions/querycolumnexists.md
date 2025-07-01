# queryColumnExists

Checks whether a column exists in the given query object

```javascript
queryColumnExists(query, column)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
query.columnExists(column)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| column | string | Yes |  |  |

## ID column is in given query

```javascript
myQuery = queryNew("ID,name,age");
writeOutput(queryColumnExists(myQuery,"ID"));
```

### Expected Result: YES

## Whereas "gender" is not

```javascript
myQuery = queryNew("ID,name,age");
writeOutput(queryColumnExists(myQuery,"gender"));
```

### Expected Result: NO
