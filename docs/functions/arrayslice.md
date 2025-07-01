# arraySlice

Returns a new array, from the start position up to the count of elements.

```javascript
arraySlice(array, offset, length)
```

```javascript
returns array
```

## Member Function Syntax

```javascript
someArray.slice(offset, length)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | Name of the array that you want to slice |
| offset | numeric | Yes |  | Specifies the position from which to slice the array. Negative value indicates that the array is sliced, with sequence starting from array's end. |
| length | numeric | No |  | Maximum elements to slice |

## Simple arraySlice Example

```javascript
array = [1, 2, 3, 4, 5, 6, 7, 8];
newArray = arraySlice(array, 2, 3);
writedump(newArray)
```

### Expected Result: [2,3,4]

## arraySlice with no length specified

```javascript
array = [1, 2, 3, 4, 5, 6, 7, 8];
newArray = arraySlice(array, 4);
writedump(newArray)
```

### Expected Result: [4,5,6,7,8]

## arraySlice using a negative offset

```javascript
array = [1, 2, 3, 4, 5, 6, 7, 8];
newArray = arraySlice(array, -5, 3);
writedump(newArray)
```

### Expected Result: [4,5,6]

## Slice an array using member function

CF11+ calling the slice member function on an array.

```javascript
array = [1, 2, 3, 4, 5, 6, 7, 8];
newArray = array.slice(2, 3);
writedump(newArray)
```

### Expected Result: [2,3,4]
