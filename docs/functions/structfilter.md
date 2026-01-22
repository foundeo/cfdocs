# structFilter

Used to filter the key-value pairs in a structure.

```javascript
structFilter(struct,function(key, value [,struct]){} [, parallel] [, maxThreads])
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
someStruct.filter(function(key, value [,struct]){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| struct | struct | Yes |  | Name of the structure to filter |
| callback | boolean | Yes |  | Closure or a function reference that will be called for each of the iteration. Returns true if the key-value pair in the structure should be included in the filtered struct. Support for passing the original struct to the closure function added in CF11 Update 5. |
| parallel | boolean | No | false | Lucee4.5+ true if the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ the maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| key | string | No | The key for the current iteration
| value | any | No | The value for the current iteration
| struct | struct | No | A reference of the original struct

## Example using a simple numeric comparison

Take a struct of items with their rating and use structFilter to return ones of a rating 3 and higher.

```javascript
fruitRatings = {apple=4,banana=1,orange=5,mango=2,kiwi=3};

favoriteFruits = structFilter(fruitRatings, function(key, value){
     return value >= 3;
});
writedump(favoriteFruits);
```

### Expected Result: {apple=4,orange=5,kiwi=3}

## Example using a member function

This is the same example, but using a member function on the struct instead of a standalone function.

```javascript
fruitRatings = {apple=4,banana=1,orange=5,mango=2,kiwi=3};

favoriteFruits = fruitRatings.filter(function(key, value){
     return value >= 3;
});
writedump(favoriteFruits);
```

### Expected Result: {apple=4,orange=5,kiwi=3}
