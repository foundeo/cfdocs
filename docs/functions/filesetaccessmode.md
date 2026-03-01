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
| mode | string | Yes |  | Access mode (the same attributes you use for the Linux command 'chmod')<br /><br />Each position specifies who is granted the access:<br />* 1st position: owner<br />* 2nd position: group<br />* 3rd position: other<br /><br />The number at each position specifies which right is granted:<br />* 4: read (r)<br />* 2: write (w)<br />* 1: execute (x)<br /><br />Let's assume that matrix as seen on Linux systems: rwxrwxrwx. You can combine the numbers for read, write and execute permissions to achieve combined permissions:<br />* 3: write & execute<br />* 5: read & execute<br />* 6: read & write<br />* 7: read, write and execute<br /><br />For example, 400 specifies that only the owner can read the file; 004 specifies that anyone can read the file.<br />In rwe-notation 400 means r-------- and 004 ------r-- whereas 751 means rwxr-er--. |

## Grant read access to everyone

```javascript
<cfscript> 
 fileSetAccessMode("test1.txt", "004"); 
 </cfscript>
```
