# arrayFilter

Used to filter an array to items for which the closure function returns true.

```javascript
arrayFilter(array, function(item [,index, array]){} [, parallel] [, maxThreads])
```

```javascript
returns array
```

## Member Function Syntax

```javascript
someArray.filter(function(item [,index, array]){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |
| callback | boolean | Yes |  | Closure or a function reference that will be called for each of the iteration. Returns true if the array element should be included in the filtered array. Support for passing the original array to the closure function added in CF11 Update 5. |
| parallel | boolean | No | false | Lucee4.5+ true if the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ the maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| value | any | No | The value for the current iteration |
| index | numeric | No | The current index for the iteration |
| array | array | No | A reference of the original array |

## Simple numeric comparison

Take an array of struct items and use arrayFilter to return ones of a rating 3 and higher.

```javascript
fruitArray = [{'fruit'='apple', 'rating'=4}, {'fruit'='banana', 'rating'=1}, {'fruit'='orange', 'rating'=5}, {'fruit'='mango', 'rating'=2}, {'fruit'='kiwi', 'rating'=3}];

favoriteFruits = arrayFilter(fruitArray, function(item){
	return item.rating >= 3;
});
writedump(serializeJSON(favoriteFruits));
```

### Expected Result: [{"fruit":"apple","rating":4},{"fruit":"orange","rating":5},{"fruit":"kiwi","rating":3}]

## Using a member function

This is the same example as above, but using a member function on the array instead of a standalone function.

```javascript
fruitArray = [{'fruit'='apple', 'rating'=4}, {'fruit'='banana', 'rating'=1}, {'fruit'='orange', 'rating'=5}, {'fruit'='mango', 'rating'=2}, {'fruit'='kiwi', 'rating'=3}];

favoriteFruits = fruitArray.filter(function(item){
	return item.rating >= 3;
});
writedump(serializeJSON(favoriteFruits));
```

### Expected Result: [{"fruit":"apple","rating":4},{"fruit":"orange","rating":5},{"fruit":"kiwi","rating":3}]
