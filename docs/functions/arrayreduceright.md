# arrayReduceRight

This function iterates over every element of the array and calls the closure to work on that element. It will reduce the array to a single value, from the right to the left, and return it.
NOTE:This function is not available in Lucee 5.x or lower. Potentially use `reverse()` instead.

```javascript
arrayReduceRight(array, function(result, item [,index, [array]]){} [, initialValue])
```

```javascript
returns any
```
### Member Function Syntax

```javascript
someArray.reduceRight(function(result, item [,index, [array]]){} [, initialValue])
```
