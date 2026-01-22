# querySlice

Returns a query containing a subset of another query

```javascript
querySlice(query, offset [, length])
```

```javascript
returns query
```

## Member Function Syntax

```javascript
query.slice(offset [, length])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  |  |
| offset | numeric | Yes |  | The first row to include in the new query |
| length | numeric | No |  | The number of rows to include in the new query, defaults to all remaining rows |

## Create a query with 4 rows and return a new query containing the 2nd and 3rd rows of the first

```javascript
data = [
	[ 1,'James' ],
	[ 2,'Alfred' ],
	[ 3,'Amisha' ],
	[ 4,'Terri' ]
];
myQuery = QueryNew( 'ID,name','integer,varchar',data );
result = QuerySlice( myQuery,2,2 );
writeDump( var='#result#' );
```

## Using a member function

```javascript
data = [
	[ 1,'James' ],
	[ 2,'Alfred' ],
	[ 3,'Amisha' ],
	[ 4,'Terri' ]
];
myQuery = QueryNew( 'ID,name','integer,varchar',data );
result = myQuery.slice( 2,2 );
writeDump( var='#result#' );
```
