# cfdocumentitem

Specifies action items for a PDF or FlashPaper document
 created by the cfdocument tag.

### Syntax

```html
<cfdocumentitem type="pagebreak">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfdocumentitem(type="pagebreak");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes |  | Specifies the action:
 - pagebreak: start a new page at the location of the tag.
 - header: use the text between the <cfdocumentitem>
 and </cfdocumentitem> tags as the running header.
 - footer: use the text between the <cfdocumentitem>
 and </cfdocumentitem> tags as the running footer. |
| evalAtPrint | boolean | No |  | Specifies whether to evaluate expressions inside cfdocumentitem tag at runtime. |

## Pagebreak (Script Syntax)

Insert a pagebreak into the document

```html
cfdocumentitem( type="pagebreak" );
```

## Footer (Script Syntax)

Insert a page footer into the document

```html
cfdocumentitem( type="footer" ) {
    writeOutput(' -- My Page Footer -- ');
}
```
