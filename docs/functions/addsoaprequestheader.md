# addSOAPRequestHeader

Adds a SOAP header to a web service request before making the request.

```javascript
addSOAPRequestHeader(webservice, namespace, name, value, mustUnderstand)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| webservice | string | Yes |  | A webservice object as returned from the cfobject tag
 or the createobject function |
| namespace | string | Yes |  | Namespace for the SOAP header |
| name | string | Yes |  | Name of SOAP header |
| value | string | Yes |  | the value for the SOAP header; this can be a CFML XML value. |
| mustUnderstand | boolean | No | false | The mustUnderstand attribute indicates whether processing of the header is optional or mandatory.
This basically translates to the node trying to find an appropriate handler that matches the header
and proceed with processing the message in a manner consistent with its specification. If it can't find an appropriate handler
it must return an error and stop further processing. If mustUnderstand is set to `true`
the node is not allowed to ignore it. |

## Set the username header as a string

```javascript
/ws = createObject("webservice", "http://localhost/soapheaders/headerservice.cfc?WSDL");
addSOAPRequestHeader(ws, "http://mynamespace/", "username", "tom", false);
```
