# cfexchangeconnection

Opens or closes a persistent connection to an Microsoft Exchange server.
 You must have a persistent or temporary connection to use the cfexchangecalendar,
 cfexchangecontact, cfexchangemail, and cfexchangetask tags to get or change
 information on the Exchange server.

### Syntax

```html
<cfexchangeconnection action="open" connection="" server="" username="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfexchangeconnection(action="open", connection="", server="", username="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | The action to take. Must be open or close. (required) |
| connection | string | Yes |  | The name of the connection. You specify this ID when you close the connection<br /> and in tags such as cfexchangemail. (required) |
| mailboxName | string | No |  | The ID of the Exchange mailbox to use.<br /> Specify this attribute to access a mailbox whose owner has delegated access<br /> rights to the account specified in the username attribute. (optional) |
| password | string | No |  | (open) The users password for accessing the Exchange server. (optional) |
| port | numeric | No |  | The port on the server connect to, most commonly port 80. (optional) |
| protocol | string | No |  | The protocol to use for the connection. Valid values are http and https. (optional) |
| proxyHost | string | No |  | The URL or IP address of the proxy host required for access to the network. (optional) |
| proxyPort | string | No |  | The port on the proxy server to connect to, most commonly port 80. (optional) |
| server | string | Yes |  | The IP address or URL of the server that is providing access to Exchange. (required) |
| username | string | Yes |  | The Exchange user ID (required) |
| folder | string | No |  | The forward slash (/) delimited path from the root of the mailbox to the folder for which to get subfolders. |
| recurse | boolean | No | NO | * true: get information on the immediate subfolders of the specified folder only.<br /> * false: get information on all levels of subfolders of the specified folder. |
| name | string | No |  | The name of the ColdFusion query variable that contains information about the subfolders. |
| exchangeServerLanguage | string | No |  | The language of the Exchange server. Default is English. |
| formBasedAuthentication | boolean | No |  | A Boolean value that specifies whether to display a login form and use form based authentication when making the connection. |
