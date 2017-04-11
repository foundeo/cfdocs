# CGI Scope

## CGI Server Variables

The `CGI` server variables or `CGI` scope contains variables that are passed from the web server to the CFML server.

### `cgi.server_software`

The name of the web server / connector used to communicate with the CFML server. Example: `Apache/2.4.16 (Unix) mod_jk/1.2.40`

### `cgi.server_name`

The hostname or IP address of the web server. Typically this is the value of the `Host` header sent by the client in the HTTP request. 

Adobe CGI Server Variables Documentation: https://helpx.adobe.com/coldfusion/cfml-reference/reserved-words-and-variables/cgi-environment-cgi-scope-variables/cgi-server-variables.html


## CGI Client Variables

The `CGI` client variables or `CGI` scope also contains variables that are passed from the browser to the CFML server in the request header.

### `cgi.http_user_agent`

Browser information of the internet browser used by the client. For e.g. `Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0`

Adobe CGI Client Variables Documentation: https://helpx.adobe.com/coldfusion/cfml-reference/reserved-words-and-variables/cgi-environment-cgi-scope-variables/cgi-client-variables.html
