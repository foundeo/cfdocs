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
| url | string | Yes |  | Address of the resource on the server which will handle<br /> the request. The URL must include the hostname or IP<br /> address.<br /><br /> If you do not specify the transaction protocol (http:// or<br /> https://), CFML defaults to http.<br /><br /> If you specify a port number in this attribute, it<br /> overrides any port attribute value.<br /><br /> The cfhttpparam tag URL attribute appends query string<br /> attribute-value pairs to the URL. |
| port | numeric | No | 80/443 | Port number on the server to which to send the request.<br /> A port value in the url attribute overrides this value.<br /> Defaults to standard for either http or https |
| method | string | No | get | * GET Requests information from the server. Any data that<br /> the server requires to identify the requested<br /> information must be in the URL or in cfhttp type="URL"<br /> tags.<br /> * POST Sends information to the server for processing.<br /> Requires one or more cfhttpparam tags. Often used for<br /> submitting form-like data.<br /> * PUT Requests the server to store the message body at the<br /> specified URL. Use this method to send files to the<br /> server.<br /> * DELETE Requests the server to delete the specified URL.<br /> * HEAD Identical to the GET method, but the server does<br /> not send a message body in the response. Use this<br /> method for testing hypertext links for validity and<br /> accessibility, determining the type or modification<br /> time of a document, or determining the type of server.<br /> * TRACE Requests that the server echo the received HTTP<br /> headers back to the sender in the response body. Trace<br /> requests cannot have bodies. This method enables the<br /> CFML application to see what is being received<br /> at the server and use that data for testing or<br /> diagnostic information.<br /> * OPTIONS A request for information about the<br /> communication options available for the server or the<br /> specified URL. This method enables the CFML<br /> application to determine the options and requirements<br /> associated with a URL, or the capabilities of a server,<br /> without requesting any additional activity by the<br /> server.<br /> * PATCH: requests partial updates to the requested entity at the specified URL. Use this method to modify parts of the resource whereas use PUT method to completely replace the resource at the specified URL. CF11+ |
| proxyserver | string | No |  | The proxy server required to access the URL. |
| proxyport | numeric | No | 80 | The port to use on the proxy server. |
| proxyuser | string | No |  | The user ID to send to the proxy server. |
| proxypassword | string | No |  | The user's password on the proxy server. |
| username | string | No |  | A username. May be required by server. |
| password | string | No |  | A password. May be required by server |
| useragent | string | No | ColdFusion | Text to put in the user agent request header. Used to<br /> identify the request client software. Can make the<br /> CFML application appear to be a browser. |
| charset | string | No |  | The character encoding of the request, including the URL<br /> query string and form or file data, and the response.<br /><br /> For more information on character encodings, see:<br /> www.w3.org/International/O-charset.html. |
| resolveurl | boolean | No | NO | No does not resolve URLs in the response body. As a result,<br /> any relative URL links in the response body do not work.<br /> Yes resolves URLs in the response body to absolute URLs,<br /> including the port number, so that links in a retrieved<br /> page remain functional. |
| throwonerror | boolean | No | YES | Yes if the server returns an error response code, throws<br /> an exception that can be caught using the cftry and<br /> cfcatch or CFML error pages.<br /> No does not throw an exception if an error response is<br /> returned. In this case, your application can use the<br /> cfhttp.StatusCode variable to determine if there was<br /> an error and its cause. |
| redirect | boolean | No | YES | If the response header includes a Location field,<br /> determines whether to redirect execution to the URL<br /> specified in the field. |
| timeout | numeric | No |  | Value, in seconds of the maximum time the request can take.<br /> If the timeout passes without a response, CFML<br /> considers the request to have failed. |
| getasbinary | string | No | auto | * No If CFML does not recognize the response body<br /> type as text, convert it to a CFML object.<br /> * Auto If CFML does not recognize the response body<br /> type as text, convert it to CFML Binary type data.<br /> * Yes Always convert the response body content into<br /> CFML Binary type data, even if CFML<br /> recognizes the response body type as text.<br /> * Never Prevents the automatic conversion of certain<br /> MIME types to the ColdFusion Binary type data;<br /> treats the returned content as text. CF7.01+ |
| result | string | No | cfhttp | CF7+ Specifies the name of the variable in which you want the result returned. |
| delimiter | string | No |  | A character that separates query columns. The response body must use this character to separate the query columns. |
| name | string | No |  | Tells ColdFusion to create a query object with the given<br /> name from the returned HTTP response body. |
| columns | string | No |  | The column names for the query, separated by commas, with no<br /> spaces. Column names must start with a letter. The remaining<br /> characters can be letters, numbers, or underscore<br /> characters (_).<br /> <br /> If there are no column name headers in the response,<br /> specify this attribute to identify the column names.<br /> <br /> If you specify this attribute, and the firstrowasHeader<br /> attribute is True (the default), the column names specified<br /> by this attribute replace the first line of the response.<br /> You can use this behavior to replace the column names<br /> retrieved by the request with your own names.<br /> <br /> If a duplicate column heading is encountered in either this<br /> attribute or in the column names from the response,<br /> ColdFusion appends an underscore to the name to make it<br /> unique.<br /> <br /> If the number of columns specified by this attribute does<br /> not equal the number of columns in the HTTP response body,<br /> ColdFusion generates an error. |
| firstrowasheaders | boolean | No | YES | Determines how ColdFusion processes the first row of the<br /> query record set:<br /> * yes: processes the first row as column heads. If you<br /> specify a columns attribute, ColdFusion ignores the<br /> first row of the file.<br /> * no: processes the first row as data. If you do not<br /> specify a columns attribute, ColdFusion generates column<br /> names by appending numbers to the word "column"; for<br /> example, "column_1". |
| textqualifier | string | No | " | A character that, optionally, specifies the start and end<br /> of a text column. This character must surround any text<br /> fields in the response body that contain the delimiter<br /> character as part of the field value.<br /> <br /> To include this character in column text, escape it by<br /> using two characters in place of one. For example, if the<br /> qualifier is a double-quotation mark, escape it as "". |
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
| cachedwithin | numeric | No |  | Lucee5+ Timespan, using the CreateTimeSpan function. If original<br /> file date falls within the time span, cached file data is<br /> used. CreateTimeSpan defines a period from the present, back. |
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
