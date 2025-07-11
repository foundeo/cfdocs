# arraySum

The sum of values in an array. If the array parameter value is
 an empty array, returns zero.

```javascript
arraySum(array)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someArray.sum()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | An array name or variable name |
| ignoreEmpty | boolean | No | NO | CF2016.0.3+ Whether to ignore empty string or null values |

## Sum of values in an array

Uses the arraySum function to get sum of values in an array

```javascript
numberArray = [10,99,27,72];
writeOutput( arraySum(numberArray));
```

### Expected Result: 208

## Sum of values in an array

To get sum of values in an empty array

```javascript
numberArray = [];
writeOutput( arraySum(numberArray));
```

### Expected Result: 0

## Sum of values in an array

CF11+ Lucee4.5+ Uses the sum member function is the same as running arraySum.

```javascript
numberArray = [10,99,27,72];
writeOutput( numberArray.sum() );
```

### Expected Result: 208
