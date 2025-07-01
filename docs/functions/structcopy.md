# structCopy

 Copies a structure. Copies top-level keys, values, and arrays
 in the structure by value; copies nested structures by
 reference.

```javascript
structCopy(structure)
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure to copy |

## Copy a structure and change it. Original structure stays unchanged

```javascript
myStruct = {
    'a': 1,
    'b': 2,
    'c': 3
};
myNewStruct = structCopy(myStruct);
myNewStruct.b = 5;
myNewStruct['d'] = 4;
structDelete(myNewStruct,'c');
writeOutput(structKeyList(myStruct)&' → '&structKeyList(myNewStruct));
```

### Expected Result: b,a,c → b,a,d
