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
| bind | string | No |  | A bind expression specifying a CFC of JavaScript<br /> function that dynamically gets all tree nodes. You can use<br /> this attribute only at the top level of the tree, and in this<br /> case, the tree can have only cftreeitem tag.<br /> If you use the bind attribute, the only other allowed<br /> attribute is onBindError. For details creating trees that<br /> using binding, see "Using HTML format trees" in Chapter<br /> 33, "Using AJAX UI Components and Features" in<br /> ColdFusion Developer's Guide |
| value | string | No |  | Value passed when cfform is submitted. When populating a<br /> tree with data from a cfquery, specify columns in a<br /> delimited list. Example: value = "dept_id,emp_id" |
| display | string | No |  | Tree item label. When populating a tree with data from a<br /> query, specify names in a delimited list. Example:<br /> display = "dept_name,emp_name" |
| parent | string | No |  | Value for tree item parent. |
| img | string | No |  | Image name, filename, or file URL for tree item icon.<br /><br /> You can specify a custom image. To do so, include path and<br /> file extension; for example:<br /><br /> img = "../images/page1.gif"<br /><br /> To specify more than one image in a tree, or an image at<br /> the second or subsequent level, use commas to separate<br /> names, corresponding to level; for example:<br /><br /><br /> img = "folder,document"<br /> img = ",document" (example of second level) |
| imgopen | string | No |  | Icon displayed with open tree item. You can specify icon<br /> filename with a relative path. You can use a CFML<br /> image. |
| href | string | No |  | URL to associate with tree item or query column for a tree<br /> that is populated from a query. If href is a query column,<br /> its value is the value populated by query. If href is not<br /> recognized as a query column, it is assumed that its text<br /> is an HTML href.<br /><br /> When populating a tree with data from a query, HREFs can be<br /> specified in delimited list; for example:<br /><br /> href = "http://dept_svr,http://emp_svr" |
| target | string | No |  | Target attribute of href URL. When populating a tree with<br /> data from a query, specify target in delimited list:<br /><br /> target = "FRAME_BODY,_blank" |
| query | string | No |  | Query name to generate data for the treeitem. |
| queryAsRoot | string | No |  | Defines query as the root level. This avoids having to<br /> create another parent cftreeitem.<br /><br /> * Yes<br /> * No<br /> * String to use as the root name<br /> If you do not specify a root name, CFML returns the<br /> query name as the root. |
| expand | boolean | No |  | Yes: expands tree to show tree item children<br /> No: keeps tree item collapsed |
| onbinderror | string | No |  | The name of a JavaScript function to execute if evaluating a bind expression results in an error. The function must take two attributes: an HTTP status code and a message. |
