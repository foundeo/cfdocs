# xmlParse

Converts an XML document that is represented as a string
 variable into an XML document object.

```javascript
xmlParse(xmlString [, caseSensitive] [, validator])
```

```javascript
returns xml
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| xmlString | string | Yes |  | Any of the following:<br /> - A string containing XML text.<br /> - The name of an XML file.<br /> - The URL of an XML file; valid protocol identifiers<br /> include http, https, ftp, and file. |
| caseSensitive | boolean | No | NO | Maintains the case of document elements and attributes.<br /> Default: false |
| validator | string | No |  | Any of the following:<br /> - The name of a Document Type Definition (DTD) or<br /> XML Schema file.<br /> - The URL of a DTD or Schema file; valid protocol<br /> identifiers include http, https, ftp, and file.<br /> - A string representation of a DTD or Schema.<br /> - An empty string; in this case, the XML file must<br /> contain an embedded DTD or Schema identifier, which<br /> is used to validate the document. |

## Parse XML read from a file

Read XML from a file and use the xmlParse method to parse it into an XML data structure.

```javascript
<cffile action="read" file="#tempxml#" variable="xmlString">
<cfset myXML = xmlParse(xmlString)>
```
