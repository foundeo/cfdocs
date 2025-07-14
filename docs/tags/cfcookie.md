# cfcookie

Defines web browser cookie variables, including expiration and
 security options.

### Syntax

```html
<cfcookie name = "cookie name">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfcookie(name = "cookie name");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| name | string | Yes |  | Name of cookie variable. CFML converts cookie names<br /> to all-uppercase. Cookie names set using this tag can<br /> include any printable ASCII characters except commas,<br /> semicolons or white space characters. |  |
| value | string | No |  | Value to assign to cookie variable. Must be a string or<br /> variable that can be stored as a string. |  |
| expires | any | No |  | Expiration of cookie variable.<br /><br /> * The default: the cookie expires when the user closes the<br /> browser, that is, the cookie is "session only".<br /> * A date or date/time object (for example, 10/09/97)<br /> * A number of days (for example, 10, or 100)<br /> * now: deletes cookie from client cookie.txt file<br /> (but does not delete the corresponding variable the<br /> Cookie scope of the active page).<br /> * never: The cookie expires in 30 years from the time it<br /> was created (effectively never in web years). |  |
| secure | boolean | No |  | If browser does not support Secure Sockets Layer (SSL)<br /> security, the cookie is not sent. To use the cookie, the<br /> page must be accessed using the https protocol. |  |
| path | string | No |  | URL, within a domain, to which the cookie applies;<br /> typically a directory. Only pages in this path can use the<br /> cookie. By default, all pages on the server that set the<br /> cookie can access the cookie.<br /><br /> path = "/services/login" |  |
| domain | string | No |  | Domain in which cookie is valid and to which cookie content<br /> can be sent from the user's system. By default, the cookie<br /> is only available to the server that set it. Use this<br /> attribute to make the cookie available to other servers.<br /><br /> Must start with a period. If the value is a subdomain, the<br /> valid domain is all domain names that end with this string.<br /> This attribute sets the available subdomains on the site<br /> upon which the cookie can be used. |  |
| httpOnly | boolean | No |  | CF9+ Specify whether cookie is http cookie or not |  |
| encodevalue | boolean | No |  | CF10+ Specify if cookie value should be encoded |  |
| preserveCase | boolean | No | false | CF10+ Specify if cookie name should be case-sensitive |  |
| samesite | string | No |  | CF2018+ Tells browsers when and how to fire cookies in first-<br /> or third-party situations. SameSite is used to<br /> identify whether or not to allow a cookie to be<br /> accessed. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfcookie.md|none |

## Script Syntax

```html
cfcookie(name="TimeVisited", value=Now(), domain=".local.com", path="/coldfusion" expires=30, httponly="yes", encodevalue="yes" )
```

## Tag Syntax

```html
<cfcookie name="TimeVisited" value=Now() domain=".local.com" path="/coldfusion" expires=30 httponly="yes" encodevalue="yes" />
```

## Using Cookie Scope

```html
cookie.TimeVisited = { value="#Now()#", domain=".local.com", path="/coldfusion", expires=30, httponly="yes", encodevalue="yes" };
```

## Using CFHeader

```html
<cfheader name="Set-Cookie" value="TimeVisited=#Now()#; path=/coldfusion; domain=.local.com; expires=30; HttpOnly;"/>
```
