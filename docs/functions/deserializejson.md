# deserializeJSON

 Converts a JSON (JavaScript Object Notation) string data representation into CFML data, such as a CFML structure or array.

```javascript
deserializeJSON(json [, strictMapping, useCustomSerializer])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| json | string | Yes |  | A string that contains a valid JSON construct or variable that represents one. |
| strictMapping | boolean | No | true | A Boolean value that specifies whether to convert the JSON strictly. If true, everything becomes structures. |
| useCustomSerializer | boolean | No | true | CF11+ Use custom serializer if defined. See: https://helpx.adobe.com/coldfusion/developing-applications/changes-in-coldfusion/restful-web-services-in-coldfusion.html |

## Convert JSON into CF Structure

```javascript
person = deserializeJSON( '{"company":"Foundeo","name":"Pete Freitag"}' );
writeOutput( person.company );
```

### Expected Result: Foundeo
