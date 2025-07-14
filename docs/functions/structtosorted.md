# structToSorted

Converts a struct to an ordered one

```javascript
structToSorted(structure, callback)
structToSorted(structure, sorttype, sortorder, localeSensitive)
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
structure.toSorted(callback)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure or a variable that contains one. |
| callback | function | No |  | Closure or function reference that will be called for each iteration. Should return -1, 0 or 1. |
| sorttype | string | No | text |  |
| sortorder | string | No | asc | * asc: ascending (a to z) sort order.<br />* desc: descending (z to a) sort order |
| localeSensitive | boolean | No | NO | Respect locale-specific characters (including support for umlaut characters) while sorting (applies to type"text"). |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| value1 | any | No | The value of the first key/value pair
| value2 | any | No | The value of the second key/value pair
| key1 | string | No | The key name of the first key/value pair
| key2 | string | No | The key name of the second key/value pair

## structToSorted  with an inline function sorting by key value

Use a function to sort the keys by numeric value descending

```javascript
someStruct = {
    "NINE": 9,
    "SIX": 6,
    "THREE": 3,
    "TWELVE": 12,
    "tres": 3,
    "seis": 6,
    "nueve": 9,
    "doce": 12
};
     
function sortByNumericValuesDescending(value1, value2, key1, key2) {
        if (value1 > value2) {
            return -1;
        }
        return 1;
};
    
sortedStruct=StructToSorted(someStruct, sortByNumericValuesDescending);
writedump(sortedStruct);
```

### Expected Result: A new struct with the keys ordered by value descending

## structToSorted  member function with an inline function sorting by key value

Use a function to sort the keys by numeric value descending

```javascript
someStruct = {
    "NINE": 9,
    "SIX": 6,
    "THREE": 3,
    "TWELVE": 12,
    "tres": 3,
    "seis": 6,
    "nueve": 9,
    "doce": 12
};
     
function sortByNumericValuesDescending(value1, value2, key1, key2) {
        if (value1 > value2) {
            return -1;
        }
        return 1;
};

sortedStruct=someStruct.ToSorted(sortByNumericValuesDescending);
writedump(sortedStruct);
```

### Expected Result: A new struct with the keys ordered by value descending

## structToSorted  member function with an inline function sorting by key name

Use a function to sort the keys by name

```javascript
someStruct = {
    "NINE": 9,
    "SIX": 6,
    "THREE": 3,
    "TWELVE": 12,
    "tres": 3,
    "seis": 6,
    "nueve": 9,
    "doce": 12
};
     
function sortByKeyName(value1, value2, key1, key2) {
        return compareNoCase(key1, key2);
}

sortedStruct=someStruct.ToSorted(sortByKeyName);
writedump(sortedStruct);
```

### Expected Result: A new struct with the keys ordered by key name

## structToSorted  member function with sorttype argument

Use a function to sort the keys by name

```javascript
someStruct = {
    "NINE": 9,
    "SIX": 6,
    "THREE": 3,
    "TWELVE": 12,
    "tres": 3,
    "seis": 6,
    "nueve": 9,
    "doce": 12
};
     
sortedStruct=someStruct.ToSorted("text","asc",false);
writedump(sortedStruct);
```

### Expected Result: A new struct with the keys ordered by key name
