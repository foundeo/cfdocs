# arrayToStruct

Transform the array to a struct, the index of the array is the key of the struct

```javascript
arrayToStruct(array)
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
array.toStruct()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |

## Convert an array to a struct using arrayToStruct()

```javascript
serializeJSON(arrayToStruct(["a","b"]));
```

### Expected Result: {"2":"b","1":"a"}
