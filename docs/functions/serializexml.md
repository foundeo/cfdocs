# serializeXML

Serializes the given object to XML.

```javascript
serializeXML( objToBeSerialized, useCustomSerializer )
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| objToBeSerialized | any | Yes |  | An object to be serialized. |
| useCustomSerializer | boolean | No | YES | Whether to use the custom serializer. The default value is true. The custom serializer will be always used for XML deserialization. If false, the XML/JSON deserialization will be done using the default ColdFusion behavior. If any other type is passed with useCustomSerializer as false, then TypeNotSupportedException will be thrown. |

## Serialize a struct to XML (Script syntax)

This will serialize the object to XML using ColdFusion's default serialization mechanism.

```javascript
serializeXML({ "firstName": "John", "lastName": "Doe" })
```

### Expected Result: <STRUCT ID="1"><ENTRY NAME="lastName" TYPE="STRING">Doe</ENTRY><ENTRY NAME="firstName" TYPE="STRING">John</ENTRY></STRUCT>
