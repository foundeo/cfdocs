# queryColumnData

Returns the data in a query column. See also valueArray for use in ACF.

```javascript
queryColumnData(query, columnName [, closure])
```

```javascript
returns array
```

## Member Function Syntax

```javascript
query.columnData(columnName [, closure])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| columnName | string | Yes |  |  |
| closure | function | No |  |  |

## Create and populate a query and output the 'name' column data as an array

```javascript
myQuery = QueryNew( '' );
names = [ 'Indra','Elizabeth','Harry','Seth' ];
queryAddColumn( myQuery,'name','varchar',names );
result = queryColumnData( myQuery,'name' );
Dump( var='#result#' );
```

## Using a member function

```javascript
myQuery = QueryNew( '' );
names = [ 'Indra','Elizabeth','Harry','Seth' ];
queryAddColumn( myQuery,'name','varchar',names );
result = myQuery.columnData( 'name' );
Dump( var='#result#' );
```
