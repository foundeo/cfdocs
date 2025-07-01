# cfapplication

Defines the scope of a CFML application and allows you to set various application specific settings. Consider using Application.cfc instead of Application.cfm files.

### Syntax

```html
<cfapplication>
```

### Script Syntax

```javascript
component { /* Application.cfc */ this.name="myAppName"; }
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | No |  | Name of application. Up to 64 characters |
| loginstorage | string | No | cookie | cookie: store login information in the Cookie scope.
 session: store login information in the Session scope. |
| clientmanagement | boolean | No | NO | enables client variables |
| clientstorage | string | No | registry | How client variables are stored
 * datasource_name: in ODBC or native data source.
 You must create storage repository in the
 Administrator.
 * registry: in the system registry.
 * cookie: on client computer in a cookie. Scalable.
 If client disables cookies in the browser, client
 variables do not work |
| setclientcookies | boolean | No | YES | No: CFML does not automatically send CFID and CFTOKEN
 cookies to client browser; you must manually code CFID and
 CFTOKEN on the URL for every page that uses Session or
 Client variables |
| sessionmanagement | boolean | No | NO | enables session variables |
| sessiontimeout | numeric | No |  | Lifespan of session variables. CreateTimeSpan function and
 values in days, hours, minutes, and seconds, separated by
 commas |
| applicationtimeout | numeric | No |  | Lifespan of application variables. CreateTimeSpan function
 and values in days, hours, minutes, and seconds, separated
 by commas. |
| setdomaincookies | boolean | No | NO | Yes: Sets CFID and CFTOKEN cookies for a domain (not a host)
 Required, for applications running on clusters. |
| scriptprotect | string | No |  | Specifies whether to protect variables from cross-site scripting attacks.
 - none: do not protect variables
 - all: protect Form, URL, CGI, and Cookie variables
 - comma-delimited list of ColdFusion scopes: protect variables in the specified scopes |
| securejsonprefix | string | No |  | The security prefix to put in front of the value that a ColdFusion function returns in JSON-format 
				in response to a remote call if the secureJSON setting is true. |
| securejson | boolean | No |  | A Boolean value that specifies whether to add a security prefix in front of any value that a ColdFusion function returns in JSON-format
				 in response to a remote call. |
| serverSideFormValidation | boolean | No |  | Enable/Disable ColdFusion‚ server side validation on CFFORM. |
