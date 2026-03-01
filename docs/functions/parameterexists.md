# parameterExists

Determines whether a parameter exists. ColdFusion does not evaluate the argument.

```javascript
parameterExists(name)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| parameter | string | Yes |  | A syntactically valid parameter name. |

## Tag Syntax

```javascript
<cfif parameterExists(FORM.myString)> 
 <P>Using parameterExists, we have shown that the FORM field 'myString' now exists. 
 </cfif>
```
