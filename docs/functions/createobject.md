# createObject

The createObject function takes different arguments depending on the value of the type argument:

 createObject('component', cfcName)
 createObject('java', class)
 createObject('java', class, bundleName, bundleVersion) (Lucee only)
 createObject('webservice', urltowsdl, [, portname])
 createObject('.NET', class, assembly [, server, port, protocol, secure])
 createObject('com', class, context, serverName)

```javascript
createObject(type, className)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes |  | The type of object |
| className | string | Yes |  |  |
| context | string | Yes |  |  |
| locale | string | Yes |  |  |
| servername | string | Yes |  |  |
| component_name | string | Yes |  |  |
| urltowsdl | string | Yes |  | WSDL file URL; location of web service |
| portname | string | No |  | The port name for the web service. This value is case-sensitive
 and corresponds to the port element's name attribute under the
 service element.
 Specify this parameter if the web service contains multiple ports.
 If no port name is specified, ColdFusion uses the first port found
 in the WSDL. |
| bundleName | string | No |  | Bundle where the object has to be located |
| bundleVersion | string | No |  | Specific version to |

## Create a CFC / Component Instance

createObject Component

```javascript
<cfscript>
 tellTimeCFC=createObject("component","appResources.components.tellTime"); 
 tellTimeCFC.getLocalTime();
 </cfscript>
```

## Create a SOAP WebService Instance

createObject WebService

```javascript
<cfscript> 
 ws = createObject("webservice", "http://www.xmethods.net/sd/2001/TemperatureService.wsdl"); 
 xlatstring = ws.getTemp(zipcode = "55987"); 
 writeOutput("The temperature at 55987 is " & xlatstring); 
 </cfscript>
```

## Create a java class with specified bundle and version

createObject filesystem

```javascript
POIFSFileSystem=createObject("java","org.apache.poi.poifs.filesystem.POIFSFileSystem","apache.poi","3.11.0");
```
