# arrayUnshift

This function adds one or more elements to the beginning of the original array and returns the length of the modified array.

```javascript
arrayUnshift(array,object)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
array.unshift(object)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The original array to be added to. |
| object | any | Yes |  | The new object to be added. |

## Example with simple values

Add a new element to an array.

```javascript
arr=[1,2,3];
newArrLen=arrayUnshift(arr,0);
writeOutput(newArrLen);
```

### Expected Result: 4

## Using a member function

This is the same example as above, but using a member function on the array instead of a standalone function.

```javascript
arr=[1,2,3];
newArrLen=arr.unshift(0);
writeOutput(newArrLen);
```

### Expected Result: 4
