# cfpop

Retrieves or deletes e-mail messages from a POP mail server.

### Syntax

```html
<cfpop server="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfpop(server="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| server | string | Yes |  | POP server identifier:<br /> A host name; for example, "biff.upperlip.com"<br /> An IP address; for example, "192.1.2.225" |
| port | numeric | No |  | POP port |
| username | string | No |  | Overrides username. |
| password | string | No |  | Overrides password |
| action | string | No |  | getHeaderOnly: returns message header information only<br /> getAll: returns message header information, message text,<br /> and attachments if attachmentPath is specified<br /> delete: deletes messages on POP server<br /> markRead: marks the message as read |
| name | string | No |  | Name for query object that contains the retrieved message<br /> information. |
| messagenumber | numeric | No |  | Message number or comma-delimited list of message numbers<br /> to get or delete. Invalid message numbers are ignored.<br /> Ignored if uid is specified. |
| uid | string | No |  | UID or a comma-delimited list of UIDs to get or delete.<br /> Invalid UIDs are ignored. |
| attachmentpath | string | No |  | If action="getAll", specifies a directory in which to save<br /> any attachments. If the directory does not exist,<br /> CFML creates it.<br /><br /> If you omit this attribute, CFML does not save any<br /> attachments. If you specify a relative path, the path root<br /> is the CFML temporary directory, which is returned by<br /> the GetTempDirectory function. |
| timeout | numeric | No |  | Maximum time, in seconds, to wait for mail processing |
| maxrows | numeric | No |  | Number of messages to return or delete, starting with the<br /> number in startRow. Ignored if messageNumber or uid is<br /> specified. |
| startrow | numeric | No |  | First row number to get or delete. Ignored if messageNumber<br /> or uid is specified. |
| generateUniqueFileNames | boolean | No |  | Yes: Generate unique filenames for files attached to an<br /> e-mail message, to avoid naming conflicts when files are<br /> saved |
| secure | boolean | No | false | CF10+ Enables SSL for pop requests. |
| delimiter | string | No |  | CF11+ The value of the uid attribute can be a comma-separated<br /> list of UIDs. If the delimiter attribute is specified, the value<br /> of delimiter will be used as a delimiter instead of comma. |
