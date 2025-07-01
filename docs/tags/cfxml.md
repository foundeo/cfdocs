# cfxml

Creates a CFML XML document object that contains the
 markup in the tag body. This tag can include XML and CFML tags.
 CFML processes the CFML code in the tag body, then assigns
 the resulting text to an XML document object variable.

### Syntax

```html
<cfxml variable="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfxml(variable="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| variable | string | Yes |  | Name of an XML variable |
| casesensitive | boolean | No | NO | Maintains the case of document elements and attributes |

## Script Syntax

Creates a new CFML XML document object.

```html
cfxml( variable="myXml" ) {
 writeOutput( '<?xml version="1.0"?><catalog><song id="1"><artist>Astley, Rick</artist><title>Never Gonna Give You Up</title></song></catalog>' );
 } 
 writeDump( myXml );
```
