# getSOAPRequestHeader

Obtains a SOAP request header. Call only from within a CFC web service function that is processing a request as a SOAP web service.

```javascript
getSOAPRequestHeader(namespace, name [, asXML])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| namespace | string | Yes |  | A String that is the namespace for the header |
| name | string | Yes |  | A String that is the name of the header |
| asXML | boolean | No | NO | If True, the header is returned as a CFML XML object;<br /> if false (default), the header is returned as a Java object. |
