# arrayIsEmpty

Determines whether an array is empty. Equivalent to arrayLen().
 Calling this function on an array with 10 undefined elements
 will return false.
 CF MX: this function can be used on XML objects.

```javascript
arrayIsEmpty(array)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.isEmpty()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | An array name or variable name |

## Simple example for arrayIsEmpty function

To check an array is empty or not

```javascript
someArray = [1,2,3,4,5];
writeOutput(arrayIsEmpty(someArray));
```

### Expected Result: No

## Simple example for arrayIsEmpty function

Lucee4.5+ To check an array is empty or not

```javascript
someArray = [1,2,3,4,5];
writeOutput(arrayIsEmpty(someArray));
```

### Expected Result: false

## Simple example with member function

CF11+ Uses the member function is the same as running arrayIsEmpty.

```javascript
numberArray = arrayNew(1);
writeOutput(numberArray.isEmpty());
```

### Expected Result: Yes

## Simple example with member function

Lucee4.5+ Uses the member function is the same as running arrayIsEmpty.

```javascript
numberArray = arrayNew(1);
writeOutput(numberArray.isEmpty());
```

### Expected Result: true
