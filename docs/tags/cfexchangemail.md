# cfexchangemail

Gets mail messages and attachments, deletes messages, and sets properties for messages on a Microsoft Exchange server.
 The cfexchangemail tag performs mail actions on an Exchange server that you cannot do using the cfmail tag.

### Syntax

```html
<cfexchangemail meetinguid="" message="" name="" uid="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfexchangemail(meetinguid="", message="", name="", uid="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | No |  | The name to use for the JavaScript proxy class. (required) |
| attachmentPath | string | No |  | The file path of the directory in which to put the attachments.
 If the directory does not exist, ColdFusion creates it.
 If you omit this attribute, ColdFusion does not save any attachments.
 If you specify a relative path, the path root is the ColdFusion temporary directory, which is returned by the GetTempDirectory function. (optional) |
| connection | variableName | No |  | The name of the connection to the Exchange server, as specified in the cfexchangeconnection tag.
 If you omit this attribute, and you specify cfexchangeconnection tag attributes in this tag, ColdFusion creates a temporary connection. (optional) |
| folder | string | No |  | The forward slash (/) delimited path, relative to the inbox, of the folder that contains the message or messages.
 The cfechangemail tag looks in the specified folder only, and does not search subfolders.
 If you omit this attribute, Exchange looks in the top level of the inbox. (optional) |
| generateUniqueFilenames | boolean | No |  | A Boolean value specifying whether to generate unique file names if multiple attachments have the same file names.
 Case "yes": 3x myfile.txt -> myfile.txt, myfile1.txt, and myfile2.txt. (optional, default=no) |
| mailUID | string | No |  | The case-sensitive UID of the mail message that contains the meeting request, response, or cancellation notification.
 You can use this attribute if there are multiple messages about a single meeting. (optional) |
| meetingUID | string | Yes |  | The case-sensitive UID of the meeting for which you received the notification. (required) |
| message | any | Yes |  | A reference to a structure that contains the properties to be set and their values.
 You must specify this attribute in number signs (#). (required) |
| name | string | Yes |  | The name of the ColdFusion query variable that will contain the returned mail messages or information
 about the attachments that were retrieved. (required) |
| UID | string | Yes |  | The case-sensitive UIDs of the messages on which to perform the action.
 For the delete action, this attribute can be a comma delimited list of UID values.
 The getAttachments and set actions allow only a single UID value. (required) |
| destinationfolder | string | No |  | The forward slash (/) delimited path, relative to the root of the mailbox, of the folder to which to move the message or messages. |
