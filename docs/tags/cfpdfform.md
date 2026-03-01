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

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | The action to perform on the source:<br /> populate<br /> read (required) |
| datafile | string | No |  | (populate read) Pathname for the XML data file.<br /> if action="populate", the data from this file<br /> populates the fields of the PDF form.<br /> if action="read", ColdFusion writes the data<br /> to this file.<br /> You can specify a pathname relative to the context<br /> root or a relative pathname.<br /> You must specify either the datafile attribute<br /> or the result attribute for the read action;<br /> you can specify both. (optional) |
| destination | string | No |  | (populate) Pathname for the output file.<br /> You can specify an absolute pathname or<br /> a pathname relative to the context root.<br /> The file extension must be PDF or XDP.<br /> The file extension determines the format<br /> of the file. (The XDP format applies only<br /> to LiveCycle forms.)<br /> If you do not specify the destination,<br /> ColdFusion displays the form in the browser.<br /> Do not specify the destination when you<br /> embed a form in a PDF document. (optional) |
| overwrite | boolean | No |  | (populate, read) Overwrite the destination file<br /> (if action="populate)<br /> or the data file (if action="read"):<br /> yes<br /> no (optional) |
| overwritedata | boolean | No |  | Specifies whether to overwrite existing data in PDF form fields with data from the data source:<br /><br /> * yes: Overwrite existing data in the form fields with that from the data source.<br /> * no: Retain existing data in form fields and populate only those fields without data. |
| result | any | No |  | (read) ColdFusion structure that contains the form field values.<br /> You must specify the datafile attribute or the result attribute;<br /> you can specify both. (optional) |
| source | string | Yes |  | (populate, read) Pathname of the source PDF (absolute path or path<br /> relative to the context root) or byte array representing a PDF. (required) |
| xmldata | boolean | No |  | Pathname for the XML data file.<br /><br /> * If action="populate", the data from this file, XML object, or XML string populates the form fields. You can specify a pathname relative to the context root or a relative pathname.<br /> * If action="read", ColdFusion writes the data to the variable. |
| name | string | No |  | Specify the PDF document variable name, for example, myPDFdoc.<br /> If the source is a PDF document variable, you cannot specify the<br /> name attribute again; you can write the modified PDF document<br /> to the destination. (optional) |
| fdf | boolean | No |  | If set to true, the system creates FDF with subforms and params instead of an XML |
| fdfData | string | No |  | For populate, you specify the file name from where the FDF data will be imported.<br />For read, you specify the file name where the FDF data will be exported. |
