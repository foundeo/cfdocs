# cfmessagebox

Creates MessageBox

### Syntax

```html
<cfmessagebox type="alert" message="" name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfmessagebox(type="alert", message="", name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| labelcancel | string | No |  | The text to put on the cancel button of a prompt message box. |
| callbackHandler | string | No |  | callback function which will be called when any ok|no|cancel button is clicked |
| labelok | string | No |  | The text to put on an alert button and prompt message box OK button. |
| title | string | No |  | The title for the message box. |
| type | string | Yes |  | Type of action to be performed |
| message | string | Yes |  | Message text which will be displayed |
| labelno | string | No |  | The text to put on the button used for a negative response in a confirm message box. |
| labelyes | string | No |  | The text to put on the button used for a positive response in a confirm message box. |
| multiline | boolean | No | NO | Applies for prompt action only. Signify whether prompt is textarea(multiliner) or oneliner(textField)Default=false |
| name | string | Yes |  | Name of the messageBox |
| bodyStyle | string | No |  | A CSS style specification for the body of the message box. As a general rule, use this attribute to set color and font styles |
| buttonType | string | No |  | Applies to the control type - confirm
The buttons to display on the message box |
| icon | string | No |  | Specifies the following CSS classes
error: Provides the error icon. You can use this icon when displaying error messages.
info: Provides the info icon. You can use this icon when displaying any information.
question: Provides the question icon. You can use this icon in a confirmation message box that prompts a user response.
warning: Provides the warning icon. You can use this icon when displaying a warning message |
| modal | boolean | No |  | A Boolean value that specifies if the message box should be a modal window |
| width | numeric | No |  | Width of the message box in pixels. |
| x | numeric | No |  | The X (horizontal) coordinate of the upper-left corner of the message box .
ColdFusion ignores this attribute if you do not set the y attribute. |
| y | numeric | No |  | The Y (vertical) coordinate of the upper-left corner of the message box.
ColdFusion ignores this attribute if you do not set the x attribute. |
