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
| xsl | string | Yes |  | XSLT transformation to apply; can be any of the following:<br /> - A string containing XSL text.<br /> - The name of an XSTLT file. Relative paths start at<br /> the directory containing the current CFML page.<br /> - The URL of an XSLT file; valid protocol identifiers<br /> include http, https, ftp, and file. Relative paths start<br /> at the directory containing the current CFML page. |
| parameters | struct | No |  | A structure containing XSL template parameter name-value<br /> pairs to use in transforming the document. The XSL transform<br /> defined in the xslString parameter uses these parameter values<br /> in processing the xml. |
