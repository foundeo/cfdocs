# structDelete

Removes an element from a structure.

```javascript
structDelete(structure, key [, indicateNotExisting])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someStruct.delete(key)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | string | Yes |  | Structure or a variable that contains one. Contains element
 to remove |
| key | string | Yes |  | Element to remove |
| indicateNotExisting | boolean | No | NO | When true this function will return true only if the key that was deleted existed. When false (default) this function will return true if the key is successfully removed. |

## Remove a key from a struct

Creates a struct then removes a key

```javascript
someStruct = {a=1,b=2};
structDelete(someStruct, "a");

writeDump(someStruct);
```

### Expected Result: Struct with one key-value pair: B 2

## Remove a key from a struct using the member function

CF11+ Lucee4.5+ Invoking the delete function on a struct is the same as running structDelete.

```javascript
someStruct = {a=1, b=2};
someStruct.delete('a');

writeDump(someStruct);
```

### Expected Result: Struct with one key-value pair: B 2
