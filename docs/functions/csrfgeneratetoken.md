# csrfGenerateToken

Generates a random token and stores it in the session to protect against Cross-Site Request Forgery (CSRF) attacks. You can optionally provide a specific key to store in the session, and optionally force the generation of a new token.

```javascript
csrfGenerateToken( [key] [,forceNew] )
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| key | string | No |  | A random token is generated based on the key provided. This key is stored in the session. |
| forceNew | boolean | No | false | If set to true, a new token is generated every time the method is called. If false, and in the case where a token already exists [for the key], the same key is returned. |

## CSRF Form Protection

Use csrfGenerateToken() to generate a unique token for each form submission.

```javascript
<form action="#CGI.SCRIPT_NAME#" method="post">
	<input type="hidden" name="f#hash( 'userId', 'SHA-384', 'UTF-8', 1000 )#" value="#encrypt( userObj.getUserId(), rc.key, rc.alg, rc.enc )#">
	<input type="hidden" name="f#hash( 'formToken', 'SHA-512', 'UTF-8', 500 )#" value="#csrfGenerateToken( forceNew = true )#">
	<input type="text" name="emailAddress" value="#userObj.getEmailAddress()#">
	<input type="text" name="phoneNumber" value="#userObj.getPhoneNumber()#">
	<input type="submit" name="btnSubmit" value="Change Profile Info">
</form>
```

## CSRF Form Protection w/ specified key

Use csrfGenerateToken() to generate a unique token for each form submission. This example specifies a key to store the token into the session with.

```javascript
<form action="#CGI.SCRIPT_NAME#" method="post">
	<input type="hidden" name="f#hash( 'userId', 'SHA-384', 'UTF-8', 1000 )#" value="#encrypt( userObj.getUserId(), rc.key, rc.alg, rc.enc )#">
	<input type="hidden" name="f#hash( 'formToken', 'SHA-512', 'UTF-8', 500 )#" value="#csrfGenerateToken( key = 'profile', forceNew = true )#">
	<input type="text" name="emailAddress" value="#userObj.getEmailAddress()#">
	<input type="text" name="phoneNumber" value="#userObj.getPhoneNumber()#">
	<input type="submit" name="btnSubmit" value="Change Profile Info">
</form>
```

## CSRF Form Protection w/ automated key generation

Use csrfGenerateToken() to generate a unique token for each form submission. This example specifies a key automatically to store the token into the session with (for multiple open browser tabs).

```javascript
<cfset tokenVar = 't' & lCase( hash( createUUID() & randRange( 1000, 100000 ), 'MD5', 'UTF-8', 250 ) )>
<form action="#CGI.SCRIPT_NAME#" method="post">
	<input type="hidden" name="f#hash( 'userId', 'SHA-384', 'UTF-8', 1000 )#" value="#encrypt( userObj.getUserId(), rc.key, rc.alg, rc.enc )#">
	<input type="hidden" name="f#hash( 'tokenVar', 'SHA-512', 'UTF-8', 500 )#" value="#tokenVar#">
	<input type="hidden" name="f#hash( 'formToken', 'SHA-512', 'UTF-8', 500 )#" value="#csrfGenerateToken( key = tokenVar, forceNew = true )#">
	<input type="text" name="emailAddress" value="#userObj.getEmailAddress()#">
	<input type="text" name="phoneNumber" value="#userObj.getPhoneNumber()#">
	<input type="submit" name="btnSubmit" value="Change Profile Info">
</form>
```
