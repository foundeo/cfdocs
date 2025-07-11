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
| bodyStyle | string | No |  | A CSS style specification for the pod body. As a <br /> general rule, use this attribute to set color and <br /> font styles. Using this attribute to set the height <br /> and width, for example, can result in distorted output. |
| headerStyle | string | No |  | A CSS style specification for the pod header. As a <br /> general rule, use this attribute to set color and font <br /> styles. Using this attribute to set the height and width, <br /> for example, can result in distorted output. |
| height | numeric | No |  | Height if the control, including the title bar and borders, <br /> in pixels. Default is 100. |
| name | string | No |  | Name of the pod control. |
| onBindError | string | No |  | The name of a JavaScript function to execute if <br /> evaluating a bind expression results in an error. <br /> The function must take two attributes: an HTTP <br /> status code and a message. If you omit this <br /> attribute, and have specified a global error handler <br /> (by using the ColdFusion.setGlobalErrorHandler <br /> function), it displays the error message; otherwise <br /> a default error pop-up displays. |
| overflow | string | No | auto | Specifies how to display child content whose size <br /> would cause the control to overflow the pod <br /> boundaries. Note: In Internet Explorer, pods <br /> with the visible setting expand to fit the size of <br /> the contents, rather than having the contents extend <br /> beyond the layout area. |
| source | string | No |  | A URL that returns the pod contents. ColdFusion <br /> uses standard page path resolution rules. If you <br /> specify this attribute and the cfpod tag has a body, <br /> ColdFusion ignores the body contents. You can use a a <br /> bind expression with dependencies in this <br /> attribute; for more information see the Usage section. <br /> Note: If a CFML page specified in this attribute contains <br /> tags that use AJAX features, such as cfform, cfgrid, <br /> and cfwindow, you must use a cfajaximport tag on the <br /> page with the cfpod tag. <br /> For more information, see cfajaximport. |
| title | string | No |  | Text to display in the pod's title bar. You can use <br /> HTML mark up to control the title appearance, of <br /> example to show the text in red italic font. <br /> If you omit this attribute, the pod does not <br /> have a title bar. |
| width | numeric | No |  | Width if the control, including the title bar and <br /> borders, in pixels. Default is 500. |
