# cfsharepoint

Invokes a feature that SharePoint exposes as a web service action, such as the Document Workspace
getdwsdata action.

### Syntax

```html
<cfsharepoint action="cancreatedwsurl">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfsharepoint(action="cancreatedwsurl");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| password | string | No |  | The password required to connect to the SharePoint server. Required if you do not specify a
login attribute. |
| action | string | Yes |  | The name of a web service action. See Usage for the list of service actions you can specify. |
| login | struct | No |  | A structure containing user, password, and domain login credentials to pass to the service. If you do not specify
domain ,password, and userNameattributes you must specify a login structure with domain, password, and userName entries. |
| params | struct | No |  | A structure containing names and values of the parameters to pass to the service. |
| domain | string | No |  | The domain name required to connect to the SharePoint server. Required if you do not specify a login attribute. |
| username | string | No |  | The user name required to connect to the SharePoint server. Required if you do not specify a
login attribute. |
| name | string | No |  | Name of the result variable in which to put the data returned by the SharePoint service. |
| wsdl | string | No |  | Path to the service wsdl file. Required to invoke an action that is not in the list of supported actions. See Usage for details. |
