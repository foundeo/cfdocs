# arrayContains

Used to determine if a value is in the given array, case-sensitive. Adobe CF and OpenBD return boolean. Lucee / Railo returns the numeric index if the value is found, 0 if not.

```javascript
arrayContains(array, value)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.contains(value)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array in which to search. |
| value | any | Yes |  | The value to search for in the array. |
| substringMatch | any | No | false | Lucee4.5+ If set to true then a substring match will also return an array position. This will only work with simple values. Passing true with complex objects will throw an exception. |

## Array Contains

CF9+

```javascript
someArray = [1,2,3];
writeDump(arrayContains(someArray,2));
```

### Expected Result: true

## Array Contains (member function)

CF10+

```javascript
someArray = [1,2,3];
writeDump(someArray.contains(2));
```

### Expected Result: true

## Array Contains

Lucee4.5+

```javascript
someArray = [1,2,3];
writeDump(arrayContains(someArray,2));
```

### Expected Result: 2

## Array Contains (member function)

Lucee4.5+

```javascript
someArray = [1,2,3];
writeDump(someArray.contains(2));
```

### Expected Result: 2

## Substring Search

Lucee4.5+

```javascript
words = [ 'hello' , 'world' ];
positionOfSubstring = arrayContains( words, 'el', true );
writeDump(positionOfSubstring);
```

### Expected Result: 1
