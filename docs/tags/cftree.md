# cftree

Inserts a tree control in a form. Validates user selections.
 Used within a cftree tag block. You can use a CFML query
 to supply data to the tree.

### Syntax

```html
<cftree name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cftree(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name for tree control. |
| format | string | No | applet | - applet: displays the tree using a Java applet in the
 browser,
 - flash: displays the tree using a Flash control
 - object: returns the tree as a ColdFusion structure with the
 name specified by the name attribute, For details of the
 structure contents, see "object format", below.
 - xml: Generates an XMLrepresentation of the tree.
 In XML format forms, includes the generated XML in the
 form. and puts the XML in a string variable with the name
 specified by the name attribute.
 Default: applet |
| required | boolean | No | NO | - true: user must select an item in tree control
 - false: they do not
 Default: false |
| delimiter | string | No | \\ | Character to separate elements in form variable path.
 Default: \\ |
| completepath | boolean | No | NO | - true: start the Form.treename.path variable with the root
 of the tree path when cftree is submitted.
 - false: omit the root level from the Form.treename.path
 variable; the value starts with the first child node in the
 tree.
 For the preserveData attribute of cfform to work with the
 tree, you must set this attribute to Yes.
 For tree items populated by a query, if you use the
 cftreeitem queryasroot attribute to specify a root name,
 that value is returned. If you do not specify a root name,
 ColdFusion returns the query name.
 Default: false |
| appendkey | boolean | No | YES | - true: if you use cftreeitem href attributes, ColdFusion
 appends a CFTREEITEMKEY query string variable with
 the value of the selected tree item to the cfform action URL.
 - false: do not append the tree item value to the URL.
 Default: true |
| highlighthref | boolean | No | YES | - true: highlights as a link the displayed value for any
 cftreeitem tag that specifies a href attribute.
 - false: disables highlighting.
 Default: true |
| onvalidate | string | No |  | JavaScript function to validate user input. The form object,
 input object, and input object value are passed to the
 specified routine, which should return True if validation
 succeeds; False, otherwise. |
| message | string | No |  | Message to display if validation fails. |
| onerror | string | No |  | JavaScript function to execute if validation fails. |
| lookandfeel | string | No | windows | - motif: renders slider in Motif style
 - windows: renders slider in Windows style
 - metal: renders slider in Java Swing style
 If platform does not support style option, tag defaults to
 platform default style.
 Default: windows |
| font | string | No | arial | Font name for data in tree control. |
| fontsize | numeric | No |  | Font size for text in tree control, in points. |
| italic | boolean | No | NO | - true: displays tree control text in italics
 - false: it does not
 Default: false |
| bold | boolean | No | NO | - true: displays tree control text in bold
 - false: it does not
 Default: false |
| height | numeric | No | 320 | Tree control height, in pixels. If you omit this attribute in
 Flash format, Flash automatically sizes the tree.
 Default: 320 (applet only) |
| width | numeric | No | 200 | Tree control width, in pixels. If you omit this attribute in
 Flash format, Flash automatically sizes the tree.
 Default: 200 (applet only) |
| vspace | numeric | No |  | Vertical margin above and below tree control, in pixels. |
| hspace | numeric | No |  | Horizontal spacing to left and right of tree control, in pixels. |
| align | string | No |  | Alignment of the tree control applet object. |
| border | boolean | No | YES | - true: display a border around the tree control.
 - false: no border
 Default: true |
| hscroll | boolean | No | YES | - true: permits horizontal scrolling
 - false: no horizontal scrolling
 Default: true |
| vscroll | boolean | No | YES | - true: permits vertical scrolling
 - false: no vertical scrolling
 Default: true |
| style | string | No |  | Flash only: Must be a style specification in CSS format, with the same
 syntax and contents as used in Macromedia Flex for the
 corresponding Flash element. |
| enabled | boolean | No | YES | Flash only: Boolean value specifying whether the
 control is enabled. A disabled control appears in light gray.
 Default: true |
| visible | boolean | No | YES | Flash only: Boolean value specifying whether to
 show the control. Space that would be occupied by an
 invisible control is blank.
 Default: true |
| tooltip | string | No |  | Flash only: Text to display when the mouse pointer
 hovers over the control. |
| onchange | string | No |  | Flash only: ActionScript to run when the control changes due to user action.
 If you specify an onChange event handler, the Form scope of
 the ColdFusion action page does not automatically get
 information about selected items. The ActionScript onChange
 event handler must handle all changes and selections. |
| onblur | string | No |  | Flash only: ActionScript that runs when the calendar loses focus.
 (Added in 7.0.1) |
| onfocus | string | No |  | Flash only: ActionScript that runs when the calendar loses focus.
 (Added in 7.0.1) |
| notsupported | string | No | <b>Browser must support Java to <br>view ColdFusion Java Applets!</b> | Text to display if a page that contains a Java applet-based
 cfform control is opened by a browser that does not
 support Java or has Java support disabled. |
| cache | boolean | No | YES | A Boolean value that specifies whether to get new data each time the user expands tree nodes, as follows:
 * yes: fetches a node's child items only once, when the node is first expanded
 * no: fetches child items each time the node is expanded. |
