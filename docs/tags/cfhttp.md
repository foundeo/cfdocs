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

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| url | string | Yes |  | Address of the resource on the server which will handle
 the request. The URL must include the hostname or IP
 address.

 If you do not specify the transaction protocol (http:// or
 https://), CFML defaults to http.

 If you specify a port number in this attribute, it
 overrides any port attribute value.

 The cfhttpparam tag URL attribute appends query string
 attribute-value pairs to the URL. |
| port | numeric | No | 80/443 | Port number on the server to which to send the request.
 A port value in the url attribute overrides this value.
 Defaults to standard for either http or https |
| method | string | No | get | * GET Requests information from the server. Any data that
 the server requires to identify the requested
 information must be in the URL or in cfhttp type="URL"
 tags.
 * POST Sends information to the server for processing.
 Requires one or more cfhttpparam tags. Often used for
 submitting form-like data.
 * PUT Requests the server to store the message body at the
 specified URL. Use this method to send files to the
 server.
 * DELETE Requests the server to delete the specified URL.
 * HEAD Identical to the GET method, but the server does
 not send a message body in the response. Use this
 method for testing hypertext links for validity and
 accessibility, determining the type or modification
 time of a document, or determining the type of server.
 * TRACE Requests that the server echo the received HTTP
 headers back to the sender in the response body. Trace
 requests cannot have bodies. This method enables the
 CFML application to see what is being received
 at the server and use that data for testing or
 diagnostic information.
 * OPTIONS A request for information about the
 communication options available for the server or the
 specified URL. This method enables the CFML
 application to determine the options and requirements
 associated with a URL, or the capabilities of a server,
 without requesting any additional activity by the
 server.
 * PATCH: requests partial updates to the requested entity at the specified URL. Use this method to modify parts of the resource whereas use PUT method to completely replace the resource at the specified URL. CF11+ |
| proxyserver | string | No |  | The proxy server required to access the URL. |
| proxyport | numeric | No | 80 | The port to use on the proxy server. |
| proxyuser | string | No |  | The user ID to send to the proxy server. |
| proxypassword | string | No |  | The user's password on the proxy server. |
| username | string | No |  | A username. May be required by server. |
| password | string | No |  | A password. May be required by server |
| useragent | string | No | ColdFusion | Text to put in the user agent request header. Used to
 identify the request client software. Can make the
 CFML application appear to be a browser. |
| charset | string | No |  | The character encoding of the request, including the URL
 query string and form or file data, and the response.

 For more information on character encodings, see:
 www.w3.org/International/O-charset.html. |
| resolveurl | boolean | No | NO | No does not resolve URLs in the response body. As a result,
 any relative URL links in the response body do not work.
 Yes resolves URLs in the response body to absolute URLs,
 including the port number, so that links in a retrieved
 page remain functional. |
| throwonerror | boolean | No | YES | Yes if the server returns an error response code, throws
 an exception that can be caught using the cftry and
 cfcatch or CFML error pages.
 No does not throw an exception if an error response is
 returned. In this case, your application can use the
 cfhttp.StatusCode variable to determine if there was
 an error and its cause. |
| redirect | boolean | No | YES | If the response header includes a Location field,
 determines whether to redirect execution to the URL
 specified in the field. |
| timeout | numeric | No |  | Value, in seconds of the maximum time the request can take.
 If the timeout passes without a response, CFML
 considers the request to have failed. |
| getasbinary | string | No | auto | * No If CFML does not recognize the response body
 type as text, convert it to a CFML object.
 * Auto If CFML does not recognize the response body
 type as text, convert it to CFML Binary type data.
 * Yes Always convert the response body content into
 CFML Binary type data, even if CFML
 recognizes the response body type as text.
 * Never Prevents the automatic conversion of certain
 MIME types to the ColdFusion Binary type data;
 treats the returned content as text. CF7.01+ |
| result | string | No | cfhttp | CF7+ Specifies the name of the variable in which you want the result returned. |
| delimiter | string | No |  | A character that separates query columns. The response body must use this character to separate the query columns. |
| name | string | No |  | Tells ColdFusion to create a query object with the given
 name from the returned HTTP response body. |
| columns | string | No |  | The column names for the query, separated by commas, with no
 spaces. Column names must start with a letter. The remaining
 characters can be letters, numbers, or underscore
 characters (_).
 
 If there are no column name headers in the response,
 specify this attribute to identify the column names.
 
 If you specify this attribute, and the firstrowasHeader
 attribute is True (the default), the column names specified
 by this attribute replace the first line of the response.
 You can use this behavior to replace the column names
 retrieved by the request with your own names.
 
 If a duplicate column heading is encountered in either this
 attribute or in the column names from the response,
 ColdFusion appends an underscore to the name to make it
 unique.
 
 If the number of columns specified by this attribute does
 not equal the number of columns in the HTTP response body,
 ColdFusion generates an error. |
| firstrowasheaders | boolean | No | YES | Determines how ColdFusion processes the first row of the
 query record set:
 * yes: processes the first row as column heads. If you
 specify a columns attribute, ColdFusion ignores the
 first row of the file.
 * no: processes the first row as data. If you do not
 specify a columns attribute, ColdFusion generates column
 names by appending numbers to the word "column"; for
 example, "column_1". |
| textqualifier | string | No | " | A character that, optionally, specifies the start and end
 of a text column. This character must surround any text
 fields in the response body that contain the delimiter
 character as part of the field value.
 
 To include this character in column text, escape it by
 using two characters in place of one. For example, if the
 qualifier is a double-quotation mark, escape it as "". |
| file | string | No |  | Name of the file in which to store the response body. The directory that the file will be written to must be passed in the `path` attribute. |
| multipart | boolean | No | NO | Tells ColdFusion to send all data specified by cfhttpparam type="formField" tags as multipart form data, with a Content-Type of multipart/form-data. |
| multipartType | string | No | form-data | Allows you to set the multipart header field to related or form-data. By default, the value is form-data. |
| clientcertpassword | string | No |  | Password used to decrypt the client certificate. |
| path | string | No |  | Required if File is specified. Tells ColdFusion to save the HTTP response body in a file. Contains the absolute path to the directory in which to store the file. |
| clientcert | string | No |  | The full path to a PKCS12 format file that contains the client certificate for the request. |
| compression | string | No |  | Compression type |
| authType | string | No | BASIC | CF11+ NOTE When authentication type is NTLM, do not set the redirect as false. |
| domain | string | No |  | CF11+ The domain name for authentication. (Use for NTLM-based authentication) |
| workstation | string | No |  | CF11+ The workstation name for authentication. (Use for NTLM-based authentication) |
| cachedwithin | numeric | No |  | Lucee5+ Timespan, using the CreateTimeSpan function. If original
 file date falls within the time span, cached file data is
 used. CreateTimeSpan defines a period from the present, back. |
| encodeurl | boolean | No | true | Allow the CFML engine to encode the url provided in the url attribute, or prevent it from doing so. |

## Script Syntax (CF11+)

```html
cfhttp(method="GET", charset="utf-8", url="https://www.google.com/", result="result") {
    cfhttpparam(name="q", type="url", value="cfml");
}
writeDump(result);
```

## Alternate Script Syntax (CF9+). Removed in ColdFusion 2025.

```html
httpService = new http(method = "GET", charset = "utf-8", url = "https://www.google.com/");
httpService.addParam(name = "q", type = "url", value = "cfml");
result = httpService.send().getPrefix();
writeDump(result);
```

## CFHTTP Tag Syntax

```html
<cfhttp result="result" method="GET" charset="utf-8" url="https://www.google.com/">
    <cfhttpparam name="q" type="url" value="cfml">
</cfhttp>
<cfdump var="#result#">
```
