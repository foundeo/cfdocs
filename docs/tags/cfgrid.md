# cfgrid

Used within the cfform tag. Puts a grid control (a table of
 data) in a CFML form. To specify grid columns and row
 data, use the cfgridcolumn and cfgridrow tags, or use the
 query attribute, with or without cfgridcolumn tags.

### Syntax

```html
<cfgrid name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfgrid(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name of grid element. |
| bind | string | No |  | A bind expression specifying used to fill the <br /> contents of the grid. Cannot be used with the <br /> query attribute. |
| pagesize | numeric | No |  | The number of rows to display per page for a <br /> dynamic grid. If the number of available rows <br /> exceeds the page size, the grid displays only <br /> the specified number of entries on a single <br /> page, and the user navigates between pages <br /> to show all data. The grid retrieves data for <br /> each page only when it is required for display. <br /> This attribute is ignored if you specify a query <br /> attribute. |
| striperowcolor | string | No |  | The color to use for one of the alternating <br /> stripes. The bgColor setting determines the <br /> other color |
| preservepageonsort | boolean | No | YES | Specifies whether to display the page with <br /> the current page number, or display page 1, <br /> after sorting (or resorting) the grid |
| striperows | boolean | No | YES | Specifies whether to display the page with <br /> the current page number, or display page 1, <br /> after sorting (or resorting) the grid |
| format | string | No | applet | - applet: generates a Java applet.<br /> - Flash: generates a Flash grid control.<br /> - xml: generates an XMLrepresentation of the grid.<br /> In XML format forms, includes the generated XML in the form.<br /> In HTML format forms, puts the XML in a string variable<br /> with the name specified by the name attribute.<br /> Default: applet |
| height | numeric | No | 300 | Control's height, in pixels.<br /> Default for applet: 300 |
| width | numeric | No |  | Control's width, in pixels.<br /> Default for applet: 300 |
| autowidth | boolean | No | NO | Yes: sets column widths so that all columns display within<br /> grid width.<br /> No: sets columns to equal widths. User can resize columns.<br /> Horizontal scroll bars are not available, because if<br /> you specify a column width and set autoWidth = "Yes",<br /> CFML sets to this width, if possible |
| vspace | numeric | No |  | Vertical margin above and below control, in pixels. |
| hspace | numeric | No |  | Horizontal spacing to left and right of control, in pixels. |
| align | string | No |  | Alignment of the grid cell contents |
| query | query | No |  | Name of query associated with grid control. |
| insert | boolean | No | NO | User can insert row data in grid.<br /> Takes effect only if selectmode="edit" |
| delete | boolean | No | NO | User can delete row data from grid.<br /> Takes effect only if selectmode="edit" |
| sort | boolean | No | NO | The sort button performs simple text sort on column. User<br /> can sort columns by clicking column head or by clicking<br /> sort buttons. Not valid with selectmode=browse.<br /><br /> Yes: sort buttons display on grid control |
| font | string | No | arial | Font of data in column. |
| fontsize | numeric | No |  | Size of text in column. |
| italic | boolean | No | NO | Yes: displays grid control text in italics |
| bold | boolean | No | NO | Yes: displays grid control text in bold |
| textcolor | string | No | black | Text color for control. For a hex value, use the form:<br /> textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash<br /> signs or none. |
| href | string | No |  | URL or query column name that contains a URL to hyperlink<br /> each grid column with. |
| hrefkey | string | No |  | The query column to use for the value appended to the href<br /> URL of each column, instead of the column's value. |
| target | string | No |  | Frame in which to open link specified in href. |
| appendkey | boolean | No | YES | When used with href, passes CFTREEITEMKEY variable<br /> with the value of the selected tree item in URL to the<br /> application page specified in the cfform action<br /> attribute |
| highlighthref | boolean | No | YES | Yes: Highlights links that are associated with a cftreeitem<br /> with a URL attribute value.<br /> No: Disables highlight. |
| onvalidate | string | No |  | JavaScript function to validate user input. The form object,<br /> input object, and input object value are passed to the<br /> specified routine, which should return True if validation<br /> succeeds; False, otherwise. |
| onerror | string | No |  | JavaScript function to execute if validation fails. |
| griddataalign | string | No | left | Left: left-aligns data within column.<br /> Right: right-aligns data within column.<br /> Center: center-aligns data within column. |
| gridlines | boolean | No | YES | Yes: enables row and column rules in grid control |
| rowheight | numeric | No |  | Minimum row height, in pixels, of grid control. Used with<br /> cfgridcolumn type = "Image"; defines space for graphics to<br /> display in row. |
| rowheaders | boolean | No | YES | Yes: displays a column of numeric row labels in grid<br /> control |
| rowheaderalign | string | No | left | Left: left-aligns data within row header<br /> Right: right-aligns data within row header<br /> Center: center-aligns data within row header |
| rowheaderfont | string | No |  | Font of data in column. |
| rowheaderfontsize | numeric | No |  | Size of text in column. |
| rowheaderitalic | boolean | No | NO | Yes: displays grid control text in italics |
| rowheaderbold | boolean | No | NO | Yes: displays grid control text in bold |
| rowheadertextcolor | string | No | black | Text color for control. For a hex value, use the form:<br /> textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash<br /> signs or none. |
| colheaders | boolean | No | YES | Yes: displays a column of numeric row labels in grid<br /> control |
| colheaderalign | string | No | left | Left: left-aligns data within row header<br /> Right: right-aligns data within row header<br /> Center: center-aligns data within row header |
| colheaderfont | string | No |  | Font of data in column. |
| colheaderfontsize | numeric | No |  | Size of text in column. |
| colheaderitalic | boolean | No | NO | Yes: displays grid control text in italics |
| colheaderbold | boolean | No | NO | Yes: displays grid control text in bold |
| colheadertextcolor | string | No |  | Text color for control. For a hex value, use the form:<br /> textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash<br /> signs or none. |
| bgcolor | string | No |  | Background color of grid control. |
| selectcolor | string | No |  | Background color for a selected item. |
| selectmode | string | No |  | Selection mode for items in the control.<br /> - Edit: user can edit grid data. Selecting a cell opens<br /> the editor for the cell type.<br /> - Row: user selections automatically extend to the row<br /> that contains selected cell.<br /> - Single: user selections are limited to selected cell.<br /> (Applet only)<br /> - Column: user selections automatically extend<br /> to column that contains selected cell. (Applet only)<br /> - Browse: user can only browse grid data. (Applet only) |
| maxrows | numeric | No |  | Maximum number of rows to display in grid. |
| notsupported | string | No | <b>Browser must support Java to <br>view ColdFusion Java Applets!</b> | Text to display if a page that contains a Java applet-based<br /> cfform control is opened by a browser that does not<br /> support Java or has Java support disabled. |
| picturebar | boolean | No | NO | Yes: images for Insert, Delete, Sort buttons |
| insertbutton | string | No |  | Text for the insert button. Takes effect only if<br /> selectmode="edit". |
| deletebutton | string | No |  | Text of Delete button text. Takes effect only if<br /> selectmode="edit". |
| sortascendingbutton | string | No |  | Sort button text |
| sortdescendingbutton | string | No |  | Sort button text |
| style | string | No |  | Flash only: Must be a style specification in CSS format.<br /> Ignored for type="text". |
| enabled | boolean | No | YES | Flash only: Boolean value specifying<br /> whether the control is enabled. A disabled<br /> control appears in light gray.<br /> Default: true |
| visible | boolean | No | YES | Flash only: Boolean value specifying<br /> whether to show the control. Space that would<br /> be occupied by an invisible control is blank.<br /> Default: true |
| tooltip | string | No |  | Flash only: text to display when the<br /> mouse pointer hovers over the control. |
| onchange | string | No |  | Flash only: ActionScript to run when the control changes<br /> due to user action in the control. |
| bindonload | boolean | No | YES | * yes: executes the bind attribute expression when first loading the form.<br /> * no: does not execute the bind attribute expression until the first bound event.<br />Ignored if there is no bind attribute. |
| selectonload | boolean | No | YES | * yes: selects the first row of the grid when the grid loads.<br /> * no: does not select any rows when the grid loads. |
| onblur | string | No |  | ActionScript that runs when the grid loses focus. |
| onfocus | string | No |  | ActionScript that runs when the grid gets focus. |
| collapsible | boolean | No |  | A Boolean value specifying whether the user can collapse the entire grid by clicking an arrow on the title bar. |
| groupfield | string | No |  | Puts the grid rows into groups, organized by the column specified in this attribute. Each group is collapsible and has a header with the column name, group field value, and number of entries in the group. |
| onLoad | string | No |  | Java Script function that gets called when a grid is loaded for first time |

## Most basic cfgrid, without using a query

The CFgrid and related tags offer a LOT of capability and many options, but if you just need a very simple demonstration of a working grid, here you go.

```html
<cfform>
                <cfgrid name="grid1" format="html" >
                                <cfgridcolumn name="col1">
                                <cfgridrow data="xxx">
                </cfgrid>
</cfform>
```

### Expected Result: A single-column grid
