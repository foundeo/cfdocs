# cfinput

Used within the cfform tag, to place radio buttons, check boxes, or text boxes on a form. Provides input validation for the specified control type.

### Syntax

```html
<cfinput name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfinput(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name for form input element. |
| autosuggest | string | No |  | Specifies entry completion suggestions to display as the user types into a text input. The user can select a suggestion to complete the text entry. The valid value can be either of the following:
- A string consisting of the suggestion values separated by the delimiter specified by the delimiter attribute.
- A bind expression that gets the suggestion values based on the current input text.

Valid only for cfinput type="text". |
| autoSuggestBindDelay | numeric | No |  | The minimum time between autosuggest bind expression invocations, in seconds. Use this attribute to limit the number of requests that are sent to the server when a user types.

Valid only for cfinput type="text" |
| autoSuggestMinLength | numeric | No |  | The minimum number of characters required in the text box before invoking a bind expression to return items for suggestion.

Valid only for cfinput type="text". |
| bindAttribute | string | No |  | Specifies the HTML tag attribute whose value is set by the bind attribute. You can only specify attributes in the browser‚ HTML DOM tree, not ColdFusion-specific attributes. Ignored if there is no bind attribute.

Valid only for cfinput type="text". |
| bindonload | boolean | No | NO | A Boolean value that specifies whether to execute the bind attribute expression when first loading the form. Ignored if there is no bind attribute.

Valid only for cfinput type="text". |
| id | string | No |  | ID for form input element. |
| type | string | No | text | The input control type to create.

Notes:
- file is not supported in Flash.
- image: clickable button with an image.
- datefield: Flash only; date entry field with an expanding calendar for selecting dates. |
| label | string | No |  | Label to put next to the control on a Flash or XML form. Not used for button, hidden, image, reset, or submit types. |
| style | string | No |  | In HTML or XML format, ColdFusion passes the style attribute to the browser or XML. In Flash format, must be a style specification in CSS format. |
| class | string | No |  | Stylesheet class for form input element. |
| required | boolean | No | NO |  |
| mask | string | No |  | A mask pattern that controls the character pattern that users can enter, or that the form sends to ColdFusion. In HTML and Flash for type=text use:
- A = [A-Za-z]
- X = [A-Za-z0-9]
- 9 = [0-9]
- ? = Any character
- all other = the literal character

In Flash for type=datefield use:
- D = day; can use 0-2 mask characters.
- M = month; can use 0-4 mask characters.
- Y = year; can use 0, 2, or 4 characters.
- E = day in week; can use 0-4 characters. |
| validate | string | No |  | date: verifies format mm/dd/yy.
eurodate: verifies date format dd/mm/yyyy.
time: verifies time format hh:mm:ss.
float: verifies floating point format.
integer: verifies integer format.
telephone: verifies telephone format ###-###-####. The separator can be a blank. Area code and exchange must begin with digit 1 - 9.
zipcode: verifies, in U.S. formats only, 5- or 9-digit format #####-####. The separator can be a blank.
creditcard: strips blanks and dashes; verifies number using mod10 algorithm. Number must have 13-16 digits.
social_security_number: verifies format ###-##-####. The separator can be a blank.
submitonce (ACF-only): Prevents double form submission. Valid Types: Submit and Image only. Valid Formats: HTML/XML.
regular_expression: matches input against pattern attribute. |
| validateat | string | No | onSubmit | How to do the validation; one or more of the following: onSubmit, onServer or onBlur. onBlur and onSubmit are identical in Flash forms. For multiple values, use a comma-delimited list. Not supported on Railo/Lucee. |
| message | string | No |  | Message text to display if validation fails |
| range | string | No |  | Minimum and maximum value range, separated by a comma. If type = "text" or "password", this applies only to numeric data. |
| maxlength | numeric | No |  | Maximum length of text entered, if type=text or password. |
| pattern | string | No |  | JavaScript regular expression pattern to validate input. ColdFusion uses this attribute only if you specify regex in the validate attribute. Omit leading and trailing slashes. |
| onvalidate | string | No |  | Custom JavaScript function to validate user input. The form object, input object, and input object values are passed to the routine, which should return True if validation succeeds, and False otherwise. If used, the validate attribute is ignored. |
| onerror | string | No |  | Custom JavaScript function to execute if validation fails. |
| size | numeric | No |  | Size of input control. Ignored, if type=radio or checkbox. If specified in a Flash form, ColdFusion sets the control width pixel value to 10 times the specified size and ignores the width attribute. |
| value | string | No |  | HTML: corresponds to the HTML value attribute. Its use depends on control type.
Flash: optional; specifies text for button type inputs: button, submit, and image. |
| bind | string | No |  | A Flash bind expression that populates the field with information from other form fields. |
| checked | boolean | No | NO | Selects a control. No value is required. Applies if type=radio or checkbox. |
| disabled | boolean | No | NO | Disables user input, making the control read-only.
HTML: Passes the attribute directly to the HTML. To enable the input you need to omit this attribute. It does not respect the attribute-value.
Flash: Disables the input when the attribute is set without attribute-value or when the attribute-value is an positive boolean value. |
| src | string | No |  | Applies to Flash button, reset, submit, and image types, and the HTML image type. URL of an image to use on the button. Flash does not support GIF images. |
| onkeyup | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run when the user releases a keyboard key in the control. |
| onkeydown | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) ActionScript to run when the user presses a keyboard key in the control. |
| onmouseup | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run when the user presses a mouse button in the control. |
| onmousedown | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run when the user releases a mouse button in the control. |
| onchange | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run when the control changes due to user action. In Flash, applies to datefield, password, and text types only. |
| onclick | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run when the user clicks the control. In Flash, applies to button, checkbox, image, radio, reset, and submit types only. |
| daynames | string | No | S,M,T,W,Th,F,S | A comma-delimited list that sets the names of the weekdays displayed in the calendar. Sunday is the first day and the rest of the weekday names follow in the normal order. You can use one-/two-letter, three-letter abbreviation or the full name. |
| firstdayofweek | numeric | No | 0 | Integer in the range 0-6 specifying the first day of the week in the calendar, 0 indicates Sunday, 6 indicates Saturday. |
| monthnames | string | No |  | A comma-delimited list of the month names that are displayed at the top of the calendar. You can use three-letter-abbreviation or full month name |
| enabled | boolean | No | YES | Flash only: Boolean value specifying whether the control is enabled. A disabled control appears in light gray. The inverse of the disabled attribute. |
| visible | boolean | No | YES | Flash only: Boolean value specifying whether to show the control. Space that would be occupied by an invisible control is blank. |
| tooltip | string | No |  | Flash only: Text to display when the mouse pointer hovers over the control. |
| width | numeric | No |  | Applies to most Flash types, HTML image type on some browsers. The width of the control, in pixels. For Flash forms, ColdFusion ignores this attribute if you also specify a size attribute value. |
| height | numeric | No |  | Applies to most Flash types, HTML image type on some browsers. The height of the control, in pixels. The displayed height might be less than the specified size. |
| passthrough | string | No |  | This attribute is deprecated. Passes arbitrary attribute-value pairs to the HTML code that is generated for the tag. You can use either of the following formats:
- passthrough="title=""myTitle"""
- passthrough='title="mytitle"' |
| delimiter | string | No |  | The delimiter to use to separate entries in a static autosuggest list. This attribute is meaningful only if the autosuggest attribute is a string of delimited values. |
| maxresultsdisplayed | numeric | No |  | The maximum number suggestions to display in the autosuggest list.
Valid only for cfinput type="text". |
| onbinderror | string | No |  | The name of a JavaScript function to execute if evaluating a bind expression, including an autosuggest bind expression, results in an error. The function must take two attributes: an HTTP status code and a message. |
| showautosuggestloadingicon | boolean | No | YES | A Boolean value that specifies whether to display an animated icon when loading an autosuggest value for a text input. |
| sourcefortooltip | string | No |  | The URL of a page to display as a tool tip. The page can include HTML markup to control the format, and the tip can include images.
If you specify this attribute, an animated icon appears with the text "Loading..." while the tip is being loaded. |
| typeahead | boolean | No | NO | A Boolean value that specifies whether the autosuggest feature should automatically complete a user's entry with the first result in the suggestion list.
Valid only for cfinput type="text". |
| matchContains | boolean | No | NO | true, match returned "contains" the query string. Default is false so that only results that "start with" the query string are returned. |
