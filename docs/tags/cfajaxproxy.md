# cfajaxproxy

Creates a JavaScript proxy for a ColdFusion component, for use in an AJAX client.

### Syntax

```html
<cfajaxproxy>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfajaxproxy();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| cfc | string | No |  | The CFC for which to create a proxy. You must specify a dot-delimited path to the CFC.<br /> The path can be absolute or relative to location of the CFML page.<br /> For example, if the myCFC CFC is in the cfcs subdirectory of the ColdFusion page, specify cfcs.myCFC.<br /> On UNIX based systems, the tag searches first for a file who's name or path corresponds to the specified name or path, but is in all lower case.<br /> If it does not find it, ColdFusion then searches for a file name or path that corresponds to the attribute value exactly, with identical character casing. (required) |
| jsclassname | string | No |  | The name to use for the JavaScript proxy class. (optional) |
| bind | string | No |  | A bind expression that specifies a CFC method, JavaScript function, or URL to call. |
| onerror | string | No |  | The name of a JavaScript function to invoke when a bind, specified by the bind attribute fails. The function must take two arguments: an error code and an error message. |
| onsuccess | string | No |  | The name of a JavaScript function to invoke when a bind, specified by the bind attribute succeeds. The function must take one argument, the bind function return value. If the bind function is a CFC function, the return value is automatically converted to a JavaScript variable before being passed to the onSuccess function. |
