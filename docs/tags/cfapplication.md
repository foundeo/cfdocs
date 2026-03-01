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
| loginstorage | string | No | cookie | cookie: store login information in the Cookie scope.<br /> session: store login information in the Session scope. |
| clientmanagement | boolean | No | NO | enables client variables |
| clientstorage | string | No | registry | How client variables are stored<br /> * datasource_name: in ODBC or native data source.<br /> You must create storage repository in the<br /> Administrator.<br /> * registry: in the system registry.<br /> * cookie: on client computer in a cookie. Scalable.<br /> If client disables cookies in the browser, client<br /> variables do not work |
| setclientcookies | boolean | No | YES | No: CFML does not automatically send CFID and CFTOKEN<br /> cookies to client browser; you must manually code CFID and<br /> CFTOKEN on the URL for every page that uses Session or<br /> Client variables |
| sessionmanagement | boolean | No | NO | enables session variables |
| sessiontimeout | numeric | No |  | Lifespan of session variables. CreateTimeSpan function and<br /> values in days, hours, minutes, and seconds, separated by<br /> commas |
| applicationtimeout | numeric | No |  | Lifespan of application variables. CreateTimeSpan function<br /> and values in days, hours, minutes, and seconds, separated<br /> by commas. |
| setdomaincookies | boolean | No | NO | Yes: Sets CFID and CFTOKEN cookies for a domain (not a host)<br /> Required, for applications running on clusters. |
| scriptprotect | string | No |  | Specifies whether to protect variables from cross-site scripting attacks.<br /> - none: do not protect variables<br /> - all: protect Form, URL, CGI, and Cookie variables<br /> - comma-delimited list of ColdFusion scopes: protect variables in the specified scopes |
| securejsonprefix | string | No |  | The security prefix to put in front of the value that a ColdFusion function returns in JSON-format <br />				in response to a remote call if the secureJSON setting is true. |
| securejson | boolean | No |  | A Boolean value that specifies whether to add a security prefix in front of any value that a ColdFusion function returns in JSON-format<br />				 in response to a remote call. |
| serverSideFormValidation | boolean | No |  | Enable/Disable ColdFusion‚ server side validation on CFFORM. |
