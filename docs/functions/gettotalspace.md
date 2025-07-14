# getTotalSpace

 Returns the total disk space or in-memory space available for an application.

```javascript
getTotalSpace(path);
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | path to the hard drive or for in memory file system. |

## Tag Syntax

the in-memory file system memory set in cfadmin and should return that.

```javascript
<cfset totalRMSSpace = getTotalSpace('ram')>
<cfoutput>total app ram memory: #decimalFormat(totalRamSpace)/(1024 * 1024)# mb</cfoutput>
```
