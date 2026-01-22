# getSOAPResponse

Returns an XML object that contains the entire SOAP response after invoking a web service.

```javascript
getSOAPResponse(webservice)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| webservice | any | Yes |  | A webservice object as returned from the cfobject tag or the createObject function. |

## Create a SOAP call and retrieve the response

Create a SOAP webservice to call, then we can use  getSOAPResponse() to view the full response

```javascript
soapURL = "https://graphical.weather.gov/xml/SOAP_server/ndfdXMLserver.php?wsdl";
ws = createObject("webservice", soapURL);
zipLatLong = ws.LatLonListZipCode("10001");
res = getSOAPResponse(ws);
writeDump(res);
```
