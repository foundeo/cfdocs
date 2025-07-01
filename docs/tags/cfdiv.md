# cfdiv

Creates an HTML tag with specified contents and lets you to use bind expressions to 
 dynamically control the tag contents.

### Syntax

```html
<cfdiv>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfdiv();
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| id | string | No |  | The HTML ID attribute value to assign to the 
 generated container tag. |  |
| onBindError | string | No |  | The name of a JavaScript function to execute if 
 evaluating a bind expression results in an error. The 
 function must take two attributes: an HTTP status 
 code and a message. 
 If you omit this attribute, and have specified a 
 global error handler (by using the 
 ColdFusion.setGlobalErrorHandler function), it 
 displays the error message; otherwise a default 
 error pop-up displays. |  |
| bind | string | No |  | A bind expression that returns the container 
 contents. 
 Note: If a CFML page specified in this attribute 
 contains tags that use AJAX features, such as 
 cfform, cfgrid, and cfwindow, you must use a 
 tag on the page with the tag. 
 For more information, see cfajaximport. |  |
| tagName | string | No | div | The HTML container tag to create. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfdiv.md|span |
| bindonload | boolean | No | YES | * true: executes the bind attribute expression when first loading the tag.
 * false: does not execute the bind attribute expression until the first bound event .
To use this attribute, you must also specify a bind attribute. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfdiv.md|YES |
