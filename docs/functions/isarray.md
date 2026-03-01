# isArray

 Determines whether a value is an array.
 True, if value is an array, a query column object, or XML.
 also number = Dimension; function tests whether the array has
 exactly this dimension

```javascript
isArray(value [, number])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | The array in which to check. |
| number | numeric | No |  | Dimension of the array. |

## simple isArray example

For CF9+ CF10+

```javascript
colorArray = ['yellow','green','red'];
writeOutput(isArray(colorArray));
```

### Expected Result: yes

## simple isArray example

For Lucee4.5+

```javascript
colorArray = ['yellow','green','red'];
writeOutput(isArray(colorArray));
```

### Expected Result: true

## isArray example with number

For CF9+ CF10+

```javascript
numberArray = [1,2,3];
writeOutput(isArray(numberArray,1));
```

### Expected Result: yes

## isArray example with number

For Lucee4.5+

```javascript
numberArray = [1,2,3];
writeOutput(isArray(numberArray,1));
```

### Expected Result: true
