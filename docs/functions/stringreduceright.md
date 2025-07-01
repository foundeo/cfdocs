# stringReduceRight

This function iterates over every element of the string and calls the closure to work on that element. This function will reduce the string to a single value, from the right to the left, and will return the value.
NOTE: This function is not available in Lucee 5.x or lower. Potentially use `reverse()` instead.

```javascript
stringReduceRight(string, callback, initialValue)
```

```javascript
returns any
```

## Member Function Syntax

```javascript
string.reduceRight(callback, initialValue)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The input string. |
| callback | any | Yes |  | Closure or a function reference that will be called for each iteration. |
| initialValue | any | Yes |  | Initial value which will be used for the reduce operation. |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| result | any | No | The result of the reduce operation after the previous iteration.
| item | any | No | The value for the current iteration's item.
| index | numeric | No | The current index for the iteration
| array | array | No | A reference of the original array

## Simple stringReduceRight Example

Demonstrate how the function works from right to left.

```javascript
myString="abcd";
newString=stringReduceRight(myString,function(prev,next,idx,arr){ return prev & next & idx },"")
writedump(newString);
```

### Expected Result: d4c3b2a1

## How Do You Do This In Lucee?

This function will be added to Lucee in Version 6. But if you need to reverse a string now, use the `reverse()` function.

```javascript
myString="abcd";
newString=myString.reverse();
writedump(newString);
```

### Expected Result: dcba
