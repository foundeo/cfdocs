# arrayEvery

returns true if every closure returns true, otherwise false

```javascript
arrayEvery(array array, function(item, [index, [array]]) closure, [boolean parallel], [number maxThreads])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.every(function(item, [index, [array]]) closure, [boolean parallel], [number maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |
| closure | function | Yes |  | A function / closure with the signature: `boolean function (any item, [numeric index], [array array])` |
| parallel | boolean | No | false | Lucee4.5+ When `true` the items can be executed in parallel |
| maxThreads | boolean | No | 20 | Lucee4.5+ The number of threads to use when `parallel=true` |

## Example for positive result

Checks whether all items in an array are greater than 2 and outputs true because all of them fulfill the requirement.

```javascript
array = [4, 5, 6, 7];
writeOutput(arrayEvery(array, function(value) { return value gt 2; }));
```

### Expected Result: YES

## Example for negative result

Checks whether all items in an array are greater than 2 and outputs false because some of them do not fulfill the requirement.

```javascript
array = [1, 2, 3, 4];
writeOutput(arrayEvery(array, function(value) { return value gt 2; }));
```

### Expected Result: NO
