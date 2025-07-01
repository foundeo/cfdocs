# cftreeitem

Populates a form tree control, created with the cftree tag,
 with elements. To display icons, you can use the img values
 that CFML provides, or reference your own icons.

### Syntax

```html
<cftreeitem>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cftreeitem();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| bind | string | No |  | A bind expression specifying a CFC of JavaScript
 function that dynamically gets all tree nodes. You can use
 this attribute only at the top level of the tree, and in this
 case, the tree can have only cftreeitem tag.
 If you use the bind attribute, the only other allowed
 attribute is onBindError. For details creating trees that
 using binding, see "Using HTML format trees" in Chapter
 33, "Using AJAX UI Components and Features" in
 ColdFusion Developer's Guide |
| value | string | No |  | Value passed when cfform is submitted. When populating a
 tree with data from a cfquery, specify columns in a
 delimited list. Example: value = "dept_id,emp_id" |
| display | string | No |  | Tree item label. When populating a tree with data from a
 query, specify names in a delimited list. Example:
 display = "dept_name,emp_name" |
| parent | string | No |  | Value for tree item parent. |
| img | string | No |  | Image name, filename, or file URL for tree item icon.

 You can specify a custom image. To do so, include path and
 file extension; for example:

 img = "../images/page1.gif"

 To specify more than one image in a tree, or an image at
 the second or subsequent level, use commas to separate
 names, corresponding to level; for example:


 img = "folder,document"
 img = ",document" (example of second level) |
| imgopen | string | No |  | Icon displayed with open tree item. You can specify icon
 filename with a relative path. You can use a CFML
 image. |
| href | string | No |  | URL to associate with tree item or query column for a tree
 that is populated from a query. If href is a query column,
 its value is the value populated by query. If href is not
 recognized as a query column, it is assumed that its text
 is an HTML href.

 When populating a tree with data from a query, HREFs can be
 specified in delimited list; for example:

 href = "http://dept_svr,http://emp_svr" |
| target | string | No |  | Target attribute of href URL. When populating a tree with
 data from a query, specify target in delimited list:

 target = "FRAME_BODY,_blank" |
| query | string | No |  | Query name to generate data for the treeitem. |
| queryAsRoot | string | No |  | Defines query as the root level. This avoids having to
 create another parent cftreeitem.

 * Yes
 * No
 * String to use as the root name
 If you do not specify a root name, CFML returns the
 query name as the root. |
| expand | boolean | No |  | Yes: expands tree to show tree item children
 No: keeps tree item collapsed |
| onbinderror | string | No |  | The name of a JavaScript function to execute if evaluating a bind expression results in an error. The function must take two attributes: an HTTP status code and a message. |
