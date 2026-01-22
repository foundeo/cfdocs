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
| format | string | No | applet | - applet: displays the tree using a Java applet in the<br /> browser,<br /> - flash: displays the tree using a Flash control<br /> - object: returns the tree as a ColdFusion structure with the<br /> name specified by the name attribute, For details of the<br /> structure contents, see "object format", below.<br /> - xml: Generates an XMLrepresentation of the tree.<br /> In XML format forms, includes the generated XML in the<br /> form. and puts the XML in a string variable with the name<br /> specified by the name attribute.<br /> Default: applet |
| required | boolean | No | NO | - true: user must select an item in tree control<br /> - false: they do not<br /> Default: false |
| delimiter | string | No | \\ | Character to separate elements in form variable path.<br /> Default: \\ |
| completepath | boolean | No | NO | - true: start the Form.treename.path variable with the root<br /> of the tree path when cftree is submitted.<br /> - false: omit the root level from the Form.treename.path<br /> variable; the value starts with the first child node in the<br /> tree.<br /> For the preserveData attribute of cfform to work with the<br /> tree, you must set this attribute to Yes.<br /> For tree items populated by a query, if you use the<br /> cftreeitem queryasroot attribute to specify a root name,<br /> that value is returned. If you do not specify a root name,<br /> ColdFusion returns the query name.<br /> Default: false |
| appendkey | boolean | No | YES | - true: if you use cftreeitem href attributes, ColdFusion<br /> appends a CFTREEITEMKEY query string variable with<br /> the value of the selected tree item to the cfform action URL.<br /> - false: do not append the tree item value to the URL.<br /> Default: true |
| highlighthref | boolean | No | YES | - true: highlights as a link the displayed value for any<br /> cftreeitem tag that specifies a href attribute.<br /> - false: disables highlighting.<br /> Default: true |
| onvalidate | string | No |  | JavaScript function to validate user input. The form object,<br /> input object, and input object value are passed to the<br /> specified routine, which should return True if validation<br /> succeeds; False, otherwise. |
| message | string | No |  | Message to display if validation fails. |
| onerror | string | No |  | JavaScript function to execute if validation fails. |
| lookandfeel | string | No | windows | - motif: renders slider in Motif style<br /> - windows: renders slider in Windows style<br /> - metal: renders slider in Java Swing style<br /> If platform does not support style option, tag defaults to<br /> platform default style.<br /> Default: windows |
| font | string | No | arial | Font name for data in tree control. |
| fontsize | numeric | No |  | Font size for text in tree control, in points. |
| italic | boolean | No | NO | - true: displays tree control text in italics<br /> - false: it does not<br /> Default: false |
| bold | boolean | No | NO | - true: displays tree control text in bold<br /> - false: it does not<br /> Default: false |
| height | numeric | No | 320 | Tree control height, in pixels. If you omit this attribute in<br /> Flash format, Flash automatically sizes the tree.<br /> Default: 320 (applet only) |
| width | numeric | No | 200 | Tree control width, in pixels. If you omit this attribute in<br /> Flash format, Flash automatically sizes the tree.<br /> Default: 200 (applet only) |
| vspace | numeric | No |  | Vertical margin above and below tree control, in pixels. |
| hspace | numeric | No |  | Horizontal spacing to left and right of tree control, in pixels. |
| align | string | No |  | Alignment of the tree control applet object. |
| border | boolean | No | YES | - true: display a border around the tree control.<br /> - false: no border<br /> Default: true |
| hscroll | boolean | No | YES | - true: permits horizontal scrolling<br /> - false: no horizontal scrolling<br /> Default: true |
| vscroll | boolean | No | YES | - true: permits vertical scrolling<br /> - false: no vertical scrolling<br /> Default: true |
| style | string | No |  | Flash only: Must be a style specification in CSS format, with the same<br /> syntax and contents as used in Macromedia Flex for the<br /> corresponding Flash element. |
| enabled | boolean | No | YES | Flash only: Boolean value specifying whether the<br /> control is enabled. A disabled control appears in light gray.<br /> Default: true |
| visible | boolean | No | YES | Flash only: Boolean value specifying whether to<br /> show the control. Space that would be occupied by an<br /> invisible control is blank.<br /> Default: true |
| tooltip | string | No |  | Flash only: Text to display when the mouse pointer<br /> hovers over the control. |
| onchange | string | No |  | Flash only: ActionScript to run when the control changes due to user action.<br /> If you specify an onChange event handler, the Form scope of<br /> the ColdFusion action page does not automatically get<br /> information about selected items. The ActionScript onChange<br /> event handler must handle all changes and selections. |
| onblur | string | No |  | Flash only: ActionScript that runs when the calendar loses focus.<br /> (Added in 7.0.1) |
| onfocus | string | No |  | Flash only: ActionScript that runs when the calendar loses focus.<br /> (Added in 7.0.1) |
| notsupported | string | No | <b>Browser must support Java to <br>view ColdFusion Java Applets!</b> | Text to display if a page that contains a Java applet-based<br /> cfform control is opened by a browser that does not<br /> support Java or has Java support disabled. |
| cache | boolean | No | YES | A Boolean value that specifies whether to get new data each time the user expands tree nodes, as follows:<br /> * yes: fetches a node's child items only once, when the node is first expanded<br /> * no: fetches child items each time the node is expanded. |
