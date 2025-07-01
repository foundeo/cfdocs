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
| encodeFor | string | Yes |  | Encode for what, valid values are:<br />- css: for output inside Cascading Style Sheets (CSS)<br />- dn: for output in LDAP Distinguished Names<br />- html: for output inside HTML<br />- html_attr: for output inside HTML Attributes<br />- javascript: for output inside JavaScript<br />- ldap: for output in LDAP queries<br />- url: for output in URL<br />- vbscript: for output inside vbscript<br />- xml: for output inside XML<br />- xml_attr: for output inside XML Attributes<br />- xpath: for output in XPath. |
| string | string | Yes |  | String to encode. |
