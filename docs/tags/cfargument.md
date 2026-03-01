# cfargument

Creates a parameter definition within a component definition. Defines a function argument. Used within a cffunction tag.

### Syntax

```html
<cfargument name="">
```

### Script Syntax

```javascript
myFunction(required any myArgument){}
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | An argument name. |
| type | string | No |  | a type name; data type of the argument. |
| required | boolean | No | no | Whether the parameter is required to execute the component method. |
| default | string | No |  | If no argument is passed, specifies a default argument value. |
| displayname | string | No |  | Meaningful only for CFC method parameters. A value to be displayed when using introspection to show information about the CFC. |
| hint | string | No |  | Meaningful only for CFC method parameters. Text to be displayed when using introspection to show information about the CFC. The hint attribute value follows the displayname attribute value in the parameter description line. This attribute can be useful for describing the purpose of the parameter. |

## Script Syntax

For Script syntax the argument is inside the ()

```html
public boolean function myFunction(required any myArgument) {
    // Some function bits
    return true;
}
```

## Tag Syntax

For Tag syntax the argument is its own tag

```html
<cffunction access="public" returntype="boolean" name="myFunction">
    <cfargument required="true" type="any" name="myArgument">
    <!--- Some function bits --->
    <cfreturn true>
</cffunction>
```
