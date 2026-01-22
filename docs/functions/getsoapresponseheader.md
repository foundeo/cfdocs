# getSOAPResponseHeader

Returns a SOAP response header. Call this function from within code that is invoking a web service after making a web service request.

```javascript
getSOAPResponseHeader(webservice, namespace, name [, asXML])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| webservice | any | Yes |  | A webservice object as returned from the cfobject tag or the createObject function. |
| namespace | string | Yes |  | A String that is the namespace for the header. |
| name | string | Yes |  | A String that is the name of the SOAP header. |
| asXML | boolean | No | NO | If True, the header is returned as a CFML XML object;<br /> if false (default), the header is returned as a Java object. |
