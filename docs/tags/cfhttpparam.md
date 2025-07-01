# cfhttpparam

Allowed inside cfhttp tag bodies only. Required for cfhttp POST
 operations. Optional for all others. Specifies parameters to
 build an HTTP request.

### Syntax

```html
<cfhttpparam type="header">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfhttpparam(type="header");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| type | string | Yes |  | The type of data to send

 `header`: Specifies an HTTP header. Does not URL encode the value

`body`: Specifies that the `value` is the body of the HTTP request.

`xml`: Identifies the request as having a content-type of
 `text/xml` and specifies that the `value` attribute contains the body of the HTTP request.

`cgi`: Same as `header` but URL encodes the `value` by default.

`file`: Tells CFML to send the contents of the specified file.

`url`: Specifies a URL query string name-value pair to append to the cfhttp url attribute. URL encodes the value.

`formfield`: Specifies a form field to send. URL encodes the value by default.

`cookie`: Specifies a cookie to send as an HTTP header. URL encodes the value. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfhttpparam.md|cookie |
| name | string | No |  | Variable name for data that is passed. Ignored for `body` and `xml` type. For `file` type, specifies the filename. |  |
| value | string | No |  | Value of the data that is sent. Ignored for `file` type. The value must contain string data or data that CFML can convert to a string for all type attributes except Body. Body types can have string or binary values. |  |
| file | string | No |  | Applies to `file` type; ignored for all other types. The absolute path to the file that is sent with the request. |  |
| encoded | boolean | No |  | Applies to `formfield` and `cgi` types; ignored for all other
 types. Specifies whether to URLEncode the form field or
 header. |  |
| mimetype | string | No |  | Applies to `file` type; invalid for all other types.
 Specifies the MIME media type of the file contents.
 The content type can include an identifier for the
 character encoding of the file; for example, text/html;
 charset=ISO-8859-1 indicates that the file is HTML text in
 the ISO Latin-1 character encoding. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfhttpparam.md|text/html |

## Script Syntax (CF11+)

```html
cfhttp(method="POST", charset="utf-8", url="https://www.google.com/", result="result") {
    cfhttpparam(name="q", type="formfield", value="cfml");
}
writeDump(result);
```

## Alternate Script Syntax (CF9+). Removed in ColdFusion 2025.

```html
httpService = new http(method = "POST", charset = "utf-8", url = "https://www.google.com/");
httpService.addParam(name = "q", type = "formfield", value = "cfml");
result = httpService.send().getPrefix();
writeDump(result);
```

## CFHTTP Tag Syntax

```html
<cfhttp result="result" method="POST" charset="utf-8" url="https://www.google.com/">
    <cfhttpparam name="q" type="formfield" value="cfml">
</cfhttp>
<cfdump var="#result#">
```
