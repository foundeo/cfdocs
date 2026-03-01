# arrayFindNoCase

These functions performs a case-insensitive search in the array for the specified value. Returns the array index of the first match; 0 if not found.

```javascript
arrayFindNoCase(array, value or callback)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someArray.findNoCase(value or callback)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array to search |
| value or callback | any | Yes |  | The value you are looking for in the array. |

## Find an "Apple" in an array of fruit

Returns the index of the element "Apple" in the array

```javascript
writeOutput( arrayFindNoCase(["orange","pineapple","apple"], "Apple" ) );
```

### Expected Result: 3

## arrayFind is not Case Sensitive

Not case sensitive so "Apple" will be found in the array, returns 1. Use arrayFind for case sensitive matching.

```javascript
writeOutput( arrayFindNoCase(["orange","pineapple","apple"], "Apple") );
```

### Expected Result: 1

## Member Functions: Find an "Apple" in an array of fruit

Calls the findNoCase member function of the array object. Requires CF11+ or Lucee4.5+

```javascript
fruit = ["orange","pineapple","apple"];
writeOutput( fruit.findNoCase("Apple") );
```

### Expected Result: 3
