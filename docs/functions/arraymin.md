# arrayMin

 Returns the smallest numeric value in an array. If the array
 parameter value is an empty array, returns zero.
 All elements must contain values that can be automatically
 converted to numeric values.

```javascript
arrayMin(array)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someArray.min()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | An array or variable name |

## Simple example with empty array

To get the smallest numeric value of an array

```javascript
someArray = arrayNew(1);
writeOutput(arrayMin(someArray));
```

### Expected Result: 0

## Get smallest numeric value of an array

Uses the arrayMin function to get the smallest numeric value of an array

```javascript
someArray = [23,45,87,2,4];
writeOutput(arrayMin(someArray));
```

### Expected Result: 2

## Get smallest numeric value of an array using member function

CF11+ Lucee4.5+

```javascript
someArray = [23,45,99,1,4];
writeOutput(someArray.Min());
```

### Expected Result: 1
