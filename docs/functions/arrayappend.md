# arrayAppend

Appends an element to the end of an array.

```javascript
arrayAppend(array, value [, merge])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.append(value [, merge])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array to which the element should be appended. |
| value | any | Yes |  | The element to append. Can be any type. |
| merge | boolean | No | NO | CF10+ When true appends array elements individually to the specified array. When false (default), the new array is appended as a single element. |

## Append a value to an array

Uses the arrayAppend function to append a value to the end of the array

```javascript
someArray = [1,2,3];
arrayAppend(someArray, 4);
writeOutput(serializeJSON(someArray));
```

### Expected Result: [1,2,3,4]

## Append a value to an array using the Array member function

CF11+ Lucee4.5+ Invoking the append function on an array is the same as running arrayAppend.

```javascript
someArray = [1,2,3];
someArray.append(4);
writeOutput(serializeJSON(someArray));
```

### Expected Result: [1,2,3,4]

## Append more than one item

CF10+ You can merge two arrays when third parameter is set to true.

```javascript
someArray = [1,2,3];
ArrayAppend(someArray,[4,5,6],true);
writeDump(serializeJSON(someArray));
```

### Expected Result: [1,2,3,4,5,6]
