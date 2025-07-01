# csrfVerifyToken

Validates the passed in token against the token stored in the session for a specific key. Used to help prevent Cross-Site Request Forgery (CSRF) attacks.

```javascript
csrfVerifyToken( token [,key] )
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| token | string | Yes |  | The passed in token that is to be validated against the token stored in the session. For Adobe Coldfusion, only the first 40 characters of the passed in token are used to verify. |
| key | string | No |  | The key against which the token was originally generated. |

## CSRF Form Validation

Use csrfVerifyToken() to Verify a unique token for each form submission.

```javascript
<cfscript>
	param name="FORM[ 'f' & hash( 'userId', 'SHA-384', 'UTF-8', 1000 )]" default="0";
	param name="FORM[ 'f' & hash( 'formToken', 'SHA-512', 'UTF-8', 500 )]" default="0";
	param name="FORM.emailAddress" default="";
	param name="FORM.phoneNumber" default="";

	if( !csrfVerifyToken( FORM[ 'f' & hash( 'formToken', 'SHA-512', 'UTF-8', 500 )] )
	) {
		// formToken is not a valid token
		// redirect user to login form (etc.)
	}
</cfscript>
```

## CSRF Form Validation w/ specified key

Use csrfVerifyToken() to Verify a unique token for each form submission.

```javascript
<cfscript>
	param name="FORM[ 'f' & hash( 'userId', 'SHA-384', 'UTF-8', 1000 )]" default="0";
	param name="FORM[ 'f' & hash( 'formToken', 'SHA-512', 'UTF-8', 500 )]" default="0";
	param name="FORM.emailAddress" default="";
	param name="FORM.phoneNumber" default="";

	if( !csrfVerifyToken( FORM[ 'f' & hash( 'formToken', 'SHA-512', 'UTF-8', 500 )], 'profile' )
	) {
		// formToken is not a valid token
		// redirect user to login form (etc.)
	}
</cfscript>
```

## CSRF Form Validation w/ automated key validation

Use csrfVerifyToken() to Verify a unique token with a unique session variable for each form submission (for multiple open browser tabs).

```javascript
<cfscript>
	param name="FORM[ 'f' & hash( 'userId', 'SHA-384', 'UTF-8', 1000 )]" default="0";
	param name="FORM[ 'f' & hash( 'tokenVar', 'SHA-512', 'UTF-8', 500 )]" default="0";
	param name="FORM[ 'f' & hash( 'formToken', 'SHA-512', 'UTF-8', 500 )]" default="0";
	param name="FORM.emailAddress" default="";
	param name="FORM.phoneNumber" default="";

	if( !csrfVerifyToken( FORM[ 'f' & hash( 'formToken', 'SHA-512', 'UTF-8', 500 )], FORM[ 'f' & hash( 'tokenVar', 'SHA-512', 'UTF-8', 500 )] )
	) {
		// formToken is not a valid token
		// redirect user to login form (etc.)
	}
</cfscript>
```
