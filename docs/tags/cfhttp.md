# cfhttp

Generates an HTTP request and parses the response from the server into a structure. The result structure has the following keys:
`statusCode` : The HTTP response code and reason string.
`fileContent` : The body of the HTTP response. Usually a string, but could also be a Byte Array.
`responseHeader` : A structure of response headers, the keys are header names and the values are either the header value or an array of values if multiple headers with the same name exist.
`errorDetail` : An error message if applicable.
`mimeType` : The mime type returned in the Content-Type response header.
`text` : a boolean indicating if the response body is text or binary.
`charset` : The character set returned in the Content-Type header.
`header` : All the http response headers as a single string.

### Syntax

```html
<cfhttp url="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfhttp(url="");
```
