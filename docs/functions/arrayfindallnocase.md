# arrayFindAllNoCase

Searches an array for all positions of a specified value. The function searches for simple values such as strings and numbers or for complex objects such as structures. When the second parameter is a simple value, string searches are case-sensitive

```javascript
arrayFindAllNoCase(array, value or callback)
```

```javascript
returns array
```

## Member Function Syntax

```javascript
someArray.findAllNoCase(value or callback)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The source array to search through |
| value or callback | variableName | Yes |  | If string, case insensitive value to search for; if callback, use signature function (item, index, array) : boolean |

## Script Syntax

Find the positions of a given string within a provided array regardless of case.

```javascript
var fruitArray = ['apple','banana','apple','orange','kiwi'];
var applePositions = arrayFindAllNoCase(fruitArray, 'APPLE');
writeDump(applePositions);
```

### Expected Result: [1,3].
