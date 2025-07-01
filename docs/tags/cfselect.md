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
| bind | string | No |  | A bind expression that dynamically sets an attribute <br /> of the control. |
| bindAttribute | string | No |  | Specifies the HTML tag attribute whose value is set <br /> by the bind attribute. You can only specify attributes <br /> in the browser‚ HTML DOM tree, not ColdFusion- <br /> specific attributes. <br /> Ignored if there is no bind attribute. |
| bindOnLoad | boolean | No | NO | A Boolean value that specifies whether to execute <br /> the bind attribute expression when first loading the <br /> form. Ignored if there is no bind attribute. |
| editable | boolean | No | NO | Boolean value specifying whether you can edit the <br /> contents of the control. |
| label | string | No |  | Label to put next to the control on a Flash or XML-format form. |
| style | string | No |  | In HTML or XML format forms, ColdFusion passes the<br /> style attribute to the browser or XML.<br /> In Flash format, must be a style specification in CSS<br /> format, with the same syntax and contents as used in<br /> Macromedia Flex for the corresponding Flash element.<br /> Post alpha we will document specifics. |
| sourceForTooltip | string | No |  | The URL of a page to display as a tool tip. The page <br /> can include CFML and HTML markup to control the <br /> tip contents and format, and the tip can include <br /> images. <br /> If you specify this attribute, an animated icon <br /> appears with the text "Loading..." while the tip is <br /> being loaded. |
| size | numeric | No | 1 | Number of entries to display at one time. The default, 1,<br /> displays a drop-down list. Any other value displays a list<br /> box with size number of entries visible at one time. |
| required | boolean | No | NO | If true a list element must be selected when form is submitted.<br /> Note: This attribute has no effect if you omit the size<br /> attribute or set it to 1 because the browser always submits<br /> the displayed item. You can work around this issue format<br /> forms by having an initial option tag with value=" " (note the<br /> space character between the quotation marks).<br /> Default: false |
| message | string | No |  | Message to display if required="true" and no selection is made. |
| onerror | string | No |  | Custom JavaScript function to execute if validation fails. |
| multiple | boolean | No | NO | - true: allow selecting multiple elements in drop-down list<br /> - false: don't allow selecting multiple elements<br /> Default: false |
| query | string | No |  | Name of query to populate drop-down list. |
| value | string | No |  | Query column to use for the value of each list element.<br /> Used with query attribute. |
| display | string | No |  | Query column to use for the display label of each list<br /> element. Used with query attribute. |
| group | string | No |  | Query column to use to group the items in the drop-down<br /> list into a two-level hierarchical list. |
| queryposition | string | No | above | If you populate the options list with a query and use HTML<br /> option child tags to specify additional entries, determines<br /> the location of the items from the query relative to the items<br /> from the option tags:<br /> - above: Put the query items above the options items.<br /> - below: Put the query items below the options items.<br /> Default: above |
| selected | string | No |  | One or more option values to preselect in the selection list.<br /> To specify multiple values, use a comma-delimited list. This<br /> attribute applies only if selection list items are generated<br /> from a query. The cfform preservedata attribute value can<br /> override this value. |
| onkeyup | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run<br /> when the user releases a keyboard key in the control. |
| onkeydown | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash)<br /> ActionScript to run when the user depresses a keyboard<br /> key in the control. |
| onmouseup | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run<br /> when the user presses a mouse button in the control. |
| onmousedown | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run<br /> when the user releases a mouse button in the control. |
| onchange | string | No |  | JavaScript (HTML/XML) or ActionScript (Flash) to run<br /> when the control changes due to user action. |
| onclick | string | No |  | JavaScript to run when the user clicks the control. |
| enabled | boolean | No | YES | Flash only: Boolean value specifying whether to show the control.<br /> Space that would be occupied by an invisible control is<br /> blank.<br /> Default: true |
| visible | boolean | No | YES | Flash only: Boolean value specifying whether to show the control.<br /> Space that would be occupied by an invisible control is<br /> blank.<br /> Default: true |
| tooltip | string | No |  | Flash only: Text to display when the mouse pointer hovers over the control. |
| height | numeric | No |  | The height of the control, in pixels. |
| width | numeric | No |  | The width of the control, in pixels. |
| passthrough | string | No |  | This attribute is deprecated.<br /> <br /> Passes arbitrary attribute-value pairs to the HTML code<br /> that is generated for the tag. You can use either of the<br /> following formats:<br /> <br /> passthrough="title=""myTitle"""<br /> passthrough='title="mytitle"' |
| onbinderror | string | No |  | The name of a JavaScript function to execute if evaluating a bind expression results in an error. The function must take two attributes: an HTTP status code and a message. |
