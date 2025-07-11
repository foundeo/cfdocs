# structListNew

Creates a new structure, that has a maximum number of items. It will maintain the insertion order of the structure.

```javascript
structListNew(maxsize)
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| maxsize | numeric | Yes |  | The maximum number of items that this struct will hold. |

## New struct using function

Creates an ordered struct with a maximum of 3 items.

```javascript
sampleStruct = structListNew(3);
sampleStruct.a = 1;
sampleStruct.b = 2;
sampleStruct.c = 3;
writeDump( sampleStruct );
```
