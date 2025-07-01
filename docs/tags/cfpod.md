# cfpod

Creates a pod, an area of the browser window or layout 
 area with an optional title bar and body that contains 
 display elements.

### Syntax

```html
<cfpod>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfpod();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| bodyStyle | string | No |  | A CSS style specification for the pod body. As a 
 general rule, use this attribute to set color and 
 font styles. Using this attribute to set the height 
 and width, for example, can result in distorted output. |
| headerStyle | string | No |  | A CSS style specification for the pod header. As a 
 general rule, use this attribute to set color and font 
 styles. Using this attribute to set the height and width, 
 for example, can result in distorted output. |
| height | numeric | No |  | Height if the control, including the title bar and borders, 
 in pixels. Default is 100. |
| name | string | No |  | Name of the pod control. |
| onBindError | string | No |  | The name of a JavaScript function to execute if 
 evaluating a bind expression results in an error. 
 The function must take two attributes: an HTTP 
 status code and a message. If you omit this 
 attribute, and have specified a global error handler 
 (by using the ColdFusion.setGlobalErrorHandler 
 function), it displays the error message; otherwise 
 a default error pop-up displays. |
| overflow | string | No | auto | Specifies how to display child content whose size 
 would cause the control to overflow the pod 
 boundaries. Note: In Internet Explorer, pods 
 with the visible setting expand to fit the size of 
 the contents, rather than having the contents extend 
 beyond the layout area. |
| source | string | No |  | A URL that returns the pod contents. ColdFusion 
 uses standard page path resolution rules. If you 
 specify this attribute and the cfpod tag has a body, 
 ColdFusion ignores the body contents. You can use a a 
 bind expression with dependencies in this 
 attribute; for more information see the Usage section. 
 Note: If a CFML page specified in this attribute contains 
 tags that use AJAX features, such as cfform, cfgrid, 
 and cfwindow, you must use a cfajaximport tag on the 
 page with the cfpod tag. 
 For more information, see cfajaximport. |
| title | string | No |  | Text to display in the pod's title bar. You can use 
 HTML mark up to control the title appearance, of 
 example to show the text in red italic font. 
 If you omit this attribute, the pod does not 
 have a title bar. |
| width | numeric | No |  | Width if the control, including the title bar and 
 borders, in pixels. Default is 500. |
