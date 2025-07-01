# cfgridcolumn

Used with the cfgrid tag in a cfform. Use this tag to specify
 column data in a cfgrid control. The font and alignment
 attributes used in cfgridcolumn override global font or
 alignment settings defined in cfgrid.

### Syntax

```html
<cfgridcolumn name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfgridcolumn(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name of grid column element. If grid uses a query, column
 name must specify name of a query column. |
| header | string | No |  | Column header text. Used only if cfgrid colHeaders = "Yes". |
| width | numeric | No |  | Column width, in pixels. |
| font | string | No | arial | Font of data in column. |
| fontsize | numeric | No |  | Size of text in column. |
| italic | boolean | No | NO | Yes: displays grid control text in italics |
| bold | boolean | No | NO | Yes: displays grid control text in bold |
| bgcolor | string | No |  | Background color of control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. |
| textcolor | string | No |  | Text color for control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. |
| href | string | No |  | URL or query column name that contains a URL to hyperlink
 each grid column with. |
| hrefkey | string | No |  | The query column to use for the value appended to the href
 URL of each column, instead of the column's value. |
| target | string | No |  | Frame in which to open link specified in href. |
| select | boolean | No |  | Yes: user can select the column in grid control. |
| display | boolean | No |  | No: hides column |
| type | string | No |  | image: grid displays image that corresponds to value in
 column (a built-in CFML image name, or an image in
 cfide\classes directory or subdirectory referenced with
 relative URL). If image is larger than column cell, it is
 clipped to fit. Built-in image names |
| headerfont | string | No |  | Font of data in column. |
| headerfontsize | numeric | No |  | Size of text in column. |
| headeritalic | boolean | No |  | Yes: displays grid control text in italics |
| headerbold | boolean | No |  | Yes: displays grid control text in bold |
| headertextcolor | string | No |  | Text color for control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. |
| dataalign | string | No |  | Column data alignment |
| headeralign | string | No |  | Column header text alignment |
| numberformat | string | No |  | Format for displaying numeric data in grid. See
 numberFormat mask characters. |
| values | string | No |  | Formats cells in column as drop-down list boxes; specify
 items in drop-down list. Example:
 values = "arthur, scott, charles, 1-20, mabel" |
| valuesdisplay | string | No |  | Maps elements in values attribute to string to display in
 drop-down list. Delimited strings and/or numeric range(s). |
| valuesdelimiter | string | No |  | Maps elements in values attribute to string to display in
 drop-down list. Delimited strings and/or numeric range(s). |
| mask | string | No |  | A mask pattern that controls the character pattern
 that the form displays or allows users to input and
 sends to ColdFusion.
 For currency type data, use currency symbol.
 For text or numeric type data use:
 - A = [A-Za-z]
 - X = [A-Za-z0-9]
 - 9 = [0-9]
 - ? = Any character
 - all other = the literal character
 For date type data use `Ext.Date` masks. |
| headerIcon | string | No |  | Header Icon for grid column |
