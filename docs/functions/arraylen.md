# arrayLen

Determines the number of elements in an array.
 CF MX: this function can be used on child XML objects.

```javascript
arrayLen(array)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someArray.len()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | An array which to determine length |

## Simple example for arrayLen function

Uses the arrayLen function to get the total length of an array

```javascript
numberArray = [1,2,3,4];
writeOutput(arrayLen(numberArray));
```

### Expected Result: 4

## Total length of an array using the member function

CF11+ Lucee4.5+ Uses the len member function is the same as running arrayLen.

```javascript
colorArray = ['Green','red','blue'];
writeOutput(colorArray.len());
```

### Expected Result: 3
