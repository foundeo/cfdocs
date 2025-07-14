# cfregistry

Reads, writes, and deletes keys and values in the system registry.
 Provides persistent storage of client variables.
 This tag is deprecated for the UNIX platform.
 Note: For this tag to execute, it must be enabled in the ColdFusion MX
 Administrator.

### Syntax

```html
<cfregistry action="getAll">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfregistry(action="getAll");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | Action to perform |
| branch | string | No |  | Name of a registry branch. |
| entry | string | No |  | Registry value to access.<br /> Note: For key deletion this attribute is required. |
| variable | string | No |  | Variable into which to put value. |
| type | string | No | String |  |
| sort | string | No |  | Sorts query column data (case-insensitive). Sorts on Entry, Type,<br /> and Value columns as text. Specify a combination of columns from<br /> query output, in a comma-delimited list.<br /> For example: sort = "value desc, entry asc"<br /> * asc: ascending (a to z) sort order.<br /> * desc: descending (z to a) sort order. |
| directory | string | No |  | Absolute pathname of directory against which to perform<br /> action. |
| name | string | No |  | Name for output record set. |
| mode | string | No |  | Applies only to UNIX and Linux. Permissions. Octal values<br /> of Unix chmod command. Assigned to owner, group, and<br /> other, respectively. |
| newdirectory | string | No |  | New name for directory. |
| value | string | No |  | Value data to set. If you omit this attribute, the cfregistry tag creates default value, as follows:<br /> * string: creates an empty string: "".<br /> * dWord: creates a value of 0 (zero). |
| recurse | boolean | No | NO | Whether ColdFusion performs the action on subdirectories. |
| registryversion | string | No |  | No Help Available |
