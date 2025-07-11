# cfinvokeargument

Passes the name and value of an argument to a component method or a web service method. This tag is used inside of the cfinvoke tag.

### Syntax

```html
<cfinvokeargument name="" value="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfinvokeargument(name="", value="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The argument name |
| value | string | Yes |  | The argument value |
| omit | boolean | No | NO | Enables you to omit a parameter when invoking a web service.<br /> It is an error to specify omit="true" if the cfinvoke<br /> webservice attribute is not specified.<br /> - true: omit this parameter when invoking a web service.<br /> - false: do not omit this parameter when invoking a web service. |

## Invoke a SOAP webservice and passing arguments using cfinvokeargument

Calls a remote web service to perform an addition, uses cfinvokeargument to pass the arguments to the method.

```html
<cfinvoke webservice="http://soaptest.parasoft.com/calculator.wsdl" method="add" returnvariable="answer">
    <cfinvokeargument name="x" value="2">
    <cfinvokeargument name="y" value="3">
</cfinvoke>
<cfoutput>#answer#</cfoutput>
```

### Expected Result: 5.0
