# cfobject

Creates a CFML object, of a specified type.

 The tag syntax depends on the object type. Some types use the
 type attribute; others do not.

### Syntax

```html
<cfobject name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfobject(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | No |  | The object type. You can omit this attribute or specify component. ColdFusion automatically sets the type to component. |
| action | string | No |  | * create: instantiates a COM object (typically, a DLL) before invoking methods or properties.
 * connect: connects to a COM object (typically, an EXE) running on server. |
| class | string | No |  | Component ProgID for the object to invoke. When using Java stubs to connect to the COM object, the class must be the ProgID of the COM object. |
| name | string | Yes |  | name for the instantiated component. |
| context | string | No |  | * inproc
 * local
 * remote

In Windows, if not specified, uses Registry setting. |
| server | string | No |  | Server name, using Universal Naming Convention (UNC) or Domain Name Serve (DNS) convention, in one of these forms:

 * \\lanserver
 * lanserver
 * http://www.servername.com
 * www.servername.com
 * 127.0.0.1 |
| component | string | No |  | Name of component to instantiate. |
| locale | string | No |  | Sets arguments for a call to init_orb. Use this attribute only for VisiBroker ORBs. It is available on C++, Version 3.2. The value must be in the form:
locale = " -ORBagentAddr 199.99.129.33 -ORBagentPort 19000"

Each type-value pair must start with a hyphen. |
| webservice | string | No |  | One of the following:

 * The absolute URL of the web service.
 * The name (string) assigned in the ColdFusion Administrator to the web service. |
| password | string | No |  | The password to use to access the web service. If the webservice attribute specifies a web service name configured in the ColdFusion Administrator, overrides any password specified in the Administrator entry. |
| secure | boolean | No | NO | Whether to secure communications with the .NET-side agent. If true, ColdFusion uses SSL to communicate with .NET. |
| protocol | string | No | tcp | Protocol to use to use for communication between ColdFusion and .NET. Must be one of the following values:
 * http: Use HTTP/SOAP communication protocol. This option is slower than tcp, but might be required for access through a firewall.
 * tcp: Use binary TCP/IP protocol. This method is more efficient than HTTP. |
| proxyserver | string | No |  | The proxy server required to access the web service URL. |
| refreshwsdl | boolean | No | NO | * yes: reloads the WSDL file and regenerates the artifacts used to consume the web service
 * no |
| wsportname | string | No |  | The port name for the web service. This value is case-sensitive and corresponds to the port element's name attribute under the service element. |
| wsdl2javaargs | string | No |  | A string that contains a space-delimited list of arguments to pass to the WSDL2Java tool that generates Java stubs for the web services. |
| proxyport | string | No |  | The port to use on the proxy server. |
| port | numeric | No |  | Port number at which the .NET-side agent is listening. |
| proxypassword | string | No |  | The user's password on the proxy server. |
| assembly | string | No |  | For local .NET assemblies, the absolute path or paths to the assembly or assemblies (EXE or DLL files) from which to access the .NET class and its supporting classes.
For remote .NET assemblies, you must specify the absolute path or paths of the local proxy JAR file or files that represent the assemblies. |
| username | string | No |  | The user name to use to access the web service. If the webservice attribute specifies a web service configured name in the ColdFusion Administrator, overrides any user name specified in the Administrator entry. |
| proxyuser | string | No |  | The user ID to send to the proxy server. |

## The simple component file

Here created the simple component with user defined function name as multiply.

```html
<cfcomponent>
<cffunction name="multiply" access="public" returnType="numeric">
<cfargument name="FirstNum" type="numeric">
<cfargument name="SecondNum" type="numeric">
<cfretrun arguments.FirstNum * arguments.SecondNum>
</cffunction>
</cfcomponent>
```

## The simple cfobject example

Calling the above multiply function by using cfobject tag based code.

```html
<cfobject name="multiplyObj" type="component" component="multiply">
<cfoutput>
#multiplyObj.multiply(1,2)#
</cfoutput>
```

### Expected Result: 2

## The simple (cfobject) example

Calling the above multiply function by using cfobject script based code.

```html
<cfscript>
cfobject(name="multiplyNum" type="component" component="multiply"){
writeOutput(multiplyNum.multiply(6,7));
}
</cfscript>
```

### Expected Result: 42
