# cfwindow

Creates a pop-up window in the browser. Does not create a 
 separate browser pop-up instance.

### Syntax

```html
<cfwindow>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfwindow();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| bodyStyle | string | No |  | A CSS style specification for the window body. As a <br /> general rule, use this attribute to set color and <br /> font styles. Using this attribute to set the height <br /> and width, for example, can result in distorted output. |
| center | boolean | No | NO | A Boolean value specifying whether to center<br /> the window over the browser window.<br />If true, ColdFusion ignores the x and y<br /> attribute values.<br />If false, and you do not specify x and y<br /> attributes, ColdFusion centers the window. |
| closable | boolean | No | YES | A Boolean value specifying whether the user can <br /> close the window. If true, the window has an X <br /> close icon. |
| draggable | boolean | No | YES | A Boolean value specifying whether the user can <br /> drag the window. To drag the window, click the <br /> mouse on the title bar and hold the button down <br /> while dragging. If the window does not have a <br /> title, users cannot drag it. |
| headerStyle | string | No |  | A CSS style specification for the window header. <br /> As a general rule, use this attribute to set <br /> color and font styles. Using this attribute to <br /> set the height and width, for example, can <br /> result in distorted output. |
| height | numeric | No |  | Height of the window in pixels. If you specify <br /> a value greater than the available space, the <br /> window occupies the available space and the <br /> resize handles do not appear. Default is 300. |
| initShow | boolean | No | NO | A Boolean value specifying whether to display <br /> the window when the containing page first displays. <br /> If this value is false, use the <br /> ColdFusion.Layout.show JavaScript function to <br /> display the window. |
| minHeight | numeric | No |  | The minimum height, in pixels, to which users <br /> can resize the window. Default is 0. |
| minWidth | numeric | No |  | The minimum width, in pixels, to which users <br /> can resize the window. Default is 0. |
| modal | boolean | No | NO | A Boolean value specifying whether the window <br /> is modal, that is, whether the user can interact <br /> with the main window while this window displays. <br /> If true, the user cannot interact with the main <br /> window. |
| name | string | No |  | The name of the window. Must be unique on the <br /> pages. This attribute is required to interact <br /> with the window, including to dynamically show <br /> or hide it. |
| onBindError | string | No |  | The name of a JavaScript function to execute <br /> if evaluating a bind expression results in an <br /> error. The function must take two attributes: <br /> an HTTP status code and a message. <br /> If you omit this attribute, and have specified <br /> a global error handler <br /> (by using the ColdFusion.setGlobalErrorHandlerfunction ), <br /> it displays the error message; otherwise a default <br /> error pop-up displays. |
| resizable | boolean | No | NO | A Boolean value specifying whether the user can <br /> resize the window. |
| source | string | No |  | A URL that returns the window contents. This <br /> attribute can use URL parameters to pass data <br /> to the page. ColdFusion uses standard page path <br /> resolution rules to locate the page. You can use <br /> a bind expressions in this attribute; for more <br /> information see the Usage section. Note: If a <br /> CFML page specified in this attribute contains <br /> tags that use AJAX features, such as cfform, <br /> cfgrid, and cfpod, you must use a cfajaximport <br /> tag on the page with the cfwindow tag. <br /> For more information, see cfajaximport |
| title | string | No |  | Text to display in the window's title bar. You <br /> can use HTML mark up to control the title <br /> appearance, of example to show the text in <br /> red italic font. If you omit this attribute, <br /> the window does not have a title bar. |
| width | numeric | No |  | Width of the control, including the title bar <br /> and borders, in pixels. Default is 500. |
| x | numeric | No |  | The X (horizontal) coordinate of the upper-left <br /> corner of the window, relative to the browser <br /> window. ColdFusion ignores this attribute if <br /> the center attribute value is true and if you <br /> do not set the y attribute value. |
| y | numeric | No |  | The Y (vertical) coordinate of the upper-left <br /> corner of the window, relative to the browser <br /> window. ColdFusion ignores this attribute if <br /> the center attribute value is true and if you <br /> do not set the x attribute value. |
| refreshonshow | boolean | No | NO | * true Refresh the contents of the window by running the source bind expression whenever the window shows (for example, by calling the ColdFusion.Window.show JavaScript function), in addition to when bind events occur<br /> * false Refresh the window only when the bind expression is triggered by its bind event. |
| destroyOnClose | boolean | No |  | When destroyOnClose is true, destroys the window when it is closed. By default, this is is false and the window is hidden when it is closed. |
