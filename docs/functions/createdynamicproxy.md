# createDynamicProxy

Creates a dynamic proxy of the ColdFusion component that is passed to a Java library. Dynamic proxy lets you pass ColdFusion components to Java objects. Java objects can work with the ColdFusion components seamlessly as if they are native Java objects.

```javascript
createDynamicProxy(cfc, interfaces)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| cfc | any | Yes |  | Fully qualified name of the ColdFusion component or a CFC instance. |
| interfaces | array | Yes |  | An array of Java interfaces for which you want to create the dynamic proxy. |

## Tag Syntax

```javascript
<cfset instance=new cfc.helloWorld()> 
 <cfset dynInstnace = createDynamicProxy(instance, ["MyInterface"])> 
 <cfset x = createObject("java","InvokeHelloProxy").init(dynInstnace)> 
 <cfset y = x.invokeHello()> 
 <cfoutput>#y#</cfoutput>
```
