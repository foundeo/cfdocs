# arrayMax

 Returns the largest numeric value in an array. If the array
 parameter value is an empty array, returns zero.
 All elements must contain values that can be automatically
 converted to numeric values.

```javascript
arrayMax(array)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someArray.max()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | An array or variable name |

## Simple example with empty array

To get the largest numeric value of an array

```javascript
someArray = arrayNew(1);
writeOutput(arrayMax(someArray));
```

### Expected Result: 0

## Get largest numeric value of an array

Uses the arrayMax function to get the largest numeric value of an array

```javascript
someArray = [23,45,87,1,4];
writeOutput(arrayMax(someArray));
```

### Expected Result: 87

## Get largest numeric value of an array using member function

CF11+ Lucee4.5+

```javascript
someArray = [23,45,0,1,4];
writeOutput(someArray.max());
```

### Expected Result: 45
