# isQuery

 Determines whether a value is a query.

```javascript
isQuery(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | string | Yes |  |  |

## Create and populate a query and output the 'name' column as a list if it is a valid query

```javascript
names = queryNew( 'name','varchar' );
queryAddRow( names );
querySetCell( names,'name','Seth' );
queryAddRow( names );
querySetCell( names,'name','Jen' );
if( isQuery( names ) ) {
   writeOutput( valueList( names.name ) );
}
```
