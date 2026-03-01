# objectSave

Serialize object to file or convert it to binary format

```javascript
objectSave(object [, file])
```

```javascript
returns binary
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| object | variableName | Yes |  | Object to be serialized |
| file | string | No |  | File in which serialized object will be stored |

## Saving and loading a complex object

```javascript
people = queryNew('id,name','integer,varchar', {'id':1,'name':'Pedro'});
binary_people = objectSave(people);
writeDump(binary_people);
restored_people = objectLoad(binary_people);
writeDump(restored_people);
```
