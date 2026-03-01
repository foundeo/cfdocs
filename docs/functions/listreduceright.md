# listReduceRight

This function iterates over every element of the list and calls the closure to work on that element. This function will reduce the list to a single value, from the right to the left, and will return the value.
NOTE: Use caution if using the member function. `list.reduceRight` and `list.listReduceRight` may behave differently.
NOTE:This function is not available in Lucee 5.x or lower. Potentially use `reverse()` instead.

```javascript
listReduceRight(list, callback, initialValue[, delimiter][, includeEmptyFields])
```

```javascript
returns any
```

## Member Function Syntax

```javascript
list.listReduceRight(callback, initialValue[, delimiter][, includeEmptyFields])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | The input list. |
| callback | any | Yes |  | Closure or a function reference that will be called for each iteration. |
| initialValue | any | Yes |  | Initial value which will be used for the reduce operation. |
| delimiter | string | No | , | The list delimiter |
| includeEmptyFields | boolean | No | false | Include empty values? |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| result | any | No | The result of the reduce operation after the previous iteration.
| item | any | No | The value for the current iteration's item.
| index | numeric | No | The current index for the iteration.
| list | string | No | A reference of the original list.

## Simple listReduceRight Example

Demonstrate how the function works from right to left.

```javascript
myList="a,b,c,d";
newList=listReduceRight(myList,function(prev,next,idx,arr){ return prev & next & idx },"");
writedump(newList);
```

### Expected Result: d4c3b2a1

## listReduceRight as a Member Function

Demonstrate the member function.

```javascript
myList="a,b,c,d";
newList=myList.listReduceRight(function(prev,next,idx,arr){ return prev & next & idx },"");
writedump(newList);
```

### Expected Result: d4c3b2a1

## Empty Elements

Demonstrate the behavior when there is an empty element.

```javascript
myList="a,,,,,b,,,c,,,d";
newList=myList.listReduceRight(function(prev,next,idx){ return prev & next & idx },"");
writedump(newList);
```

### Expected Result: d4c3b2a1
