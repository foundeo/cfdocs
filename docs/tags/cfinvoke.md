# cfinvoke

Does either of the following:

 * Invokes a component method from within a CFML page or
 component.
 * Invokes a web service.
 Different attribute combinations make some attributes required
 at sometimes and not at others.

### Syntax

```html
<cfinvoke method="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfinvoke(method="");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| component | string | No |  | String or component object; a reference to a component, or
 component to instantiate. |  |
| method | string | Yes |  | Name of a method. For a web service, the name of an
 operation. |  |
| returnvariable | variableName | No |  | Name of a variable for the invocation result. |  |
| argumentcollection | string | No |  | Name of a structure; associative array of arguments to pass
 to the method. |  |
| username | string | No |  | Overrides username specified in Administrator > Web Services |  |
| password | string | No |  | Overrides password specified in Administrator > Web Services |  |
| webservice | string | No |  | The URL of the WSDL file for the web service. |  |
| timeout | numeric | No |  | The timeout for the web service request, in seconds |  |
| proxyserver | string | No |  | The proxy server required to access the webservice URL. |  |
| proxyport | numeric | No |  | The port to use on the proxy server. |  |
| proxyuser | string | No |  | The user ID to send to the proxy server. |  |
| proxypassword | string | No |  | The user's password on the proxy server. |  |
| serviceport | string | No |  | CF7+ The port name for the web service. This value is
 case-sensitive and corresponds to the port element's
 name attribute under the service element. Specify this
 attribute if the web service contains multiple ports.
 Default: first port found in the WSDL. |  |
| refreshwsdl | boolean | No | NO | CF8+ * yes: reload the WSDL file and regenerate the artifacts used to consume the web service
 * no |  |
| wsdl2javaargs | string | No |  | CF8+ A string that contains a space-delimited list of arguments to pass to the WSDL2Java tool that generates Java stubs for the web services. |  |
| wsVersion | string | No |  | CF10+ Used to specify the version of Apache Axis (web service engine used by CF) to use. Specify 1 for Axis Version 1 or 2 for Axis 2. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfinvoke.md|2 |

## Invoke a SOAP webservice using cfinvoke

Calls a remote web service to perform an addition, uses cfinvokeargument to pass the arguments to the method.

```html
<cfinvoke webservice="http://soaptest.parasoft.com/calculator.wsdl" method="add" returnvariable="answer">
    <cfinvokeargument name="x" value="2">
    <cfinvokeargument name="y" value="3">
</cfinvoke>
<cfoutput>#answer#</cfoutput>
```

### Expected Result: 5.0
