# getFreeSpace

 Gets information about free hard disk space or free in-memory VFS space.

```javascript
getFreeSpace(path);
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | The Path to the Hard Disk Drive or to the in-memory file system - ram. |

## Tag Syntax

In the following example, in-memory file system memory for the application is set to 20 MB in ColdFusion Administrator. The function returns 20, which means the total space considered is 20 MB. This is because the value specified in the ColdFusion Administrator (Memory Limit per Application for In-Memory Virtual File System) is lesser than the value specified in the Application.cfc (20 MB).Application.cfc

```javascript
<cfcomponent> 
 <cfset this.name = 'vfs_total_space'> 
 <cfset this.inmemoryfilesystem.size = 30> 
 </cfcomponent>
```

## Tag Syntax

space.cfm

```javascript
<cfset freeRAMSpace = getFreeSpace('ram:')>
 <cfset freeDiskSpace = getFreeSpace('c:')> 
 Free Application RAM Memory = #decimalFormat(freeRAMSpace / (1024 * 1024))# MB 
 <br>Free Hard Disk Space = #decimalFormat(freeDiskSpace / (1024 * 1024 * 1024))# GB
```
