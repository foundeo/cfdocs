# cflayoutarea

Defines a region within a cflayout tag body, such as an 
 individual tab of a tabbed layout. This tag is not used in 
 Flash forms.

### Syntax

```html
<cflayoutarea>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cflayoutarea();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| position | string | No | top | The position...(docs don't explain this one). |
| align | string | No | center | Specifies how to align child controls within the 
 layout area. |
| closable | boolean | No | NO | A Boolean value specifying whether the area can close. 
 Specifying this attribute adds an x icon on the tab or 
 title bar that a user can click to close the area. 
 You cannot use this attribute for border layout areas 
 with a position attribute value of center. |
| collapsible | boolean | No | NO | A Boolean value specifying whether the area can collapse.
 Specifying this attribute adds a >> or << icon on the 
 title bar that a user can click to collapse the area. 
 You cannot use this attribute for border layout areas 
 with a position attribute value of center. |
| disabled | boolean | No | NO | A Boolean value specifying whether the tab is disabled, 
 that is, whether user can select the tab to display its 
 contents. Disabled tabs are greyed out. Ignored if the 
 selected attribute value is true. |
| initCollapsed | boolean | No | NO | A Boolean value specifying whether the area is initially 
 collapsed. You cannot use this attribute for border layout 
 areas with a position attribute value of center. Ignored 
 if the collapsible attribute value is false. |
| initHide | boolean | No | NO | A Boolean value specifying whether the area is initially 
 hidden. To show an initially hidden area, use the 
 ColdFusion.Layout.showArea or ColdFusion.Layout.showTab 
 function. You cannot use this attribute for border layout 
 areas with a position attribute value of center. |
| maxSize | numeric | No |  | For layouts with top or bottom position attributes, the maximum 
 height of the area, in pixels, that you can set by dragging a
 splitter. For layouts with left or right position attributes,
 the maximum width of the area. You cannot use this attribute
 for border layout areas with a position attribute value of 
 center. |
| minSize | numeric | No |  | For layouts with top or bottom position attributes, the minimum
 height of the area, in pixels, that you can set by dragging a 
 splitter. For layouts with left or right position attributes, 
 the minimum width of the area., You cannot use this attribute 
 for border layout areas with a position attribute value of center. |
| name | string | No |  | The name of the layout area. |
| onBindError | string | No |  | The name of a JavaScript function to execute if evaluating a 
 bind expression results in an error. The function must take 
 two attributes: an HTTP status code and a message. If you omit 
 this attribute, and have specified a global error handler 
 (by using the ColdFusion.setGlobalErrorHandlerfunction ), 
 it displays the error message; otherwise a default error 
 pop-up displays. |
| overflow | string | No | auto | Specifies how to display child content whose size would cause 
 the control to overflow the window boundaries. Ã”Ã¸Î© In Internet Explorer, layout areas with
 the visible setting expand to fit the size of the contents, 
 rather than having the contents extend beyond the layout area. |
| selected | boolean | No |  | A Boolean value specifying whether this tab is initially 
 selected so that its contents appears in the layout. |
| size | numeric | No |  | For hbox layouts and border layouts with top or bottom position
 attributes, the initial height of the area. For vbox layouts 
 and border layouts with left or right position attributes, the
 initial width of the area. For hbox and vbox layouts, you can
 use any valid CSS length or percent format 
 (such as 10, 10% 10px, or 10em) for this attribute. For border
 layouts, this attribute value must be an integer number of 
 pixels. You cannot use this attribute for border layout areas
 with a position attribute value of center. ColdFusion 
 automatically determines the center size based on the 
 size of all other layout areas. |
| source | string | No |  | A URL that returns the layout area contents. ColdFusion uses 
 standard page path resolution rules. You can use a bind expression
 with dependencies in this attribute. If file specified in this 
 attribute includes tags that use AJAX features, such as cfform, 
 cfgrid, and cfpod, you must use the cfajaximport tag on the page
 that includes the cflayoutarea tag. For more information, 
 see cfajaximport. |
| splitter | boolean | No | NO | A Boolean value specifying whether the layout area has a divider 
 between it and the adjacent layoutarea control. Users can drag the
 splitter to change the relative sizes of the areas. If this 
 attribute is set true on a left or right position layout area, 
 the splitter resizes the area and its adjacent area horizontally.
 If this attribute is set true on a top or bottom position 
 layout area, the splitter resizes the layout vertically. 
 You cannot use this attribute for border layout areas with 
 a position attribute value of center |
| style | string | No |  | A CSS style specification that controls the appearance of the area. |
| title | string | No |  | For tab layouts, the text to display on the tab. For border 
 layouts, if you specify this attribute ColdFusion creates 
 a title bar for the layout area with the specified text as 
 the title. By default, these layouts do not have a title 
 bar if they are not closable or collapsible. You cannot 
 use this attribute for border layout areas with a position 
 attribute value of center. |
| refreshonactivate | boolean | No | NO | * true: Refresh the contents of the tab by running the source bind expression whenever the tab display region shows (for example, when the user selects the tab), in addition to when bind events occur.
 * false: Refresh the tab display region only when the bind expression is triggered by its bind event. |
| titleIcon | string | No |  | Specifies the location of the icon to display with the title. |
| bindOnLoad | boolean | No |  | A Boolean value that specifies whether to execute 
 the bind attribute expression when first loading the 
 form. Ignored if there is no bind attribute. |
