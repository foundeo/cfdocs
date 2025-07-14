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
| name | string | Yes |  | Name of grid column element. If grid uses a query, column<br /> name must specify name of a query column. |
| header | string | No |  | Column header text. Used only if cfgrid colHeaders = "Yes". |
| width | numeric | No |  | Column width, in pixels. |
| font | string | No | arial | Font of data in column. |
| fontsize | numeric | No |  | Size of text in column. |
| italic | boolean | No | NO | Yes: displays grid control text in italics |
| bold | boolean | No | NO | Yes: displays grid control text in bold |
| bgcolor | string | No |  | Background color of control. For a hex value, use the form:<br /> textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash<br /> signs or none. |
| textcolor | string | No |  | Text color for control. For a hex value, use the form:<br /> textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash<br /> signs or none. |
| href | string | No |  | URL or query column name that contains a URL to hyperlink<br /> each grid column with. |
| hrefkey | string | No |  | The query column to use for the value appended to the href<br /> URL of each column, instead of the column's value. |
| target | string | No |  | Frame in which to open link specified in href. |
| select | boolean | No |  | Yes: user can select the column in grid control. |
| display | boolean | No |  | No: hides column |
| type | string | No |  | image: grid displays image that corresponds to value in<br /> column (a built-in CFML image name, or an image in<br /> cfide\classes directory or subdirectory referenced with<br /> relative URL). If image is larger than column cell, it is<br /> clipped to fit. Built-in image names |
| headerfont | string | No |  | Font of data in column. |
| headerfontsize | numeric | No |  | Size of text in column. |
| headeritalic | boolean | No |  | Yes: displays grid control text in italics |
| headerbold | boolean | No |  | Yes: displays grid control text in bold |
| headertextcolor | string | No |  | Text color for control. For a hex value, use the form:<br /> textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash<br /> signs or none. |
| dataalign | string | No |  | Column data alignment |
| headeralign | string | No |  | Column header text alignment |
| numberformat | string | No |  | Format for displaying numeric data in grid. See<br /> numberFormat mask characters. |
| values | string | No |  | Formats cells in column as drop-down list boxes; specify<br /> items in drop-down list. Example:<br /> values = "arthur, scott, charles, 1-20, mabel" |
| valuesdisplay | string | No |  | Maps elements in values attribute to string to display in<br /> drop-down list. Delimited strings and/or numeric range(s). |
| valuesdelimiter | string | No |  | Maps elements in values attribute to string to display in<br /> drop-down list. Delimited strings and/or numeric range(s). |
| mask | string | No |  | A mask pattern that controls the character pattern<br /> that the form displays or allows users to input and<br /> sends to ColdFusion.<br /> For currency type data, use currency symbol.<br /> For text or numeric type data use:<br /> - A = [A-Za-z]<br /> - X = [A-Za-z0-9]<br /> - 9 = [0-9]<br /> - ? = Any character<br /> - all other = the literal character<br /> For date type data use `Ext.Date` masks. |
| headerIcon | string | No |  | Header Icon for grid column |
