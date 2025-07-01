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
| action | string | Yes |  | The action to perform on the source:
 populate
 read (required) |
| datafile | string | No |  | (populate read) Pathname for the XML data file.
 if action="populate", the data from this file
 populates the fields of the PDF form.
 if action="read", ColdFusion writes the data
 to this file.
 You can specify a pathname relative to the context
 root or a relative pathname.
 You must specify either the datafile attribute
 or the result attribute for the read action;
 you can specify both. (optional) |
| destination | string | No |  | (populate) Pathname for the output file.
 You can specify an absolute pathname or
 a pathname relative to the context root.
 The file extension must be PDF or XDP.
 The file extension determines the format
 of the file. (The XDP format applies only
 to LiveCycle forms.)
 If you do not specify the destination,
 ColdFusion displays the form in the browser.
 Do not specify the destination when you
 embed a form in a PDF document. (optional) |
| overwrite | boolean | No |  | (populate, read) Overwrite the destination file
 (if action="populate)
 or the data file (if action="read"):
 yes
 no (optional) |
| overwritedata | boolean | No |  | Specifies whether to overwrite existing data in PDF form fields with data from the data source:

 * yes: Overwrite existing data in the form fields with that from the data source.
 * no: Retain existing data in form fields and populate only those fields without data. |
| result | any | No |  | (read) ColdFusion structure that contains the form field values.
 You must specify the datafile attribute or the result attribute;
 you can specify both. (optional) |
| source | string | Yes |  | (populate, read) Pathname of the source PDF (absolute path or path
 relative to the context root) or byte array representing a PDF. (required) |
| xmldata | boolean | No |  | Pathname for the XML data file.

 * If action="populate", the data from this file, XML object, or XML string populates the form fields. You can specify a pathname relative to the context root or a relative pathname.
 * If action="read", ColdFusion writes the data to the variable. |
| name | string | No |  | Specify the PDF document variable name, for example, myPDFdoc.
 If the source is a PDF document variable, you cannot specify the
 name attribute again; you can write the modified PDF document
 to the destination. (optional) |
| fdf | boolean | No |  | If set to true, the system creates FDF with subforms and params instead of an XML |
| fdfData | string | No |  | For populate, you specify the file name from where the FDF data will be imported.
For read, you specify the file name where the FDF data will be exported. |
