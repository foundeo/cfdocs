# arrayIsDefined

Determines whether an array element is defined in a given index.

```javascript
arrayIsDefined(array, index)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.isDefined(index)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | string | Yes |  | The array object |
| index | numeric | Yes |  | The index to check. |

## Simple example

CF8+ To check an array element is define or not

```javascript
someArray = [1,2,3,4,5];
writeOutput(arrayIsDefined(someArray, 3));
```

### Expected Result: Yes

## Simple example

Lucee4.5+ To check an array element is define or not

```javascript
someArray = [1,2,3,4,5];
writeOutput(arrayIsDefined(someArray, 6));
```

### Expected Result: false

## Simple example with two dimensional array

CF8+ To check an array element is define or not

```javascript
FirstArray = [1,2,3];
secondArray = [11,12,13];
combineArray = arrayNew(2);
arrayAppend(combineArray, firstArray);
arrayAppend(combineArray, secondArray);
writeOutput(arrayIsDefined(combineArray, 3));
```

### Expected Result: No

## Simple example with two dimensional array

Lucee4.5+ To check an array element is define or not

```javascript
FirstArray = [1,2,3];
secondArray = [11,12,13];
combineArray = arrayNew(2);
arrayAppend(combineArray, firstArray);
arrayAppend(combineArray, secondArray);
writeOutput(arrayIsDefined(combineArray, 2));
```

### Expected Result: true
