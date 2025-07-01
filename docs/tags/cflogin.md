# cflogin

A container for user login and authentication code. CFML
 runs the code in this tag if a user is not already logged in.
 You put code in the tag that authenticates the user and
 identifies the user with a set of roles. Used with cfloginuser
 tag.

### Syntax

```html
<cflogin>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cflogin();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| idletimeout | numeric | No |  | Time interval with no keyboard activity after which
 CFML logs the user off. Seconds. |
| applicationtoken | string | No |  | Unique application identifier. Limits the login validity to
 one application, as specified by the cfapplication tag. |
| cookiedomain | string | No |  | Domain of the cookie that is used to mark a user as logged
 in. Use this attribute to enable a user login cookie to
 work with multiple clustered servers in the same domain. |

## CFSCRIPT Example

The following example shows a simple authentication:

```html
cflogin(idletimeout=3600, applicationtoken='YOUR_APP_NAME', cookiedomain='YOUR_DOMAIN_NAME') {
 cfoauth(
 type="Google",
 clientid="YOUR_CLIENT_ID",
 secretkey="YOUR_GOOGLE_CLIENTSECRET",
 redirecturi="YOUR_CALLBACK_URI",
 result="res",
 scope="YOUR_SCOPES",
 state="cftoken=#cftoken#"
 );
 cfloginuser(name="#res.other.email#", password="#res.access_token#", roles="user");
 }
```
