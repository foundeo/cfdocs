# cfexchangecontact

Creates, deletes, modifies, and gets Microsoft Exchange contact records, and gets contact record attachments.

### Syntax

```html
<cfexchangecontact action="create" contact="" name="" uid="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfexchangecontact(action="create", contact="", name="", uid="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | The action to take. Must be one of the following: create, delete, get, getAttachments, modify (required) |
| attachmentPath | string | No |  | The absolute file path of the directory in which to put the attachments.
 If the directory does not exist, ColdFusion creates it.
 If you omit this attribute, ColdFusion does not save any attachments. (optional) |
| connection | variableName | No |  | The name of the connection to the Exchange server, as specified in the cfexchangeconnection tag.
 If you omit this attribute, you must create a temporary connection by specifying
 cfexchangeconnection tag connection attributes in the cfexchangecontact tag. (optional) |
| contact | any | Yes |  | A reference to the structure that contains the contact properties to be set or changed and their values.
 You must specify this attribute in number signs (#).
 For more information on the event structure, see the Usage section. (required) |
| generateUniqueFilenames | boolean | No |  | A Boolean value specifying whether to generate unique file names if multiple attachments have the same file names.
 Case "yes": 3x myfile.txt -> myfile.txt, myfile1.txt, and myfile2.txt. (optional, default=no) |
| name | string | Yes |  | The name of the ColdFusion query variable that will contain the retrieved events or
 information about the attachments that were retrieved. (required) |
| result | string | No |  | The name of a variable that will contain the UID of the contact that is created.
 You use this value in the uid attribute other actions to identify the contact to be acted on. (optional) |
| uid | string | Yes |  | A case-sensitive Exchange UID value that uniquely identifies the contacts on which to perform the action.
 For the delete action, this attribute can be a comma delimited list of UID values.
 The getAttachments and modify action allow only a single UID value. (required) |
