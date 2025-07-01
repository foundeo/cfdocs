# xmlTransform

Applies an Extensible Stylesheet Language Transformation (XSLT)
 to an XML document object that is represented as a string
 variable. An XSLT converts an XML document to another format
 or representation by applying an Extensible Stylesheet
 Language (XSL) stylesheet to it.

```javascript
xmlTransform(xml, xsl [, parameters])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| xml | xml | Yes |  | An XML document in string format, or an XML document object. |
| xsl | string | Yes |  | XSLT transformation to apply; can be any of the following:
 - A string containing XSL text.
 - The name of an XSTLT file. Relative paths start at
 the directory containing the current CFML page.
 - The URL of an XSLT file; valid protocol identifiers
 include http, https, ftp, and file. Relative paths start
 at the directory containing the current CFML page. |
| parameters | struct | No |  | A structure containing XSL template parameter name-value
 pairs to use in transforming the document. The XSL transform
 defined in the xslString parameter uses these parameter values
 in processing the xml. |
