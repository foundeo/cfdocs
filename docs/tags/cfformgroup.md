# cfformgroup

Creates a container control for multiple form controls.
 Used in the cfform tag body of Macromedia Flash and XML
 forms. Ignored in HTML forms.

### Syntax

```html
<cfformgroup type="horizontal">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfformgroup(type="horizontal");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes |  | For XML forms can be any XForms group type defined in the XSLT.
 For Flash see the value options and docs for more information. |
| query | query | No |  | The query to use with the repeater. Flash creates an
 instance of each of the cfformgroup tag's child tags for
 each row in the query. You can use the bind attribute in
 the child tags to use data from the query row for the
 instance. |
| startrow | numeric | No | 0 | Used only for the repeater type; ignored otherwise.
 Specifies the row number of the first row of the query to
 use in the Flash form repeater. This attribute is zerobased:
 the first row is row 0, not row 1 (as in most ColdFusion tags).
 Default: 0 |
| maxrows | numeric | No |  | Used only for for the repeater type; ignored otherwise.
 Specifies the maximum number of query rows to use in
 the Flash form repeater. If the query has more rows than
 the sum of the startrow attribute and this value, the
 repeater does not use the remaining rows. |
| label | string | No |  | Label to apply to the form group. In Flash, does the following:
 - For a page or panel form group, determines the label to
 put on the corresponding accordion pleat, the tabnavigator tab,
 or the panel title bar. For a Flash horizontal or vertical form
 group, specifies the label to put to the left of the group.
 - Ignored in Flash for repeater, hbox, hdividedbox, vbox,
 vdividedbox, tile, accordion, and tabnavigator types. |
| id | string | No |  | ID for form input element. |
| style | string | No |  | Flash: A Flash style specification in CSS format.
 XML: An inline CSS style specification. |
| selectedindex | numeric | No |  | Used only for accordion and tabnavigator types; ignored
 otherwise. Specifies the page control to display as open,
 where 0 (not 1) specifies the first page control defined in
 the group. |
| width | numeric | No |  | Width of the group container, in pixels. If you omit this
 attribute, Flash automatically sizes the container width.
 Ignored for Flash repeater type. |
| height | numeric | No |  | Height of the group container, in pixels. If you omit this
 attribute, Flash automatically sizes the container height.
 Ignored for Flash repeater type. |
| enabled | boolean | No | YES | Flash only: Boolean value specifying whether the controls in the
 form group are enabled. Disabled controls appear in
 light gray.
 Default: true |
| visible | boolean | No | YES | Flash only: Boolean value specifying whether the controls in the
 form group are visible. If the controls are invisible, the
 space that would be occupied by visible controls is blank.
 Default: true |
| onchange | string | No |  | Flash only: tabnavigator and accordion types only: ActionScript
 expression or expressions to execute when a new tab or
 accordion page is selected. Note: The onChange event
 occurs when the form first displays. |
| tooltip | string | No |  | Flash only: Text to display when the mouse pointer hovers in the
 form group area. If a control in the form group also
 specifies a tooltip, Flash displays the control's tolltip
 when the mouse pointer hovers over the control. |
