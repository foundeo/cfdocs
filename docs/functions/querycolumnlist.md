# queryColumnList

Returns the column names of a query as a list.

```javascript
queryColumnList(query [, delimiter])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
query.columnList([delimiter])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| delimiter | string | No | , |  |

## Create a query and output the column list

```javascript
myQuery = queryNew( 'ID,name,age' );
writeOutput( queryColumnList( myQuery ) );
```

### Expected Result: ID,name,age

## Using a member function

```javascript
myQuery = queryNew( 'ID,name,age' );
writeOutput( myQuery.columnList() );
```

### Expected Result: ID,name,age
