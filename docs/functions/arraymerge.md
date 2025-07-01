# arrayMerge

This function creates a new array with data from the two passed arrays. To add all the data from one array into another without creating a new array see the built in function ArrayAppend(arr1, arr2, true).

```javascript
arrayMerge(array1, array2 [, leaveIndex])
```

```javascript
returns array
```

## Member Function Syntax

```javascript
array1.merge(array2 [, leaveIndex])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array1 | array | Yes |  |  |
| array2 | array | Yes |  |  |
| leaveIndex | boolean | No |  |  |

## Standard function syntax

Lucee4.5+ Merge two arrays resulting in a single re-indexed array. All elements of both arrays are preserved.

```javascript
fruit = ['apple','banana','orange'];
veggies = ['tomato','carrot','corn','peas','peppers'];
healthyFoods = arrayMerge(fruit, veggies);
writeOutput(arrayToList(healthyFoods));
```

### Expected Result: apple,banana,orange,tomato,carrot,corn,peas,peppers

## Member function syntax

Lucee4.5+ Merge two arrays resulting in a single re-indexed array. All elements of both arrays are preserved.

```javascript
fruit = ['apple','banana','orange'];
veggies = ['tomato','carrot','corn','peas','peppers'];
healthyFoods = fruit.merge(veggies);
writeOutput(arrayToList(healthyFoods));
```

### Expected Result: apple,banana,orange,tomato,carrot,corn,peas,peppers

## Example where leaveIndex parameter is true

Lucee4.5+ Merge two arrays resulting in a single re-indexed array. Where the both arrays have elements in the same position, only values from the first array are included in the result. Valid using standard or member function syntax.

Note how the first three elements of the veggies array are not merged because the fruit array already has values for elements 1-3.

```javascript
fruit = ['apple','banana','orange'];
veggies = ['tomato','carrot','corn','peas','peppers'];
healthyFoods = arrayMerge(fruit, veggies, true);
writeOutput(arrayToList(healthyFoods));
```

### Expected Result: apple,banana,orange,peas,peppers
