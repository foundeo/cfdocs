# arraySetMetadata

Sets metadata for items of an array. Useful when using serializeJSON with ambiguous data.

```javascript
arraySetMetadata(array, metadata)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someArray.setMetadata(metadata)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array for which to set the metadata. |
| metadata | struct | Yes |  | The metadata struct to set. |

## Serialize an array to JSON

Outputs serialized JSON for an array containing various data types

```javascript
inputs = ["2016.02", 42.0, "Yes", "No", "32830", {"t1": "Yes"}, ["1","yes","3",false,"null","null"]];
metadata = {items: ["numeric", "integer", "string", "boolean", "string", {t1: {type:"string",ignore:true}}, {items: ["integer","boolean","string","string","string","null"]}]};
arraySetMetadata(inputs,metadata);
writeOutput(serializeJSON(inputs));
```

### Expected Result: [2016.02,42.0,"Yes",false,"32830",{},[1,true,"3","false","null","null"]]
