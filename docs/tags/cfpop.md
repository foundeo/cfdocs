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
| server | string | Yes |  | POP server identifier:
 A host name; for example, "biff.upperlip.com"
 An IP address; for example, "192.1.2.225" |
| port | numeric | No |  | POP port |
| username | string | No |  | Overrides username. |
| password | string | No |  | Overrides password |
| action | string | No |  | getHeaderOnly: returns message header information only
 getAll: returns message header information, message text,
 and attachments if attachmentPath is specified
 delete: deletes messages on POP server
 markRead: marks the message as read |
| name | string | No |  | Name for query object that contains the retrieved message
 information. |
| messagenumber | numeric | No |  | Message number or comma-delimited list of message numbers
 to get or delete. Invalid message numbers are ignored.
 Ignored if uid is specified. |
| uid | string | No |  | UID or a comma-delimited list of UIDs to get or delete.
 Invalid UIDs are ignored. |
| attachmentpath | string | No |  | If action="getAll", specifies a directory in which to save
 any attachments. If the directory does not exist,
 CFML creates it.

 If you omit this attribute, CFML does not save any
 attachments. If you specify a relative path, the path root
 is the CFML temporary directory, which is returned by
 the GetTempDirectory function. |
| timeout | numeric | No |  | Maximum time, in seconds, to wait for mail processing |
| maxrows | numeric | No |  | Number of messages to return or delete, starting with the
 number in startRow. Ignored if messageNumber or uid is
 specified. |
| startrow | numeric | No |  | First row number to get or delete. Ignored if messageNumber
 or uid is specified. |
| generateUniqueFileNames | boolean | No |  | Yes: Generate unique filenames for files attached to an
 e-mail message, to avoid naming conflicts when files are
 saved |
| secure | boolean | No | false | CF10+ Enables SSL for pop requests. |
| delimiter | string | No |  | CF11+ The value of the uid attribute can be a comma-separated
 list of UIDs. If the delimiter attribute is specified, the value
 of delimiter will be used as a delimiter instead of comma. |
