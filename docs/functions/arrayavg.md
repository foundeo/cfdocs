# arrayAvg

 Calculates the average of the values in an array.
 All elements in the array must contain values that can be
 automatically converted to numeric.

```javascript
arrayAvg(array)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someArray.avg()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | An array which to determine average |

## Average value of an array

Uses the arrayAvg function to get average value of an array

```javascript
numberArray = [1,2,3];
writeOutput(arrayAvg(numberArray));
```

### Expected Result: 2

## Average value of an array using the Array member function

CF11+ Lucee4.5+ Uses the avg member function is the same as running arrayAvg.

```javascript
numberArray = [1,2,3];
writeOutput(numberArray.avg());
```

### Expected Result: 2
