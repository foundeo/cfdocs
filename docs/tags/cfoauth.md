# cfoauth

The <oauth> tag allows you to easily integrate third-party Oauth 2 authentication provider in your application. This tag currently supports Facebook and Google authentication. Also, this tag supports Oauth providers that support the Oauth 2 protocols. For instance, Microsoft and GitHub. 

If type is not Facebook or Google then use access token endpoint and other attributes.

### Syntax

```html
<cfoauth>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfoauth();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| Type | string | Yes |  | Currently supported values are Facebook and Google. Implicitly supports the authentication workflow of Facebook and Google. |
| clientid | string | Yes |  | Unique ID generated while registering your application with the Oauth provider. |
| scope | string | No |  | Scopes are the permissions that a developer seeks from the users. These are usually comma separated values of permissions.
Refer to the Oauth provider's documentations for more information.
For example, after Facebook authentication, if a developer wants to access an email address and then the friend lists of a user, the developer will use:
scope=email,read_friendlists.
Note: The scope name varies for different Oauth providers. |
| state | string | No |  | The state variable is used to pass back any information to your web application after the authentication and redirection are completed. Any value passed to this attribute is returned to the web application after authentication. This is useful for CSRF (Cross-site request forgery) protection. You can use ColdFusion’s security-related CSRF functions for this attribute. |
| authendpoint | string | No |  | If type is not specified, this will be used as endpoint URL to be invoked for user authentication. |
| accesstokenendpoint | string | No |  | If type is not specified this will be used as end point URL to be invoked for app authentication. |
| secretkey | string | No |  | Parameter is the App Secret as displayed in your social media app's settings. |
| result | variableName | No |  | A struct which will have login info of the user including login success/failure, failure reason, user name, user id. |
| redirecturi | string | No |  | This will default to the URL which is executing the code. So if in oauth settings user has given app URL as : http://domainname/appname And the file executing the code is : http://domainname/appname/login.cfm The redirect URI will be : http://domainname/appname/login.cfm |
| urlparams | string | No |  | Extra options which will be passed as URL query string to authendpoint. |

## Adobe Example

The following example shows a simple authentication:

```html
<cflogin>
<cfoauth
	type="Facebook"
	clientid="YOUR_CLIENT_ID"
	secretkey="YOUR_SECRET_KEY"
	result="res"
	redirecturi="http://localhost:8500/doc/login.cfm"
>
<cfloginuser name="#res.other.username#" password="#res.access_token#" roles="user"/>
</cflogin>
<cflocation url="http://localhost:8500/doc/index.cfm">
```

## CFSCRIPT Example

The following example shows a simple authentication:

```html
cflogin() {
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
