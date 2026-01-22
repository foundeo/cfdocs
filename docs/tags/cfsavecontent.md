# cfsavecontent

Saves the generated content of the cfsavecontent tag, including the results of evaluating expressions and executing custom tags, in the specified variable.

### Syntax

```html
<cfsavecontent variable="">
```

### Script Syntax

```javascript
savecontent variable="" {};
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| variable | string | Yes |  | Name of the variable in which to save the generated content of the tag. |

## Script Syntax

```html
savecontent variable="myContent" {
 writeOutput("Somecontent.");
}
```

## Tag Syntax

```html
<cfsavecontent variable="myContent">
<cfoutput>Some content.</cfoutput>
</cfsavecontent>
```
