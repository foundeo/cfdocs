# cftextarea

Puts a multiline text entry box in a cfform tag and
 controls its display characteristics.

### Syntax

```html
<cftextarea name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cftextarea(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name of the cftextinput control. |
| label | string | No |  | Label to put beside the control on a form. |
| style | string | No |  | In HTML or XML format forms, ColdFusion passes the
 style attribute to the browser or XML.
 In Flash format forms, must be a style specification in
 CSS format, with the same syntax and contents as used
 in Macromedia Flex for the corresponding Flash element. |
| required | boolean | No | NO | - true: the field must contain text.
 - false: the field can be empty.
 Default: false |
| html | boolean | No | NO | Boolean value that specifies whether the text area contains HTML.
 Default: false |
| validate | string | No |  | The type or types of validation to do. Available validation
 types and algorithms depend on the format. For details,
 see the Usage section of the cfinput tag reference. |
| validateat | string | No | onSubmit | How to do the validation. For Flash format forms, onSubmit
 and onBlur are identical; validation is done on submit.
 For multiple values, use a comma-delimited list.
 For details, see the Usage section of the cfinput tag
 reference.
 Default: onSubmit |
| message | string | No |  | Message text to display if validation fails. |
| range | string | No |  | Minimum and maximum numeric allowed values. ColdFusion
 uses this attribute only if you specify range in the
 validate attribute.
 If you specify a single number or a single number a
 followed by a comma, it is treated as a minimum, with no
 maximum. If you specify a comma followed by a number,
 the maximum is set to the specified number, with no
 minimum. |
| maxlength | numeric | No |  | The maximum length of text that can be entered.
 ColdFusion uses this attribute only if you specify
 maxlength in the validate attribute. |
| pattern | string | No |  | JavaScript regular expression pattern to validate input.
 Omit leading and trailing slashes. ColdFusion uses this
 attribute only if you specify regex in the validate attribute. |
| onvalidate | string | No |  | Custom JavaScript function to validate user input. The
 JavaScript DOM form object, input object, and input
 object value are passed to routine, which should return
 True if validation succeeds, False otherwise. If you specify
 this attribute, ColdFusion ignores the validate attribute. |
| onerror | string | No |  | Custom JavaScript function to execute if validation fails. |
| disabled | boolean | No | NO | Disables user input, making the control read-only. To
 disable input, specify disabled without an attribute, or
 disabled="true". To enable input, omit the attribute or
 specify disabled="false".
 Default: false |
| value | string | No |  | Initial value to display in text control. You can specify an
 initial value as an attribute or in the tag body, but not in
 both places. If you specify the value as an attribute, you
 must put the closing cftextarea tag immediately after the
 opening cftextarea tag, with no spaces or line feeds between,
 or place a closing slash at the end of the opening cftextarea
 tag. For example:
 <cftextarea name="description" value="Enter a description." /> |
| bind | string | No |  | Flash only: A Flex bind expression that populates the field with
 information from other form fields. |
| onkeyup | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run
 when the user releases a keyboard key in the control. |
| onkeydown | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash)
 ActionScript to run when the user presses a keyboard
 key in the control. |
| onmouseup | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run
 when the user presses a mouse button in the control. |
| onmousedown | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run
 when the user releases a mouse button in the control. |
| onchange | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run
 when the control changes due to user action. |
| onclick | string | No |  | JavaScript (HTML/XML) to run when the user clicks the
 control. Not supported for Flash forms. |
| enabled | boolean | No | YES | Flash only: Boolean value specifying whether the control is enabled.
 A disabled control appears in light gray. The inverse of the
 disabled attribute.
 Default: true |
| visible | boolean | No | YES | Flash only: Boolean value specifying whether to
 show the control. Space that would be occupied by an
 invisible control is blank.
 Default: true |
| tooltip | string | No |  | Flash only: Text to display when the mouse pointer hovers
 over the control. |
| height | numeric | No |  | Flash only: The height of the control, in pixels. |
| width | numeric | No |  | Flash only: The width of the control, in pixels. |
| basepath | string | No |  | Path to the directory that contains the rich text editor. The editor configuration files are at the top level of this directory. |
| bindattribute | string | No |  | Specifies the HTML tag attribute whose value is set by the bind attribute. You can only specify attributes in the browser's HTML DOM tree, not ColdFusion-specific attributes. |
| bindonload | boolean | No | NO | A Boolean value that specifies whether to execute the bind attribute expression when first loading the form. |
| fontformats | string | No |  | A comma separated list of the font names to display in the rich text editor Formats selector. The formats specify the HTML tags to apply to typed or selected text. |
| fontnames | string | No |  | A comma separated list of the font names to display in the rich text editor Font selector. |
| fontsizes | string | No |  | A comma separated list of the font sizes to display in the rich text editor Size selector. List entries must have the format of numeric font size/descriptive text. |
| onbinderror | string | No |  | The name of a JavaScript function to execute if evaluating a bind expression results in an error. The function must take two attributes: an HTTP status code and a message. |
| richtext | boolean | No | NO | A Boolean value specifying whether this control is a rich text editor with tool bars to control the text formatting. |
| skin | string | No | default | Specifies the skin to be used for the rich text editor. By default, the valid values are Default, silver, and office2003. 
You can also create custom skins that you can then specify in this attribute. |
| wrap | string | No |  | * hard: wraps long lines, and sends the carriage return to the server.
 * off: does not wrap long lines.
 * physical: wraps long lines, and transmits the text at all wrap points.
 * soft: wraps long lines, but does not send the carriage return to the server.
 * virtual: wraps long lines, but does not send the carriage return to the server. |
| sourcefortooltip | string | No |  | The URL of a page to display as a tool tip. 
The page can include CFML and HTML to control the contents and format, and the tip can include images.
If you specify this attribute, an animated icon appears with the text "Loading..." while the tip is being loaded. |
| stylesxml | string | No |  | The path of the file that defines the styles in the rich text editor Styles selector. 
Relative paths start at the directory that contains the fckeditor.html file, normally cf_webRoot/CFIDE/scripts/ajax/FCKeditor/editor. |
| templatesxml | string | No |  | The pathof the file that defines the templates that are displayed when you click the rich text editor Templates icon. |
| toolbar | string | No |  | Specifies the rich text editor toolbar. By default, the valid values for this attribute are: Default, a complete set of controls, and Basic, a minimal configuration. |
| toolbaronfocus | boolean | No |  | A Boolean value that specifies whether the rich text editor toolbar expands and displays its controls only when the rich text editor has the focus. |
| secureUpload | boolean | No |  | If true, enables secure upload using FCKeditor.
For secure upload, you must have
sessionManagement set to yes. Secure upload does not work if sessionManagement is set to false. |
