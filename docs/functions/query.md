# query

Create and populate a query object. You can initialize with data by passing arrays of data as arguments, where the argument name is the desired column name and each item in the array is the value for a row.

```javascript
query()
```

```javascript
returns query
```

## Empty query

Create an empty query object

```javascript
<cfscript>myQuery = query();</cfscript>
```

## Query with some data

Create query object with some initial data

```javascript
<cfscript>myQuery = query(foo: [1,2,3], bar: ['a','b','c']);</cfscript>
```
