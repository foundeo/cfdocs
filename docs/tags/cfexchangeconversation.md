# cfexchangeconversation

Helps users organize and manage conversations from a Microsoft Exchange account.

### Syntax

```html
<cfexchangeconversation action="" connection="" folderID="" name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfexchangeconversation(action="", connection="", folderID="", name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| action | string | Yes |  | The action to take. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfexchangeconversation.md|delete |
| connection | string | Yes |  | The name of the connection to the Exchange server, as specified in the `cfexchangeconnection` tag. |  |
| name | variableName | No |  | (get) The name of the ColdFusion query variable that contains the returned conversation information. |  |
| folderID | string | Yes |  | A case-sensitive Exchange UID value that uniquely identifies the folder. |  |
| UID | string | No |  | A case-sensitive Exchange UID value that uniquely identifies the conversation. |  |
| isRead | boolean | No |  | (setReadState) Indicates the status of the conversation, if read or not. |  |
| destinationFolderID | string | No |  | (copy/move) A case-sensitive Exchange UID value that uniquely identifies the destination folder. |  |
| deleteType | string | No | moveToDeletedItems | (delete) - hardDelete: Removes a folder permanently from the store.<br />- softDelete: Removes a folder to the dumpster, if dumpster is enabled.<br />- moveToDeletedItems: Moves a folder to the deleted items folder. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfexchangeconversation.md|moveToDeletedItems |

## Get conversations

Gets the conversations in the Inbox folder, filtered by topic and categories.

```html
<cfexchangeconnection action="open" username="conv" password="Password" server="IP_Address" serverversion="2010" connection="conn1">
<cfexchangefolder action="getextendedinfo" connection="conn1" name="result" folderpath="Inbox">
<cfexchangeconversation action="get" folderid="#result.uid#" name="conversations" connection="conn1">
    <cfexchangefilter name="topic" value="testcfexchnage3">
    <cfexchangefilter name="categories" value="Yellow Category">
</cfexchangeconversation>
<cfdump var="#conversations#">
```
