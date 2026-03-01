# arrayFind

These functions searches the array for the specified value. Returns the index in the array of the first match, or 0 if there is no match.

```javascript
arrayFind(array, value)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
someArray.find(value)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array you are searching. |
| value | any | Yes |  | The value you are looking for in the array. CF10+ or Lucee4.5+ support passing a closure function in this argument as well. |

## Find an "apple" in an array of fruit

Returns the index of the element "apple" in the array

```javascript
writeOutput( arrayFind( ["orange","pineapple","apple"], "apple" ));
```

### Expected Result: 3

## Member Functions: Find an "apple" in an array of fruit

Calls the find member function of the array object. Requires CF11+ or Lucee4.5+

```javascript
fruit = [ "orange", "pineapple", "apple" ];
writeOutput( fruit.find( "apple" ) );
```

### Expected Result: 3

## arrayFind is case-sensitive

Case-sensitive so "Apple" is not in the array, returns 0. Use arrayFindNoCase for case insensitive matching.

```javascript
writeOutput( arrayFind(["orange","pineapple","apple"], "Apple") );
```

### Expected Result: 0

## Using arrayFind with a closure / callback function

CF10+ Lucee4.5+ The arrayFind function passes each array value into the supplied function. The function returns a boolean, `true` if you found what you are looking for. The result of the arrayFind function is the index of the first matching array element found, or `0` if not found. Use arrayFindAll to return an array of all found item indexes.

```javascript
a = [5,4,3,2,1];
pos = arrayFind(a, function(item) {
	return item == 2;
});
writeOutput(pos);
```

### Expected Result: 4
