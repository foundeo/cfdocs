# structUpdate

 Updates a key with a value.

```javascript
structUpdate(structure, key, value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure to update |
| key | string | Yes |  | Key, the value of which to update |
| value | any | Yes |  | New value |

## Updates a structure value at specific key

Change value of structure item

```javascript
myStruct = {a: 1, b: 2, c: 3, d: 4};
structUpdate(myStruct,'c',15);
writeDump(serializeJSON(myStruct));
```

### Expected Result: {"A":1,"B":2,"C":15,"D":4}
