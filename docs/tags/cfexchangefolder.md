# cfexchangefolder

Lets you perform various actions on the mail folder, such as get folder information, find folders, or create, copy, modify, move, delete, and empty the contents of a folder.

### Syntax

```html
<cfexchangefolder action="" folderID="" connection="" name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfexchangefolder(action="", folderID="", connection="", name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | The action to take. |
| connection | string | Yes |  | The name of the connection to the Exchange server, as specified in the `cfexchangeconnection` tag. |
| uid | string | No |  | (getInfo/getExtendedInfo) UID that is used to identify the folder in which the actions are performed. |
| name | variableName | No |  | (getInfo/getExtendedInfo/findSubFolders) The name of the ColdFusion query variable that contains the returned information about the folder. |
| folderID | string | No |  | (getInfo/getExtendedInfo/findSubFolders/delete/modify/empty) UID that is used to identify the folder in which the actions are performed. |
| folderPath | string | No |  | (getInfo/getExtendedInfo) Full path to the folder where the action has to be performed. |
| pathDelimiter | string | No | / | (getInfo/getExtendedInfo) Lets you specify the delimiter that is used to separate the folders. |
| result | variableName | No |  | (create/copy/move) The name of a query variable that contains the result returned from the exchange server when one of the action is performed. |
| destinationFolderID | string | No |  | (copy/move) A case-sensitive Exchange UID value that uniquely identifies the destination folder. |
| sourceFolderID | string | No |  | (copy/move) The UID that is used to identify the folder from which you copy or move folders to the destination folder. |
| deleteType | string | No | moveToDeletedItems | (delete/move) - hardDelete: Removes a folder permanently from the Exchange server.<br />- softDelete: Moves a folder to the dumpster in Exchange server, if dumpster is enabled.<br />- moveToDeletedItems: Moves a folder to the deleted items folder. |
| deleteSubFolders | boolean | No | NO | (empty) If true, deletes the subfolder. |
| folder | string | No |  | (create/modify) A struct that contains the required information of the folder that has to be created or modified, such as display name and folder class. |

## Get folder

Gets the extended information for the Inbox folder.

```html
<cfexchangeconnection action="open" username="conv" password="Password" server="IP_Address" serverversion="2010" connection="conn1">
<cfexchangefolder action="getextendedinfo" connection="conn1" name="result" folderpath="Inbox">
<cfdump var="#result#">
```
