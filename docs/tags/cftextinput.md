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
| required | boolean | No |  | Yes: the user must enter or change text
 No |
| range | string | No |  | Minimum-maximum value range, delimited by a comma.
 Valid only for numeric data. |
| validate | string | No |  | date: verifies format mm/dd/yy.
 eurodate: verifies date format dd/mm/yyyy.
 time: verifies time format hh:mm:ss.
 float: verifies floating point format.
 integer: verifies integer format.
 telephone: verifies telephone format ###-###-####. The
 separator can be a blank. Area code and exchange must
 begin with digit 1 - 9.
 zipcode: verifies, in U.S. formats only, 5- or 9-digit
 format #####-####. The separator can be a blank.
 creditcard: strips blanks and dashes; verifies number using
 mod10 algorithm. Number must have 13-16 digits.
 social_security_number: verifies format ###-##-####. The
 separator can be a blank.
 regular_expression: matches input against pattern
 attribute. |
| onvalidate | string | No |  | Custom JavaScript function to validate user input. The form
 object, input object, and input object value are passed to
 routine, which should return True if validation succeeds,
 False otherwise. The validate attribute is ignored. |
| pattern | string | No |  | JavaScript regular expression pattern to validate input.
 Omit leading and trailing slashes |
| message | string | No |  | Message text to display if validation fails |
| onerror | string | No |  | Custom JavaScript function to execute if validation fails. |
| size | numeric | No |  | Number of characters displayed before horizontal scroll
 bar displays. |
| font | string | No | arial | Font name for data in tree control. |
| fontsize | numeric | No |  | Font size for text in tree control, in points. |
| italic | boolean | No | NO | Yes: displays tree control text in italics
 No: it does not |
| bold | boolean | No | NO | Yes: displays tree control text in bold
 No: it does not |
| height | numeric | No |  | Tree control height, in pixels. |
| width | numeric | No |  | Tree control width, in pixels. |
| vspace | numeric | No |  | Vertical margin above and below tree control, in pixels. |
| hspace | numeric | No |  | Horizontal spacing to left and right of tree control, in pixels. |
| align | string | No |  | * top
 * left
 * bottom
 * baseline
 * texttop
 * absbottom
 * middle
 * absmiddle
 * right |
| bgcolor | string | No |  | Background color of control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. |
| textcolor | string | No |  | Text color for control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. |
| maxlength | numeric | No |  | The maximum length of text entered. |
| notsupported | string | No | <b>Browser must support Java to <br>view ColdFusion Java Applets!</b> | Text to display if a page that contains a Java applet-based
 cfform control is opened by a browser that does not
 support Java or has Java support disabled. |
| label | string | No |  | Label for text input |
