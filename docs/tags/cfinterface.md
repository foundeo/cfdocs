# cfinterface

Defines an interface that consists of a set of signatures for functions.
 The interface does not include the full function definitions;
 instead, you implement the functions in a CFC.
 The interfaces that you define by using this tag can make up
 the structure of a reusable application framework.

### Syntax

```html
<cfinterface>
```

### Script Syntax

```javascript
interface displayname="My Interface" { 
 numeric function myFunction(required string myArgument); 
 }
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| displayName | string | No |  | A value to be displayed when using introspection to
 show a descriptive name for the interface. (optional) |
| extends | string | No |  | A comma delimited list of one or more interfaces that this interface extends.
 Any CFC that implements an interface must also implement all the functions
 in the interfaces specified by this property.
 If an interface extends another interface, and the child interface specifies
 a function with the same name as one in the parent interface, both functions
 must have the same attributes; otherwise ColdFusion generates an error. (optional) |
| hint | string | No |  | Text to be displayed when using introspection to show information about the interface.
 The hint attribute value follows the syntax line in the function description. (optional) |

## Script Syntax

```html
interface displayname="My Interface" { 
 numeric function myFunction(required string myArgument); 
 }
```

## Tag Syntax

```html
<cfinterface displayname="My Interface"> 
 <cfunction name="myFunction" returntype="numeric"> 
 <cfargument required="true" type="string" name="myArgument"> 
 </cffunction> 
 </cfinterface>
```
