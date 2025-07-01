# fileSetAccessMode

Sets the attributes of an on-disk file on UNIX or Linux. This function does not work with in-memory files.

```javascript
fileSetAccessMode(filePath, mode)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| filePath | string | Yes |  | Path to file |
| mode | string | Yes |  | Access mode (the same attributes you use for the Linux command 'chmod')

Each position specifies who is granted the access:
* 1st position: owner
* 2nd position: group
* 3rd position: other

The number at each position specifies which right is granted:
* 4: read (r)
* 2: write (w)
* 1: execute (x)

Let's assume that matrix as seen on Linux systems: rwxrwxrwx. You can combine the numbers for read, write and execute permissions to achieve combined permissions:
* 3: write & execute
* 5: read & execute
* 6: read & write
* 7: read, write and execute

For example, 400 specifies that only the owner can read the file; 004 specifies that anyone can read the file.
In rwe-notation 400 means r-------- and 004 ------r-- whereas 751 means rwxr-er--. |

## Grant read access to everyone

```javascript
<cfscript> 
 fileSetAccessMode("test1.txt", "004"); 
 </cfscript>
```
