# cfapplet

This tag references a registered custom Java applet. To
 register a Java applet, in the CFML Administrator, click
 Extensions/Java Applets.
 Using this tag within a cfform tag is optional. If you use it
 within cfform, and the method attribute is defined in the
 Administrator, the return value is incorporated into the
 form.

### Syntax

```html
<cfapplet appletsource="" name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfapplet(appletsource="", name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| appletsource | string | Yes |  | Name of registered applet |
| name | string | Yes |  | Form variable name for applet |
| height | numeric | No |  | Control's height, in pixels. |
| width | numeric | No |  | Control's width, in pixels. |
| vspace | numeric | No |  | Vertical margin above and below control, in pixels. |
| hspace | numeric | No |  | Horizontal spacing to left and right of control, in pixels. |
| align | string | No |  | Alignment |
| notsupported | string | No | <b>Browser must support Java to <br>view ColdFusion Java Applets!</b> | Text to display if a page that contains a Java applet-based<br /> cfform control is opened by a browser that does not<br /> support Java or has Java support disabled. |
