# cfloginuser

Identifies an authenticated user to CFML. Specifies the
 user ID and roles. Used within a cflogin tag.

### Syntax

```html
<cfloginuser name="" password="" roles="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfloginuser(name="", password="", roles="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | A username. |
| password | string | Yes |  | A user password. |
| roles | string | Yes |  | A comma-delimited list of role identifiers.<br /><br /> CFML processes spaces in a list element as part of<br /> the element. |

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
