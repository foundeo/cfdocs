# cflocation

Stops execution of the current page and redirects to the specified URI.

### Syntax

```html
<cflocation url="page.cfm" addtoken="false" statusCode="301">
```

### Script Syntax

```javascript
location("mypage.cfm", "false", "301");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| url | string | Yes |  | URI or URL to redirect to. |
| addtoken | boolean | No | true | Appends the CFID, CFTOKEN, JSESSIONID and possibly other session/client identifiers to the URL. Security best practices recommend setting this to false. |
| statuscode | numeric | No | 302 | The 30X HTTP status code. CF8+ |

## Script Syntax

```html
location("mypage.cfm", "false", "301");
```

## Tag Syntax

```html
<cflocation url="mypage.cfm" addToken="false" statusCode="301">
```
