# cfselect

Constructs a drop-down list box form control. Used within a
 cfform tag.

 You can populate the list from a query, or by using the HTML
 option tag.

### Syntax

```html
<cfselect name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfselect(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name of the select form element |
| id | string | No |  | ID for form input element. |
| bind | string | No |  | A bind expression that dynamically sets an attribute 
 of the control. |
| bindAttribute | string | No |  | Specifies the HTML tag attribute whose value is set 
 by the bind attribute. You can only specify attributes 
 in the browser‚ HTML DOM tree, not ColdFusion- 
 specific attributes. 
 Ignored if there is no bind attribute. |
| bindOnLoad | boolean | No | NO | A Boolean value that specifies whether to execute 
 the bind attribute expression when first loading the 
 form. Ignored if there is no bind attribute. |
| editable | boolean | No | NO | Boolean value specifying whether you can edit the 
 contents of the control. |
| label | string | No |  | Label to put next to the control on a Flash or XML-format form. |
| style | string | No |  | In HTML or XML format forms, ColdFusion passes the
 style attribute to the browser or XML.
 In Flash format, must be a style specification in CSS
 format, with the same syntax and contents as used in
 Macromedia Flex for the corresponding Flash element.
 Post alpha we will document specifics. |
| sourceForTooltip | string | No |  | The URL of a page to display as a tool tip. The page 
 can include CFML and HTML markup to control the 
 tip contents and format, and the tip can include 
 images. 
 If you specify this attribute, an animated icon 
 appears with the text "Loading..." while the tip is 
 being loaded. |
| size | numeric | No | 1 | Number of entries to display at one time. The default, 1,
 displays a drop-down list. Any other value displays a list
 box with size number of entries visible at one time. |
| required | boolean | No | NO | If true a list element must be selected when form is submitted.
 Note: This attribute has no effect if you omit the size
 attribute or set it to 1 because the browser always submits
 the displayed item. You can work around this issue format
 forms by having an initial option tag with value=" " (note the
 space character between the quotation marks).
 Default: false |
| message | string | No |  | Message to display if required="true" and no selection is made. |
| onerror | string | No |  | Custom JavaScript function to execute if validation fails. |
| multiple | boolean | No | NO | - true: allow selecting multiple elements in drop-down list
 - false: don't allow selecting multiple elements
 Default: false |
| query | string | No |  | Name of query to populate drop-down list. |
| value | string | No |  | Query column to use for the value of each list element.
 Used with query attribute. |
| display | string | No |  | Query column to use for the display label of each list
 element. Used with query attribute. |
| group | string | No |  | Query column to use to group the items in the drop-down
 list into a two-level hierarchical list. |
| queryposition | string | No | above | If you populate the options list with a query and use HTML
 option child tags to specify additional entries, determines
 the location of the items from the query relative to the items
 from the option tags:
 - above: Put the query items above the options items.
 - below: Put the query items below the options items.
 Default: above |
| selected | string | No |  | One or more option values to preselect in the selection list.
 To specify multiple values, use a comma-delimited list. This
 attribute applies only if selection list items are generated
 from a query. The cfform preservedata attribute value can
 override this value. |
| onkeyup | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run
 when the user releases a keyboard key in the control. |
| onkeydown | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash)
 ActionScript to run when the user depresses a keyboard
 key in the control. |
| onmouseup | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run
 when the user presses a mouse button in the control. |
| onmousedown | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run
 when the user releases a mouse button in the control. |
| onchange | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run
 when the control changes due to user action. |
| onclick | string | No |  | JavaScript to run when the user clicks the control. |
| enabled | boolean | No | YES | Flash only: Boolean value specifying whether to show the control.
 Space that would be occupied by an invisible control is
 blank.
 Default: true |
| visible | boolean | No | YES | Flash only: Boolean value specifying whether to show the control.
 Space that would be occupied by an invisible control is
 blank.
 Default: true |
| tooltip | string | No |  | Flash only: Text to display when the mouse pointer hovers over the control. |
| height | numeric | No |  | The height of the control, in pixels. |
| width | numeric | No |  | The width of the control, in pixels. |
| passthrough | string | No |  | This attribute is deprecated.
 
 Passes arbitrary attribute-value pairs to the HTML code
 that is generated for the tag. You can use either of the
 following formats:
 
 passthrough="title=""myTitle"""
 passthrough='title="mytitle"' |
| onbinderror | string | No |  | The name of a JavaScript function to execute if evaluating a bind expression results in an error. The function must take two attributes: an HTTP status code and a message. |
