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
| name | string | Yes |  | Name of cookie variable. CFML converts cookie names
 to all-uppercase. Cookie names set using this tag can
 include any printable ASCII characters except commas,
 semicolons or white space characters. |  |
| value | string | No |  | Value to assign to cookie variable. Must be a string or
 variable that can be stored as a string. |  |
| expires | any | No |  | Expiration of cookie variable.

 * The default: the cookie expires when the user closes the
 browser, that is, the cookie is "session only".
 * A date or date/time object (for example, 10/09/97)
 * A number of days (for example, 10, or 100)
 * now: deletes cookie from client cookie.txt file
 (but does not delete the corresponding variable the
 Cookie scope of the active page).
 * never: The cookie expires in 30 years from the time it
 was created (effectively never in web years). |  |
| secure | boolean | No |  | If browser does not support Secure Sockets Layer (SSL)
 security, the cookie is not sent. To use the cookie, the
 page must be accessed using the https protocol. |  |
| path | string | No |  | URL, within a domain, to which the cookie applies;
 typically a directory. Only pages in this path can use the
 cookie. By default, all pages on the server that set the
 cookie can access the cookie.

 path = "/services/login" |  |
| domain | string | No |  | Domain in which cookie is valid and to which cookie content
 can be sent from the user's system. By default, the cookie
 is only available to the server that set it. Use this
 attribute to make the cookie available to other servers.

 Must start with a period. If the value is a subdomain, the
 valid domain is all domain names that end with this string.
 This attribute sets the available subdomains on the site
 upon which the cookie can be used. |  |
| httpOnly | boolean | No |  | CF9+ Specify whether cookie is http cookie or not |  |
| encodevalue | boolean | No |  | CF10+ Specify if cookie value should be encoded |  |
| preserveCase | boolean | No | false | CF10+ Specify if cookie name should be case-sensitive |  |
| samesite | string | No |  | CF2018+ Tells browsers when and how to fire cookies in first-
 or third-party situations. SameSite is used to
 identify whether or not to allow a cookie to be
 accessed. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfcookie.md|none |

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
