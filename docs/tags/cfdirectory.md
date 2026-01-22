# cfdirectory

Allows you to list, create, delete or rename a directory in the server file system.

### Syntax

```html
<cfdirectory directory="." action="list|create|delete|rename">
```

### Script Syntax

```javascript
directoryList(".", false, " ");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| action | string | No | list | Action to perform | /Users/garethedwards/development/github/cfdocs/docs/tags/cfdirectory.md|rename |
| directory | string | Yes |  | Absolute pathname of directory against which to perform action. |  |
| name | string | No |  | Name for output record set. |  |
| filter | string | No |  | Filter applied to returned names. For example: *.cfm<br />You can use a pipe ("|") delimiter to specify multiple filters. For example: *.cfm|*.cfc<br />Filter pattern matches are case-sensitive on UNIX and Linux. |  |
| mode | string | No |  | Applies only to UNIX and Linux. Permissions. Octal values of Unix chmod command. Assigned to owner, group, and other, respectively. |  |
| sort | string | No | asc | Query column(s) by which to sort directory listing.<br /> Delimited list of columns from query output. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfdirectory.md|desc |
| newdirectory | string | No |  | New name for directory. |  |
| recurse | boolean | No | NO | Whether ColdFusion performs the action on subdirectories. |  |
| type | string | No | all |  | /Users/garethedwards/development/github/cfdocs/docs/tags/cfdirectory.md|all |
| listinfo | string | No | all |  | /Users/garethedwards/development/github/cfdocs/docs/tags/cfdirectory.md|all |

## List Files in Directory (Script Syntax)

Returns a query

```html
myList = directoryList(expandPath("./"), false, "query");
```

## Create a Directory (Script Syntax)

```html
directoryCreate(expandPath("./new_directory"));
```

## Delete a Directory (Script Syntax)

Directory Delete

```html
directoryDelete(expandPath("./my_directory"));
```

## Rename a Directory (Script Syntax)

```html
directoryRename(expandPath("./my_directory"), expandPath("./new_directory"));
```

## List File in Directory (Tag Syntax)

Directory List

```html
<cfdirectory action="list" directory="#expandPath("./")#" recurse="false" name="myList">
```

## Create a Directory (Tag Syntax)

```html
<cfdirectory action="create" directory="#expandPath("./new_directory")#">
```

## Delete a Directory (Tag Syntax)

```html
<cfdirectory action="delete" directory="#expandPath("./my_directory")#">
```

## Rename a Directory (Tag Syntax)

```html
<cfdirectory action="rename" directory="#expandPath("./my_directory")#" newdirectory="#expandPath("./new_directory")#">
```
