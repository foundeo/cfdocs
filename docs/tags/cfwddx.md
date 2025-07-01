# cfwddx

Serializes and deserializes CFML data structures to the
 XML-based WDDX format. The WDDX is an XML vocabulary for
 describing complex data structures in a standard, generic way.
 Implementing it lets you use the HTTP protocol to such
 information among application server platforms, application
 servers, and browsers.

 This tag generates JavaScript statements to instantiate
 JavaScript objects equivalent to the contents of a WDDX packet
 or CFML data structure. Interoperates with Unicode.

### Syntax

```html
<cfwddx action="cfml2wddx" input="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfwddx(action="cfml2wddx", input="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | cfml2wddx: serialize CFML to WDDX
 wddx2cfml: deserialize WDDX to CFML
 cfml2js: serialize CFML to JavaScript
 wddx2js: deserialize WDDX to JavaScript |
| input | string | Yes |  | A value to process |
| output | variableName | No |  | Name of variable for output. If action = "WDDX2JS" or
 "CFML2JS", and this attribute is omitted, result is output
 in HTML stream. |
| toplevelvariable | string | No |  | Name of top-level JavaScript object created by
 deserialization. The object is an instance of the
 WddxRecordset object. |
| usetimezoneinfo | boolean | No | YES | Whether to output time-zone information when serializing
 CFML to WDDX.
 - Yes: the hour-minute offset, represented in ISO8601
 format, is output.
 - No: the local time is output. |
| validate | boolean | No | NO | Applies if action = "wddx2cfml" or "wddx2js".
 - Yes: validates WDDX input with an XML parser using
 WDDX DTD. If parser processes input without error,
 packet is deserialized. Otherwise, an error is
 thrown.
 - No: no input validation |

## Convert cron job file to cfml

Reads instance's scheduled tasks file and converts it into CFML collection

```html
<cfset local.FileContents = FileRead("D:/ColdFusion/#Instance#/lib/neo-cron.xml") />
						<cfwddx action="wddx2cfml" input="#local.FileContents#" output="local.structFileContents" />
<cfdump var="local.structFileContents"
```

### Expected Result: Dump of the Scheduled Tasks cron file stored in the local.structFileContents variable
