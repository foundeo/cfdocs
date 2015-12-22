# CGI Scope

The `CGI` server variables or `CGI` scope contains variables that are passed from the web server to the CFML server.

### `cgi.server_software`

The name of the web server / connector used to communicate with the CFML server. Example: `Apache/2.4.16 (Unix) mod_jk/1.2.40`

### `cgi.server_name`

The hostname or IP address of the web server. Typically this is the value of the `Host` header sent by the client in the HTTP request. 

Adobe CGI Documentation: https://helpx.adobe.com/coldfusion/cfml-reference/reserved-words-and-variables/cgi-environment-cgi-scope-variables/cgi-server-variables.html