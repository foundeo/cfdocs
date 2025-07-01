# arraySome

Calls a given closure/function with every element in a given array and returns true if one of the closure calls returns true

```javascript
arraySome(array, function(item [,index, array]){} [, parallel] [, maxThreads])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.some(function(item [,index, array]){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | Array to iterate |
| callback | boolean | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| parallel | boolean | No |  | Lucee4.5+ Execute closures parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ Maximum number of threads executed, ignored when argument "parallel" is set to false |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| value | any | No | The value for the current iteration |
| index | numeric | No | The current index for the iteration |
| array | array | No | A reference of the original array |

## Simple Example

```javascript
// Create an array
arrayList = ["apple", "pineapple", "mango", "apricot"];

// Match some
result = arraySome(arrayList, function(fruit) {
    return fruit.startsWith("a");
});

// Print result
writeOutput((result ? "Some" : "No") & " matches  were found!");
```

### Expected Result: Some matches were found!

## Member Function Example

```javascript
// Create an array
arrayList = ["apple", "pineapple", "mango", "apricot"];

// Match some
result = arrayList.some(function(fruit) {
    return fruit.endsWith("a");
});

// Print result
writeOutput((result ? "Some" : "No") & " matches  were found!");
```

### Expected Result: No matches were found!
