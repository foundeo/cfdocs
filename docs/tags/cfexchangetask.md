# cfexchangetask

Creates, deletes, modifies, and gets Microsoft Exchange tasks, and gets task attachments.

### Syntax

```html
<cfexchangetask task="" name="" uid="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfexchangetask(task="", name="", uid="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | No |  | The action to take. Must be one of the following: create, delete, get, getAttachments, modify (optional) |
| attachmentPath | string | No |  | The file path of the directory in which to put the attachments.
 If the directory does not exist, ColdFusion creates it.
 If you omit this attribute, ColdFusion does not save any attachments.
 If you specify a relative path, the path root is the ColdFusion temporary directory, which is returned
 by the GetTempDirectory function. (optional) |
| connection | variableName | No |  | The name of the connection to the Exchange server, as specified in the cfexchangeconnection tag.
 If you omit this attribute, and you specify cfexchangeconnection tag attributes in this tag,
 ColdFusion creates a temporary connection. (optional) |
| task | any | Yes |  | A reference to the structure that contains the task properties to be set or changed and their values.
 You must specify this attribute in number signs (#).
 For more information on the event structure, see the Usage section. (required) |
| name | string | Yes |  | The name of the ColdFusion query variable that will contain the returned mail messages or information
 about the attachments that were retrieved. (required) |
| results | string | No |  | (create) The name of a variable that will contain the UID of the task that is created.
 You use this value in the uid attribute of other actions to identify the task to be acted on. (optional) |
| uid | string | Yes |  | A case-sensitive Exchange UID value that uniquely identifies the tasks on which to perform the action.
 For the delete action, this attribute can be a comma delimited list of UID values.
 The getAttachments and modify action allow only a single UID value. (optional) |
| result | string | No |  | The name of a variable that contains the UID of the task that is created. You use this value in the uid attribute of other actions to identify the task to be acted on. |
