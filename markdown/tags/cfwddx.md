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
