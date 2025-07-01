# cfslider

Puts a slider control, for selecting a numeric value from a
 range, in a ColdFusion form. The slider moves over the slider
 groove. As the user moves the slider, the current value
 displays. Used within a cfform tag.
 Not supported with Flash forms.

### Syntax

```html
<cfslider name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfslider(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | Name for cfslider control. |  |
| label | string | No |  | Label to display with control.
 For example, "Volume" This displays: "Volume %value%"
 To reference the value, use "%value%". If %% is omitted,
 slider value displays directly after label. |  |
| range | string | No | 0,100 | Numeric slider range values.
 Separate values with a comma. |  |
| scale | numeric | No |  | Unsigned integer. Defines slider scale, within range.
 For example: if range = "0,1000" and scale = "100",
 the display values are: 0, 100, 200, 300, ...
 Signed and unsigned integers in ColdFusion are in the
 range -2,147,483,648 to 2,147,483,647. |  |
| value | string | No |  | Starting slider setting. Must be within the range values. |  |
| onvalidate | string | No |  | Custom JavaScript function to validate user input; in this
 case, a change to the default slider value. Specify only
 the function name. |  |
| message | string | No |  | Message text to appear if validation fails. |  |
| height | numeric | No | 40 | Slider control height, in pixels. |  |
| width | numeric | No |  | Slider control width, in pixels. |  |
| vspace | numeric | No |  | Vertical spacing above and below slider, in pixels. |  |
| hspace | numeric | No |  | Horizontal spacing to left and right of slider, in pixels. |  |
| align | string | No |  | Alignment of slider:
 * top
 * left
 * bottom
 * baseline
 * texttop
 * absbottom
 * middle
 * absmiddle
 * right | /Users/garethedwards/development/github/cfdocs/docs/tags/cfslider.md|right |
| lookandfeel | string | No | windows | - motif: renders slider in Motif style
 - windows: renders slider in Windows style
 - metal: renders slider in Java Swing style
 If platform does not support style option, tag defaults to
 platform default style.
 Default: windows | /Users/garethedwards/development/github/cfdocs/docs/tags/cfslider.md|metal |
| vertical | boolean | No | NO | Yes: Renders slider in browser vertically. You must set
 width and height attributes; ColdFusion does not
 automatically swap width and height values.
 No: Renders slider horizontally. |  |
| bgcolor | string | No |  | Background color of control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfslider.md|yellow |
| textcolor | string | No |  | Text color for control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfslider.md|yellow |
| font | string | No | arial | Font name for data in tree control. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfslider.md|arialunicodeMS |
| fontsize | numeric | No |  | Font size for text in tree control, in points. |  |
| italic | boolean | No | NO | Yes: displays tree control text in italics
 No: it does not |  |
| bold | boolean | No | NO | Yes: displays tree control text in bold
 No: it does not |  |
| notsupported | string | No | <b>Browser must support Java to <br>view ColdFusion Java Applets!</b> | Text to display if a page that contains a Java applet-based
 cfform control is opened by a browser that does not
 support Java or has Java support disabled. |  |
| clickToChange | boolean | No |  | Whether clicking the slider changes the value of the pointer: |  |
| max | numeric | No |  | Maximum value for the slider. |  |
| onChange | string | No |  | Custom JavaScript function to run when slider value changes.
Specify only the function name. |  |
| min | numeric | No |  | Minimum value for the slider. |  |
| onDrag | string | No |  | Custom JavaScript function to run when you drag the slider.
Specify only the function name. |  |
| onError | string | No |  | Custom JavaScript function to run if validation fails.
Specify only the function name. |  |
| increment | string | No |  | The unit increment value for a snapping slider. |  |
| tip | boolean | No |  | Whether the data value has to display as data tips |  |
| format | string | No |  | Specifies if the format is:html/applet | /Users/garethedwards/development/github/cfdocs/docs/tags/cfslider.md|applet |
