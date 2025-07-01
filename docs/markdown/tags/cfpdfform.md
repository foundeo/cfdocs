# cfpdfform

Manipulates existing Adobe Acrobat forms and Adobe LiveCycle forms.
 The following list describes some of the tasks you can perform with the cfpdfform tag:
 Embed an interactive Acrobat form or LiveCycle form within a PDF document.
 You use the cfpdfform tag to embed the PDF form within a cfdocument tag.
 Render an existing Acrobat form or LiveCycle form. This includes prefilling
 fields from a database or an XML data file and processing form data submitted
 via HTTP post or PDF format.
 Extract or prefill values in stored PDF forms and save the output to a file
 or use it to update a data source.

### Syntax

```html
<cfpdfform action="populate" source="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfpdfform(action="populate", source="");
```
