# cfimap

Queries an IMAP server to retrieve and manage mails within multiple folders.

### Syntax

```html
<cfimap>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfimap();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| password | string | No |  | Specifies the password for assessing the users e-mail account. |
| secure | boolean | No |  | Specifies whether the IMAP server uses a Secure Sockets Layer. |
| action | string | No | getheaderonly | * GetHeaderOnly - Returns the message header information for all retrieved mail.
* GetAll - Returns mail. The information includes the message header information, message text, and any attachments. Set the AttachmentPath attribute to retrieve attachments.
* Delete - Deletes messages from a folder.
* Open - Initiates an open session or connection with the IMAP server.
* Close - Terminates the open session or connection with the IMAP server.
* MarkRead - Marks all messages read from a folder.
* DeleteFolder - Deletes the identified folder.
* CreateFolder - Creates a folder in Inbox.
* RenameFolder - Renames an existing user-defined folder.
* ListAllFolders - Displays a list of all existing folders in the mailbox or under the folder name defined by the Folder attribute.
* MoveMail - Moves mail from one folder to another |
| timeout | numeric | No |  | Specifies the number of seconds to wait before timing out connection to IMAP server. An error message is displayed when timeout occurs. |
| messageNumber | string | No |  | Specifies the message number or a comma delimited list of message numbers for retrieval, deletion, marking mail as read, or moving mails.
If you set an invalid message number or range, then it is ignored. If you have specified the UID attribute, then MessageNumber attribute is ignored. |
| connection | string | No |  | Required for the following actions: Open and Close - Specifies the variable name for the connection/session. For example, the e-mail login to an IMAP server can be used as the value for the connection. If the server attribute has an invalid IP address or invalid domain name, 
then the connection fails and ColdFusion returns an error message. |
| newFolder | string | No |  | Specifies the name of the destination folder where all mail move. |
| uid | string | No |  | Specifies the unique ID or a comma-delimited list of Uids to retrieve or delete. If you set invalid Uids, then they are ignored. |
| folder | string | No |  | For mail actions: Specifies the folder name where messages are searched, retrieved, moved, or deleted. If folder name is invalid, ColdFusion defaults to INBOX.
For folder actions: Specifies the folder name that is deleted (DeleteFolder) or created (CreateFolder) or renamed (RenameFolder). |
| port | numeric | No |  | Specifies the IMAP port number. Use 993 for secured connections. |
| stoponerror | boolean | No |  | Specifies whether or not to ignore the exceptions for this operation. When the value is true, it stops processing, displays an appropriate error. |
| generateUniqueFileNames | boolean | No |  | Ensures that unique file names are generated for each attachment file. 
The goal is to avoid name conflicts for attachments that have the same filename. |
| maxrows | numeric | No |  | Specifies the number of rows to be marked as read, deleted, or moved across folders. When the value is 1, it signals the row determined by StartRow. Any incremental value marks rows starting from the StartRow.
If you have specified the UID or MessageNumber attribute, then MaxRows is ignored. |
| username | string | No |  | Specifies the user name. Typically, the user name is same the e-mail login. |
| startRow | numeric | No |  | Defines the first row number for reading or deleting. If you have specified the UID or MessageNumber attribute, then StartRow is ignored. You can also specify StartRow for moving mails. |
| attachmentpath | string | No |  | Required for GetAll action - Specifies the name of the folder where ColdFusion retrieves attachments. If this folder does not exist, ColdFusion creates it. |
| server | string | No |  | Specifies the IMAP server identifier. You can assign a host name or an IP address as the IMAP server identifier. For example, imap.gmail.com. |
| name | string | No |  | Specifies the name for the query object that contains the retrieved message information. |
| recurse | boolean | No |  | Specifies whether ColdFusion runs the CFIMAP command in subfolders. |
