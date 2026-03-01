# deserializeXML

Deserializes a string in XML format to a ColdFusion object.

```javascript
deserializeXML(string [,useCustomSerializer]);
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | A string that needs to be deserialized. |
| useCustomSerializer | boolean | Yes | YES | This identifies whether or not to use the custom serializer. The default value is true. The custom serializer will be always used for XML deserialization. If false, the XML/JSON deserialization will be done using the default ColdFusion behavior. If any other type is passed with `useCustomSerializer` as false, then `TypeNotSupportedException` will be thrown. |

## Tag Syntax

```javascript
<cfset value = deserializeXML(toString(xmlDoc.root.XMLChildren[i].XMLChildren[1]), true)>
```
