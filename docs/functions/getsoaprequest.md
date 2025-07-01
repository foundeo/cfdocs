# getSOAPRequest

Returns an XML object that contains the entire SOAP request. Usually called from within a web service CFC.

```javascript
getSOAPRequest(webservice)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| webservice | any | No |  | A webservice object as returned from the cfobject tag or the createObject function |

## Create a SOAP call and retrieve the request

Create a SOAP webservice to call, then we can use getSOAPRequest() to view the request

```javascript
soapURL = "https://graphical.weather.gov/xml/SOAP_server/ndfdXMLserver.php?wsdl";
ws = createObject("webservice", soapURL);
zipLatLong = ws.LatLonListZipCode("10001");
req = getSOAPRequest(ws);
writeDump(req);
```
