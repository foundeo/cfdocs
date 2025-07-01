# getHTTPRequestData

Returns HTTP request headers and request body. The resulting structure contains the following keys:
	 content (the request body),
	 headers (a structure of request headers),
	 method (same as cgi.request_method),
	 protocol (same as cgi.server_protocol).

```javascript
getHTTPRequestData()
```

```javascript
returns struct
```
