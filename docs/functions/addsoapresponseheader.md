# addSOAPResponseHeader

Adds a SOAP response header to a web service response. Call only from within a CFC web service function that is processing a request as a SOAP web service.

```javascript
addSOAPResponseHeader(namespace, name, value [, mustUnderstand])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| namespace | string | Yes |  | A webservice object as returned from the cfobject tag or the createobject function |
| name | string | Yes |  | Name of the SOAP header |
| value | string | Yes |  | Value of the SOAP header |
| mustUnderstand | boolean | No |  | The mustUnderstand attribute indicates whether processing of the header is optional or mandatory.<br />This basically translates to the node trying to find an appropriate handler that matches the header<br />and proceed with processing the message in a manner consistent with its specification. If it can't find an appropriate handler<br />it must return an error and stop further processing. If mustUnderstand is set to `true`<br />the node is not allowed to ignore it. |

## Set the username header as a string and get the first header as an object (string) and as XML

```javascript
ws = createObject("webservice", "http://localhost/soapheaders/headerservice.cfc?WSDL");
addSOAPRequestHeader(ws, "http://mynamespace/", "username", "tom", false);
ret = ws.echo_me("argument");
header = getSOAPResponseHeader(ws, "http://www.tomj.org/myns", "returnheader"); 
XMLheader = getSOAPResponseHeader(ws, "http://www.tomj.org/myns", "returnheader", true);
```
