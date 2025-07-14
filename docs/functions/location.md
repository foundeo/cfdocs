# location

Stops execution of the current page and redirects to the given URL.

```javascript
location(url [, addtoken] [, statuscode])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| url | string | Yes |  | URL of web page to open. |  |
| addtoken | boolean | No | YES | clientManagement must be enabled (see cfapplication). |  |
| statuscode | numeric | No | 302 | The HTTP status code | /Users/garethedwards/development/github/cfdocs/docs/functions/location.md|307 |

## Simple Example

Relocates to a different page if user is not logged in.

```javascript
if (!structKeyExists(session, "userID") {
	location("login.cfm");
}
```
