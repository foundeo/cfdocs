# arrayIndexExists

Returns whether there exists an item in the array at the selected index.

```javascript
arrayIndexExists(array, index)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
array.indexExists(index)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |
| index | numeric | Yes |  |  |

## Standard function call when checking for an existing element

In this example, the index we are checking exists in the array so the check returns true.

```javascript
myArray=[];
myArray[1]='one';
myArray[2]='two';
myArray[3]='three';
myArray[4]='four';
myArray[5]='five';
result = arrayIndexExists(myArray, 3);
writeOutput(result);
```

### Expected Result: true

## Standard function call when checking for a nonexisting element

In this example, there is no element at the index we're checking so the check returns false.

```javascript
myArray=[];
myArray[1]='one';
myArray[2]='two';
// no element at index 3
myArray[4]='four';
myArray[5]='five';
result = arrayIndexExists(myArray, 3);
writeOutput(result);
```

### Expected Result: false

## Standard function call when checking an empty array

In this example, the array we are searching is empty so the check returns false.

```javascript
myArray=[];
result = arrayIndexExists(myArray, 3);
writeOutput(result);
```

### Expected Result: false

## Member function syntax

In this example, the index we are checking exists in the array so the check returns true.

```javascript
myArray=[];
myArray[1]='one';
myArray[2]='two';
myArray[3]='three';
myArray[4]='four';
myArray[5]='five';
result = myArray.indexExists(3);
writeOutput(result);
```

### Expected Result: true
