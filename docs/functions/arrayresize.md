# arrayResize

Resets an array to a specified minimum number of elements.
 This can improve performance, if used to size an array to its
 expected maximum. For more than 500 elements, use arrayResize
 immediately after using the ArrayNew tag.

```javascript
arrayResize(array, size)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.resize(size)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |
| size | numeric | Yes |  |  |

## Tag Syntax

```javascript
<cfset MyArray = arrayNew(1)> 
 <!--- Resize that array to the number of records in the query. ---> 
 <cfset temp = arrayResize(MyArray, 8)> 
  <cfdump var="#MyArray#" />
```
