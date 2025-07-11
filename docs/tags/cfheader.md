# cfheader

Generates custom HTTP response headers to return to the client.

### Syntax

```html
<cfheader>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfheader();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | No |  | Header name<br /> Required if statusCode not specified |
| value | string | No |  | HTTP header value |
| charset | string | No |  | The character encoding in which to encode the header value.<br /><br /> For more information on character encodings, see:<br /> www.w3.org/International/O-charset.html. |
| statuscode | numeric | No |  | HTTP status code<br /> Required if name not specified |
| statustext | string | No |  | Explains status code |

## Set a HTTP Response Header

Use cfheader to return a Content-Security-Policy HTTP response header.

```html
<cfheader name="Content-Security-Policy" value="default-src 'self'">
```

## Return a Custom Status Code and Status Text

Uses cfheader to return a 405 Method Not Allowed status when method is not POST.

```html
<cfif uCase(cgi.request_method) IS NOT "POST">
    <cfheader statuscode="405" statustext="Method Not Allowed">
    Sorry POST only.<cfabort>
</cfif>
```

## Content-Type header in CFScript

CFScript syntax to return a JSON content type header.

```html
cfheader( name="Content-Type", value="application/json" )
```
