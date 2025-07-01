# esapiEncode

Calling the various encodeFor functions: encodeForHTML, etc.

```javascript
esapiEncode(encodeFor,string)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| encodeFor | string | Yes |  | Encode for what, valid values are:
- css: for output inside Cascading Style Sheets (CSS)
- dn: for output in LDAP Distinguished Names
- html: for output inside HTML
- html_attr: for output inside HTML Attributes
- javascript: for output inside JavaScript
- ldap: for output in LDAP queries
- url: for output in URL
- vbscript: for output inside vbscript
- xml: for output inside XML
- xml_attr: for output inside XML Attributes
- xpath: for output in XPath. |
| string | string | Yes |  | String to encode. |
