# arrayReduce

Iterates over every entry of the array and calls the closure to work on the elements of the array. This function will reduce the array to a single value and will return the value.

```javascript
arrayReduce(array, function(result, item [,index, array]){} [, initialValue])
```

```javascript
returns any
```

## Member Function Syntax

```javascript
someArray.reduce(function(result, item [,index, array]){} [, initialValue])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | the input array |
| callback | any | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| initialValue | any | No |  | Initial value which will be used for the reduce operation. |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| result | any | No | The result of the reduce operation after the previous iteration |
| value | any | No | The value for the current iteration |
| index | numeric | No | The current index for the iteration |
| array | array | No | A reference of the original array |

## Simple arrayReduce Example

Sum each `a` element in the array

```javascript
complexData = [ {a: 4}, {a: 18}, {a: 51} ];sum = arrayReduce( complexData, function(prev, element){
	return prev + element.a;
}, 0 );
writeOutput(sum);
```

### Expected Result: 73
