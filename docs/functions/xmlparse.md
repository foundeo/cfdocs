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
| xmlString | string | Yes |  | Any of the following:
 - A string containing XML text.
 - The name of an XML file.
 - The URL of an XML file; valid protocol identifiers
 include http, https, ftp, and file. |
| caseSensitive | boolean | No | NO | Maintains the case of document elements and attributes.
 Default: false |
| validator | string | No |  | Any of the following:
 - The name of a Document Type Definition (DTD) or
 XML Schema file.
 - The URL of a DTD or Schema file; valid protocol
 identifiers include http, https, ftp, and file.
 - A string representation of a DTD or Schema.
 - An empty string; in this case, the XML file must
 contain an embedded DTD or Schema identifier, which
 is used to validate the document. |

## Parse XML read from a file

Read XML from a file and use the xmlParse method to parse it into an XML data structure.

```javascript
<cffile action="read" file="#tempxml#" variable="xmlString">
<cfset myXML = xmlParse(xmlString)>
```
