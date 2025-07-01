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
| action | string | Yes |  | cfml2wddx: serialize CFML to WDDX<br /> wddx2cfml: deserialize WDDX to CFML<br /> cfml2js: serialize CFML to JavaScript<br /> wddx2js: deserialize WDDX to JavaScript |
| input | string | Yes |  | A value to process |
| output | variableName | No |  | Name of variable for output. If action = "WDDX2JS" or<br /> "CFML2JS", and this attribute is omitted, result is output<br /> in HTML stream. |
| toplevelvariable | string | No |  | Name of top-level JavaScript object created by<br /> deserialization. The object is an instance of the<br /> WddxRecordset object. |
| usetimezoneinfo | boolean | No | YES | Whether to output time-zone information when serializing<br /> CFML to WDDX.<br /> - Yes: the hour-minute offset, represented in ISO8601<br /> format, is output.<br /> - No: the local time is output. |
| validate | boolean | No | NO | Applies if action = "wddx2cfml" or "wddx2js".<br /> - Yes: validates WDDX input with an XML parser using<br /> WDDX DTD. If parser processes input without error,<br /> packet is deserialized. Otherwise, an error is<br /> thrown.<br /> - No: no input validation |

## Convert cron job file to cfml

Reads instance's scheduled tasks file and converts it into CFML collection

```html
<cfset local.FileContents = FileRead("D:/ColdFusion/#Instance#/lib/neo-cron.xml") />
						<cfwddx action="wddx2cfml" input="#local.FileContents#" output="local.structFileContents" />
<cfdump var="local.structFileContents"
```

### Expected Result: Dump of the Scheduled Tasks cron file stored in the local.structFileContents variable
