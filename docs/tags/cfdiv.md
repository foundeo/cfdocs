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
| id | string | No |  | The HTML ID attribute value to assign to the <br /> generated container tag. |  |
| onBindError | string | No |  | The name of a JavaScript function to execute if <br /> evaluating a bind expression results in an error. The <br /> function must take two attributes: an HTTP status <br /> code and a message. <br /> If you omit this attribute, and have specified a <br /> global error handler (by using the <br /> ColdFusion.setGlobalErrorHandler function), it <br /> displays the error message; otherwise a default <br /> error pop-up displays. |  |
| bind | string | No |  | A bind expression that returns the container <br /> contents. <br /> Note: If a CFML page specified in this attribute <br /> contains tags that use AJAX features, such as <br /> cfform, cfgrid, and cfwindow, you must use a <br /> tag on the page with the tag. <br /> For more information, see cfajaximport. |  |
| tagName | string | No | div | The HTML container tag to create. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfdiv.md|span |
| bindonload | boolean | No | YES | * true: executes the bind attribute expression when first loading the tag.<br /> * false: does not execute the bind attribute expression until the first bound event .<br />To use this attribute, you must also specify a bind attribute. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfdiv.md|YES |
