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
| align | string | No | center | Specifies how to align child controls within the <br /> layout area. |
| closable | boolean | No | NO | A Boolean value specifying whether the area can close. <br /> Specifying this attribute adds an x icon on the tab or <br /> title bar that a user can click to close the area. <br /> You cannot use this attribute for border layout areas <br /> with a position attribute value of center. |
| collapsible | boolean | No | NO | A Boolean value specifying whether the area can collapse.<br /> Specifying this attribute adds a >> or << icon on the <br /> title bar that a user can click to collapse the area. <br /> You cannot use this attribute for border layout areas <br /> with a position attribute value of center. |
| disabled | boolean | No | NO | A Boolean value specifying whether the tab is disabled, <br /> that is, whether user can select the tab to display its <br /> contents. Disabled tabs are greyed out. Ignored if the <br /> selected attribute value is true. |
| initCollapsed | boolean | No | NO | A Boolean value specifying whether the area is initially <br /> collapsed. You cannot use this attribute for border layout <br /> areas with a position attribute value of center. Ignored <br /> if the collapsible attribute value is false. |
| initHide | boolean | No | NO | A Boolean value specifying whether the area is initially <br /> hidden. To show an initially hidden area, use the <br /> ColdFusion.Layout.showArea or ColdFusion.Layout.showTab <br /> function. You cannot use this attribute for border layout <br /> areas with a position attribute value of center. |
| maxSize | numeric | No |  | For layouts with top or bottom position attributes, the maximum <br /> height of the area, in pixels, that you can set by dragging a<br /> splitter. For layouts with left or right position attributes,<br /> the maximum width of the area. You cannot use this attribute<br /> for border layout areas with a position attribute value of <br /> center. |
| minSize | numeric | No |  | For layouts with top or bottom position attributes, the minimum<br /> height of the area, in pixels, that you can set by dragging a <br /> splitter. For layouts with left or right position attributes, <br /> the minimum width of the area., You cannot use this attribute <br /> for border layout areas with a position attribute value of center. |
| name | string | No |  | The name of the layout area. |
| onBindError | string | No |  | The name of a JavaScript function to execute if evaluating a <br /> bind expression results in an error. The function must take <br /> two attributes: an HTTP status code and a message. If you omit <br /> this attribute, and have specified a global error handler <br /> (by using the ColdFusion.setGlobalErrorHandlerfunction ), <br /> it displays the error message; otherwise a default error <br /> pop-up displays. |
| overflow | string | No | auto | Specifies how to display child content whose size would cause <br /> the control to overflow the window boundaries. Ã”Ã¸Î© In Internet Explorer, layout areas with<br /> the visible setting expand to fit the size of the contents, <br /> rather than having the contents extend beyond the layout area. |
| selected | boolean | No |  | A Boolean value specifying whether this tab is initially <br /> selected so that its contents appears in the layout. |
| size | numeric | No |  | For hbox layouts and border layouts with top or bottom position<br /> attributes, the initial height of the area. For vbox layouts <br /> and border layouts with left or right position attributes, the<br /> initial width of the area. For hbox and vbox layouts, you can<br /> use any valid CSS length or percent format <br /> (such as 10, 10% 10px, or 10em) for this attribute. For border<br /> layouts, this attribute value must be an integer number of <br /> pixels. You cannot use this attribute for border layout areas<br /> with a position attribute value of center. ColdFusion <br /> automatically determines the center size based on the <br /> size of all other layout areas. |
| source | string | No |  | A URL that returns the layout area contents. ColdFusion uses <br /> standard page path resolution rules. You can use a bind expression<br /> with dependencies in this attribute. If file specified in this <br /> attribute includes tags that use AJAX features, such as cfform, <br /> cfgrid, and cfpod, you must use the cfajaximport tag on the page<br /> that includes the cflayoutarea tag. For more information, <br /> see cfajaximport. |
| splitter | boolean | No | NO | A Boolean value specifying whether the layout area has a divider <br /> between it and the adjacent layoutarea control. Users can drag the<br /> splitter to change the relative sizes of the areas. If this <br /> attribute is set true on a left or right position layout area, <br /> the splitter resizes the area and its adjacent area horizontally.<br /> If this attribute is set true on a top or bottom position <br /> layout area, the splitter resizes the layout vertically. <br /> You cannot use this attribute for border layout areas with <br /> a position attribute value of center |
| style | string | No |  | A CSS style specification that controls the appearance of the area. |
| title | string | No |  | For tab layouts, the text to display on the tab. For border <br /> layouts, if you specify this attribute ColdFusion creates <br /> a title bar for the layout area with the specified text as <br /> the title. By default, these layouts do not have a title <br /> bar if they are not closable or collapsible. You cannot <br /> use this attribute for border layout areas with a position <br /> attribute value of center. |
| refreshonactivate | boolean | No | NO | * true: Refresh the contents of the tab by running the source bind expression whenever the tab display region shows (for example, when the user selects the tab), in addition to when bind events occur.<br /> * false: Refresh the tab display region only when the bind expression is triggered by its bind event. |
| titleIcon | string | No |  | Specifies the location of the icon to display with the title. |
| bindOnLoad | boolean | No |  | A Boolean value that specifies whether to execute <br /> the bind attribute expression when first loading the <br /> form. Ignored if there is no bind attribute. |
