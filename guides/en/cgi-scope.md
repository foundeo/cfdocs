# CGI Scope

## CGI Server Variables

The `CGI` server variables or `CGI` scope contains variables that are passed from the web server to the CFML server.

### `cgi.server_software`

The name of the web server / connector used to communicate with the CFML server. Example: `Apache/2.4.16 (Unix) mod_jk/1.2.40`

### `cgi.server_name`

The hostname or IP address of the web server. Typically this is the value of the `Host` header sent by the client in the HTTP request. 

### `cgi.server_protocol`

The name and revision of the protocol used for the server request. Example: `HTTP/1.1`

### `cgi.server_port`

The TCP port number that the request was received on.

### `cgi.request_method`

This the method that was used to make the request. Examples: `GET`, `POST`, `PUT`, `DELETE`

### `cgi.path_info`

This is the extra path information that follows the virtual path of the requested script. For the request `/index.cfm/order/123`, `cgi.path_info` would contain `/order/123`.

### `cgi.path_translated`

This is the physical path to the requested script. 

### `cgi.script_name`

The virtual path to the requested script. 

### `cgi.query_string`

The string that follows `?` in the request URL. Example: `id=1&action=update` 

### `cgi.remote_host`

The hostname of the client that made the request to the web server. If the server does not have that information then it may be the IP address.

### `cgi.remote_addr`

The IP address of the client that made the connection to the web server. In basic server configurations this will be the IP address of the user or their proxy server. If your CF server is behind a reverse proxy or load balancer, then it may be the IP address of the load balancer or proxy server. In that case you may need to look at a HTTP header such as `X-Forwarded-For` to get the end users _real_ ip address. 

### `cgi.auth_type`

The authentication method used, if the server supports user authentication and the user is authenticated. Example: `BASIC`

### `cgi.auth_user`

The username of the authenticated user. Also available as `cgi.remote_user`

### `cgi.content_type`

This would be the [MIME type](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types) of data being sent with the server request as the request message-body. This will be for HTTP requests that support sending additional data such as `POST` or `PUT`. Example: `application/x-www-form-urlencoded` or `application/json`

### `cgi.content_length`

This would be the size of the data being sent with the server request as in the request message-body. This will not be set for requests that do not contain data in the message-body.

Adobe CGI Server Variables Documentation: https://helpx.adobe.com/coldfusion/cfml-reference/reserved-words-and-variables/cgi-environment-cgi-scope-variables/cgi-server-variables.html


## CGI Client Variables

The `CGI` client variables or `CGI` scope also contains variables that are passed from the browser to the CFML server in the request header.

### `cgi.http_user_agent`

Browser information of the internet browser used by the client. For e.g. `Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0`

Adobe CGI Client Variables Documentation: https://helpx.adobe.com/coldfusion/cfml-reference/reserved-words-and-variables/cgi-environment-cgi-scope-variables/cgi-client-variables.html
