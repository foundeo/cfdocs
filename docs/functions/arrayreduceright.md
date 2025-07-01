# arrayReduceRight

This function iterates over every element of the array and calls the closure to work on that element. It will reduce the array to a single value, from the right to the left, and return it.
NOTE:This function is not available in Lucee 5.x or lower. Potentially use `reverse()` instead.

```javascript
arrayReduceRight(array, function(result, item [,index, [array]]){} [, initialValue])
```

```javascript
returns any
```

## Member Function Syntax

```javascript
someArray.reduceRight(function(result, item [,index, [array]]){} [, initialValue])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The input array. |
| callback | any | Yes |  | Closure or a function reference that will be called for each iteration. |
| initialValue | any | No |  | Initial value which will be used for the reduce operation. |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| result | any | No | The result of the reduce operation after the previous iteration. |
| item | any | No | The value for the current iteration's item. |
| index | numeric | No | The current index for the iteration |
| array | array | No | A reference of the original array |

## Simple arrayReduceRight Example

Demonstrate how the function works from right to left.

```javascript
myArray=["a","b","c","d"];
newArray=arrayReduceRight(myArray,function(prev,next,idx,arr){ return prev & next & idx },"");
writedump(newArray);
```

### Expected Result: d4c3b2a1
