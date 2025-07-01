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
| bodyStyle | string | No |  | A CSS style specification for the window body. As a 
 general rule, use this attribute to set color and 
 font styles. Using this attribute to set the height 
 and width, for example, can result in distorted output. |
| center | boolean | No | NO | A Boolean value specifying whether to center
 the window over the browser window.
If true, ColdFusion ignores the x and y
 attribute values.
If false, and you do not specify x and y
 attributes, ColdFusion centers the window. |
| closable | boolean | No | YES | A Boolean value specifying whether the user can 
 close the window. If true, the window has an X 
 close icon. |
| draggable | boolean | No | YES | A Boolean value specifying whether the user can 
 drag the window. To drag the window, click the 
 mouse on the title bar and hold the button down 
 while dragging. If the window does not have a 
 title, users cannot drag it. |
| headerStyle | string | No |  | A CSS style specification for the window header. 
 As a general rule, use this attribute to set 
 color and font styles. Using this attribute to 
 set the height and width, for example, can 
 result in distorted output. |
| height | numeric | No |  | Height of the window in pixels. If you specify 
 a value greater than the available space, the 
 window occupies the available space and the 
 resize handles do not appear. Default is 300. |
| initShow | boolean | No | NO | A Boolean value specifying whether to display 
 the window when the containing page first displays. 
 If this value is false, use the 
 ColdFusion.Layout.show JavaScript function to 
 display the window. |
| minHeight | numeric | No |  | The minimum height, in pixels, to which users 
 can resize the window. Default is 0. |
| minWidth | numeric | No |  | The minimum width, in pixels, to which users 
 can resize the window. Default is 0. |
| modal | boolean | No | NO | A Boolean value specifying whether the window 
 is modal, that is, whether the user can interact 
 with the main window while this window displays. 
 If true, the user cannot interact with the main 
 window. |
| name | string | No |  | The name of the window. Must be unique on the 
 pages. This attribute is required to interact 
 with the window, including to dynamically show 
 or hide it. |
| onBindError | string | No |  | The name of a JavaScript function to execute 
 if evaluating a bind expression results in an 
 error. The function must take two attributes: 
 an HTTP status code and a message. 
 If you omit this attribute, and have specified 
 a global error handler 
 (by using the ColdFusion.setGlobalErrorHandlerfunction ), 
 it displays the error message; otherwise a default 
 error pop-up displays. |
| resizable | boolean | No | NO | A Boolean value specifying whether the user can 
 resize the window. |
| source | string | No |  | A URL that returns the window contents. This 
 attribute can use URL parameters to pass data 
 to the page. ColdFusion uses standard page path 
 resolution rules to locate the page. You can use 
 a bind expressions in this attribute; for more 
 information see the Usage section. Note: If a 
 CFML page specified in this attribute contains 
 tags that use AJAX features, such as cfform, 
 cfgrid, and cfpod, you must use a cfajaximport 
 tag on the page with the cfwindow tag. 
 For more information, see cfajaximport |
| title | string | No |  | Text to display in the window's title bar. You 
 can use HTML mark up to control the title 
 appearance, of example to show the text in 
 red italic font. If you omit this attribute, 
 the window does not have a title bar. |
| width | numeric | No |  | Width of the control, including the title bar 
 and borders, in pixels. Default is 500. |
| x | numeric | No |  | The X (horizontal) coordinate of the upper-left 
 corner of the window, relative to the browser 
 window. ColdFusion ignores this attribute if 
 the center attribute value is true and if you 
 do not set the y attribute value. |
| y | numeric | No |  | The Y (vertical) coordinate of the upper-left 
 corner of the window, relative to the browser 
 window. ColdFusion ignores this attribute if 
 the center attribute value is true and if you 
 do not set the x attribute value. |
| refreshonshow | boolean | No | NO | * true Refresh the contents of the window by running the source bind expression whenever the window shows (for example, by calling the ColdFusion.Window.show JavaScript function), in addition to when bind events occur
 * false Refresh the window only when the bind expression is triggered by its bind event. |
| destroyOnClose | boolean | No |  | When destroyOnClose is true, destroys the window when it is closed. By default, this is is false and the window is hidden when it is closed. |
