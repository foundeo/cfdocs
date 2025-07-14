# cfform

Builds a form with CFML custom control tags; these provide
 more functionality than standard HTML form input elements.

### Syntax

```html
<cfform>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfform();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | No |  | In HTML format, if you omit this attribute and specify<br /> an id attribute, ColdFusion does not include a name<br /> attribute in the HTML sent to the browser; this<br /> behavior lets you use the cfform tag to create<br /> XHTML-compliant forms. If you omit the name<br /> attribute and the id attribute, ColdFusion generates<br /> a name of the form CFForm_n where n is a number<br /> that assigned serially to the forms on a page. |
| action | string | No |  | Name of CFML page to execute when the form is<br /> submitted for processing. |
| method | string | No | post | The method the browser uses to send the form data<br /> to the server:<br /> - post: Send the data using the HTTP post method,<br /> This method sends the data in a separate message<br /> to the server.<br /> - get: Send the data using the HTTP get method,<br /> which puts the form field contents in the URL<br /> query string. |
| format | string | No | html | - `HTML`: Generate an HTML form and send it to the client. <br /> - `Flash`: DEPRECATED in CF11+ Generate a Flash form and send it to the client. All controls are in Flash format.<br /> - `XML`: DEPRECATED in CF11+ Generate XForms-compliant XML and save<br /> the results in a variable specified by the name<br /> attribute. By default, ColdFusion also applies an XSL skin and displays the result. |
| skin | string | No |  | DEPRECATED in CF11+<br /> `Flash`: Use a Macromedia halo color to stylize the output.<br /> `XML`: Specifies whether to apply an XSL skin and<br /> display the resulting HTML to the client. Can be any<br /> of the following:<br /> - ColdFusion MX skin name: Apply the specified skin.<br /> - XSL file name: Apply the skin located in the specified path.<br /> - "none": Do not apply an XSL skin. You must use XForms XML then.<br /> - (omitted) or "default": Use the ColdFusion MX default skin. |
| preservedata | boolean | No | NO | When the cfform action attribute posts back to the same<br /> page as the form, this determines whether to override the<br /> control values with the submitted values.<br /> - false: values specified in the control tag attributes are used<br /> - true: corresponding submitted values are used |
| onload | string | No |  | JavaScript to execute when the form loads. |
| onsubmit | string | No |  | JavaScript or Actionscript function to execute to<br /> preprocess data before form is submitted. If any<br /> child tags specify onSubmit field validation, ColdFusion<br /> does the validation before executing this JavaScript. |
| codebase | string | No | /CFIDE/classes/cf-j2re-win.cab | URL of downloadable JRE plug-in (for Internet Explorer only).<br /> Default: /CFIDE/classes/cf-j2re-win.cab |
| archive | string | No | /CFIDE/classes/cfapplets.jar | URL of downloadable Java classes for CFML controls.<br /> Default: /CFIDE/classes/cfapplets.jar |
| height | string | No | 100% | The height of the form. Use a number to specify<br /> pixels, In Flash, you can use a percentage value to<br /> specify a percentage of the available width. The<br /> displayed height might be less than the specified size. |
| width | string | No | 100% | The width of the form. Use a number to specify<br /> pixels, In Flash, you can use a percentage value to<br /> specify a percentage of the available width. |
| onerror | string | No |  | Applies only for onSubmit or onBlur validation; has<br /> no effect for onServer validation. An ActionScript<br /> expression or expressions to execute if the user<br /> submits a form with one or more validation errors. |
| wmode | string | No | window | Specifies how the Flash form appears relative to<br /> other displayable content that occupies the same<br /> space on an HTML page.<br /> - window: The Flash form is the topmost layer on the<br /> page and obscures anything that would share the<br /> space, such as drop-down dynamic HTML lists.<br /> - transparent: The Flash form honors the z-index of<br /> DHTML so you can float items above it. If the Flash<br /> form is above any item, transparent regions in the<br /> form show the content that is below it.<br /> - opaque: The Flash form honors the z-index of<br /> DHTML so you can float items above it. If the Flash<br /> form is above any item, it blocks any content that is<br /> below it.<br /> Default is: window. |
| accessible | boolean | No | NO | Specifies whether to include support screen readers<br /> in the Flash form. Screen reader support adds<br /> approximately 80KB to the SWF file sent to the<br /> client. Default is: false. |
| preloader | boolean | No | YES | Specifies whether to display a progress bar when<br /> loading the Flash form. Default is: true. |
| timeout | numeric | No |  | Integer number of seconds for which to keep the<br /> form data in the Flash cache on the server. A value of<br /> 0 prevents the data from being cached. |
| scriptsrc | string | No |  | Specifies the URL, relative to the web root, of the<br /> directory that contains the cfform.js file with the<br /> client-side JavaScript used by this tag and its child<br /> tags. For XML format forms, this directory is also the<br /> default directory for XSLT skins. |
| style | string | No |  | Styles to apply to the form. In HTML or XML format,<br /> ColdFusion passes the style attribute to the browser<br /> or XML. In Flash format, must be a style specification<br /> in CSS format. |
| onreset | string | No |  | JavaScript to execute when the user clicks a reset button. |
| id | string | No |  | HTML id passed through to <FORM>. |
| target | string | No |  | Target window or frame passed through to <FORM>. |
| passthrough | string | No |  | DEPRECATED in CF7+ REMOVED in CF11+ Passes arbitrary attribute-value pairs to the HTML code<br /> that is generated for the tag. You can use either of the<br /> following formats:<br /> <br /> passthrough="title=""myTitle"""<br /> passthrough='title="mytitle"' |
| onsuccess | string | No |  | Applies only to forms inside cfdiv, cflayout, cfpod, or cfwindow controls. The name of a JavaScript function that will run when an asynchronous form submission succeeds. |
