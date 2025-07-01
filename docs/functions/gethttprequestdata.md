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

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| includeBody | boolean | Yes | false | Whether return the body or not.<br /><br />NOTE: This can only be done once.<br />If you expect the body to contain content which causes an exception in ColdFusion, set it to false as well and process it yourself. | /Users/garethedwards/development/github/cfdocs/docs/functions/gethttprequestdata.md|false |

## GetHttpRequestData Example

Returns HTTP request headers and request body in structure format.

```javascript
writeDump(GetHttpRequestData());
```
