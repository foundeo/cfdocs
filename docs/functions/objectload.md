# objectLoad

Load object from binary object

```javascript
objectLoad(binaryObject)
objectLoad(filepath)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| binaryObject | binary | Yes |  | A binary object returned by objectSave function. |
| filepath | string | Yes |  | A file path to a serialized object |

## Saving and loading a complex object

```javascript
people = queryNew('id,name','integer,varchar', {'id':1,'name':'Pedro'});
binary_people = objectSave(people);
writeDump(binary_people);
restored_people = objectLoad(binary_people);
writeDump(restored_people);
```
