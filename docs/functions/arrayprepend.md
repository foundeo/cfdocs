# arrayPrepend

Inserts an array element at the beginning of an array
 and shifts the positions of the existing elements to
 make room.

```javascript
arrayPrepend(array, value)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.prepend(value)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |
| value | any | Yes |  |  |

## Prepend a value to an array

Uses the arrayPrepend function to prepend a value to the beginning of an array and shifts the positions of the existing elements.

```javascript
someArray = [3,2,1]; 
arrayPrepend(someArray, 4);
writeDump(someArray);
```

### Expected Result: [4,3,2,1]

## Prepend a value to an array using the Array member function

CF11+ Lucee4.5+ Invoking the prepend function on an array is the same as running arrayPrepend.

```javascript
doctorArray = ['Eccleston','Tennant','Smith','Capaldi'];
doctorArray.prepend('Hurt');
writeDump(doctorArray);
```

### Expected Result: ['Hurt','Eccleston','Tennant','Smith','Capaldi']
