# arrayMap

Iterates over every entry of the array and calls the closure function to work on the element of the array. The returned value will be set at the same index in a new array and the new array will be returned

```javascript
arrayMap(array, function(item [,index, array]){} [, parallel] [, maxThreads])
```

```javascript
returns array
```

## Member Function Syntax

```javascript
someArray.map(function(item [,index, array]){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The input array |
| callback | any | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| parallel | boolean | No | false | Lucee4.5+ true if the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ the maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| value | any | No | The value for the current iteration
| index | numeric | No | The current index for the iteration
| array | array | No | A reference of the original array

## Script Syntax

```javascript
complexData = [ {a: 4}, {a: 18}, {a: 51} ];
newArray = arrayMap( complexData, function(item){
   return item.a;
});
writeDump(newArray);
```

### Expected Result: [4, 18, 51]
