# deserialize

Deserializes a string.

```javascript
deserialize(string, type, useCustomSerializer);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | A string that needs to be deserialized. |
| type | string | Yes |  | The type of the data to be deserialized. ColdFusion by default supports XML and JSON formats. You can also implement support for other types in the CustomSerializer CFC. |
| useCustomSerializer | boolean | Yes | true | Whether to use the custom serializer or not. The custom serializer will always be used for deserialization.<br />If false, the XML/JSON deserialization will be done using the default ColdFusion behavior.<br />If any other type is passed with `useCustomSerializer` as false, then `TypeNotSupportedException` will be thrown. |
