# cftable

Builds a table in a CFML page. This tag renders data as preformatted text, or, with the HTMLTable attribute, in an HTML table. If you do not want to write HTML table tag code, or if your data can be presented as preformatted text, use this tag. Preformatted text (defined in HTML with the &lt;pre&gt; and &lt;/pre&gt; tags) displays text in a fixed-width font. It displays white space and line breaks exactly as they are written within the pre tags. For more information, see an HTML reference guide.

 To define table column and row characteristics, use the cfcol tag within this tag.

### Syntax

```html
<cftable query="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cftable(query="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | Name of cfquery from which to draw data. |
| maxrows | numeric | No |  | Maximum number of rows to display in the table. |
| colSpacing | numeric | No |  | Number of spaces between columns |
| headerLines | numeric | No |  | Number of lines to use for table header (the default leaves<br /> one line between header and first row of table). |
| htmltable | any | No |  | Renders data in an HTML 3.0 table.<br /><br /> If you use this attribute (regardless of its value),<br /> CFML renders data in an HTML table. |
| border | any | No |  | Displays border around table.<br /><br /> If you use this attribute (regardless of its value),<br /> CFML displays a border around the table.<br /><br /> Use this only if you use the HTMLTable attribute. |
| colheaders | any | No |  | Displays column heads. If you use this attribute, you must<br /> also use the cfcol tag header attribute to define them.<br /><br /> If you use this attribute (regardless of its value),<br /> CFML displays column heads. |
| startrow | numeric | No |  | The query result row to put in the first table row. |
