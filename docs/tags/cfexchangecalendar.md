# cfexchangecalendar

Creates, deletes, modifies, gets, and responds to Microsoft Exchange calendar events, and gets calendar event attachments.

### Syntax

```html
<cfexchangecalendar action="create" event="" name="" responsetype="accept" uid="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfexchangecalendar(action="create", event="", name="", responsetype="accept", uid="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | The action to take. Must be one of the following: create, delete, get, getAttachments, modify, respond (required) |
| attachmentpath | string | No |  | The file path of the destination directory.
 If the directory does not exist, ColdFusion creates it.
 If you omit this attribute, ColdFusion does not save any attachments.
 If you specify a relative path, the path root is the ColdFusion temporary directory, which is returned by the GetTempDirectory function. (optional) |
| connection | variableName | No |  | The name of the connection to the Exchange server, as specified in the cfexchangeconnection tag.
 If you omit this attribute, you must create a temporary connection by specifying cfexchangeconnection tag connection attributes in the cfexchangecalendar tag. (optional) |
| event | any | Yes |  | A reference to the structure that contains the event properties to be set or changed and their values.
 You must specify this attribute in number signs (#). (required) |
| generateUniquefilenames | boolean | No |  | A Boolean value specifying whether to generate unique file names if multiple attachments have the same file names.
 Case "yes": 3x myfile.txt -> myfile.txt, myfile1.txt, and myfile2.txt. (optional, default=no) |
| message | string | No |  | The text of an optional message to send in the response or deletion notification. (optional) |
| name | string | Yes |  | The name of the ColdFusion query variable that will contain the retrieved events or information about the attachments that were retrieved. (required) |
| notify | boolean | No |  | Boolean value specifying whether to notify others of the changes made to the event (optional) |
| responseType | string | Yes |  | (respond) Must be one of the following: accept, decline, tentative (required) |
| result | string | No |  | The name of a variable that will contain the UID of the event that is created.
 You use the UID value in the uid attribute other actions to identify the event to be acted on. (optional) |
| uid | string | Yes |  | Case-sensitive Exchange UID value or values that uniquely identify the event or events
 on which to perform the action.
 For the delete action, this attribute can be a comma delimited list of UID values.
 The getAttachments, modify, and respond actions allow only a single UID value. (required) |
