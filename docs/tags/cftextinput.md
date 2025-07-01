# cftextinput

Puts a single-line text entry box in a cfform tag and controls its display characteristics.

### Syntax

```html
<cftextinput name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cftextinput(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name for the cftextinput control. |
| value | string | No |  | Initial value to display in text control. |
| required | boolean | No |  | Yes: the user must enter or change text<br /> No |
| range | string | No |  | Minimum-maximum value range, delimited by a comma.<br /> Valid only for numeric data. |
| validate | string | No |  | date: verifies format mm/dd/yy.<br /> eurodate: verifies date format dd/mm/yyyy.<br /> time: verifies time format hh:mm:ss.<br /> float: verifies floating point format.<br /> integer: verifies integer format.<br /> telephone: verifies telephone format ###-###-####. The<br /> separator can be a blank. Area code and exchange must<br /> begin with digit 1 - 9.<br /> zipcode: verifies, in U.S. formats only, 5- or 9-digit<br /> format #####-####. The separator can be a blank.<br /> creditcard: strips blanks and dashes; verifies number using<br /> mod10 algorithm. Number must have 13-16 digits.<br /> social_security_number: verifies format ###-##-####. The<br /> separator can be a blank.<br /> regular_expression: matches input against pattern<br /> attribute. |
| onvalidate | string | No |  | Custom JavaScript function to validate user input. The form<br /> object, input object, and input object value are passed to<br /> routine, which should return True if validation succeeds,<br /> False otherwise. The validate attribute is ignored. |
| pattern | string | No |  | JavaScript regular expression pattern to validate input.<br /> Omit leading and trailing slashes |
| message | string | No |  | Message text to display if validation fails |
| onerror | string | No |  | Custom JavaScript function to execute if validation fails. |
| size | numeric | No |  | Number of characters displayed before horizontal scroll<br /> bar displays. |
| font | string | No | arial | Font name for data in tree control. |
| fontsize | numeric | No |  | Font size for text in tree control, in points. |
| italic | boolean | No | NO | Yes: displays tree control text in italics<br /> No: it does not |
| bold | boolean | No | NO | Yes: displays tree control text in bold<br /> No: it does not |
| height | numeric | No |  | Tree control height, in pixels. |
| width | numeric | No |  | Tree control width, in pixels. |
| vspace | numeric | No |  | Vertical margin above and below tree control, in pixels. |
| hspace | numeric | No |  | Horizontal spacing to left and right of tree control, in pixels. |
| align | string | No |  | * top<br /> * left<br /> * bottom<br /> * baseline<br /> * texttop<br /> * absbottom<br /> * middle<br /> * absmiddle<br /> * right |
| bgcolor | string | No |  | Background color of control. For a hex value, use the form:<br /> textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash<br /> signs or none. |
| textcolor | string | No |  | Text color for control. For a hex value, use the form:<br /> textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash<br /> signs or none. |
| maxlength | numeric | No |  | The maximum length of text entered. |
| notsupported | string | No | <b>Browser must support Java to <br>view ColdFusion Java Applets!</b> | Text to display if a page that contains a Java applet-based<br /> cfform control is opened by a browser that does not<br /> support Java or has Java support disabled. |
| label | string | No |  | Label for text input |
