# cfntauthenticate

Authenticates a user name and password against the
 NT domain on which ColdFusion server is running,
 and optionally retrieves the user's groups.

### Syntax

```html
<cfntauthenticate username="" password="" domain="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfntauthenticate(username="", password="", domain="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| username | string | Yes |  | User's login name. |
| password | string | Yes |  | User's login name. |
| domain | string | Yes |  | Domain against which to authenticate the user. The<br /> ColdFusion J2EE server must be running on this domain. |
| result | variableName | No | cfntauthenticate | Name of the variable in which to return the results.<br /> Default: cfntauthenticate |
| listgroups | boolean | No | NO | Boolean value specifying whether to Include a<br /> comma-delimited list of the user's groups in the<br /> result structure.<br /> Default: false |
| throwonerror | boolean | No | NO | Boolean value specifying whether to throw an<br /> exception if the validation fails. If this attribute is true,<br /> ColdFusion throws an error if the user name or password is<br /> invalid; the application must handle such errors in a<br /> try/catch block or ColdFusion error handler page.<br /> Default: false |
