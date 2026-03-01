# arrayReverse

Returns an array with all of the elements reversed. The value in [0] within the input array will then exist in [n] in the output array, where n is the amount of elements in the array minus one.

```javascript
arrayReverse(array)
```

```javascript
returns array
```

## Member Function Syntax

```javascript
array.reverse()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array to reverse |

## Reverse an Array

Creates a new array with reversed positions

```javascript
myArray = [1,2,3];
myArrayReversed = arrayReverse(myArray);
writeOutput( serializeJSON( myArrayReversed ) );
```

### Expected Result: [3,2,1]

## Reverse an Array via Member Function

```javascript
myArray = [1,2,3]; 
writeOutput( serializeJSON( myArray.reverse() ) );
```

### Expected Result: [3,2,1]

## Reverse an Array using array slice syntax

Reverse an Array using array slice syntax adding in ColdFusion 2018

```javascript
myArray = [1,2,3]; 
writeOutput( serializeJSON( myArray[::-1] ) );
```

### Expected Result: [3,2,1]
