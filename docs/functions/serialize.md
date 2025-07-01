# serialize

Serializes the object to a specified type

```javascript
serialize( object, type, useCustomSerializer )
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| object | any | Yes |  | An object to be serialized. |
| type | string | Yes |  | A type to which the object will be serialized. ColdFusion, by default supports XML and JSON formats. You can also implement support for other types in the CustomSerializer CFC. |
| useCustomSerializer | boolean | No | YES | Whether to use the custom serializer or not. The custom serializer will be always used for XML deserialization.
If false, the XML/JSON deserialization will be done using the default ColdFusion behavior.
If any other type is passed with useCustomSerializer as false, then TypeNotSupportedException will be thrown. |

## Serialize with Lucee's default serializer (Script syntax)

Lucee5+ This will serialize the object using the default serialization mechanism.

```javascript
serialize({ "firstName": "John", "lastName": "Doe" });
```

### Expected Result: {"lastName":"Doe","firstName":"John"}

## Serialize to JSON (Script syntax)

This will serialize the object to JSON using ColdFusion's default serialization mechanism.

```javascript
serialize({ "firstName": "John", "lastName": "Doe" }, 'json');
```

### Expected Result: {"lastName":"Doe","firstName":"John"}
