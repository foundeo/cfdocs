# arrayShift

Removes the first element from an array and returns the removed element. This method changes the length of the array. If used on an empty array, an exception will be thrown.

```javascript
arrayShift(array)
```

```javascript
returns any
```

## Member Function Syntax

```javascript
array.shift()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | An array of elements from which the first will be removed and returned. |

## Example with simple values

Take an array of numbers and shift the first one off.

```javascript
arr = [ 1, 2, 3 ];
el = arrayShift(arr);
writeOutput( el );
```

### Expected Result: 1

## Using a member function

This is the same example as above, but using a member function on the array instead of a standalone function.

```javascript
arr = [ 1, 2, 3 ];
el = arr.shift();
writeOutput( el );
```

### Expected Result: 1
