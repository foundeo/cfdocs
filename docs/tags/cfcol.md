# cfcol

Defines table column header, width, alignment, and text. Used
 within a cftable tag.

### Syntax

```html
<cfcol header="" text="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfcol(header="", text="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| header | string | Yes |  | Column header text. To use this attribute, you must also
 use the cftable colHeaders attribute. |
| width | numeric | No | 20 | Column width. If the length of data displayed exceeds this
 value, data is truncated to fit. To avoid this, use an
 HTML table tag. |
| align | string | No | left | Column alignment |
| text | string | Yes |  | Double-quotation mark-delimited text; determines what to
 display. Rules: same as for cfoutput sections. You can
 embed hyperlinks, image references, and input controls |
