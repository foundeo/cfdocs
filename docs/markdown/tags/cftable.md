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
