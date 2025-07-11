# cfftp

Lets users implement File Transfer Protocol (FTP) operations.

### Syntax

```html
<cfftp action="open">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfftp(action="open");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| action | string | Yes |  | FTP operation to perform.<br /> open: create an FTP connection<br /> close: terminate an FTP connection | /Users/garethedwards/development/github/cfdocs/docs/tags/cfftp.md|acct |
| username | string | No |  | Overrides username specified in ODBC setup. |  |
| password | string | No |  | Overrides password specified in ODBC setup. |  |
| server | string | No |  | FTP server to which to connect; for example,<br /> ftp.myserver.com |  |
| timeout | numeric | No | 30 | Value in seconds for the timeout of all operations,<br /> including individual data request operations. |  |
| port | numeric | No | 21 | Remote port to which to connect |  |
| connection | variableName | No |  | Name of the FTP connection. If you specify the username,<br /> password, and server attributes, and if no connection<br /> exists for them, CFML creates one. Calls to cfftp<br /> with the same connection name reuse the connection. |  |
| proxyserver | string | No |  | The proxy server required to access the URL. |  |
| retrycount | numeric | No | 1 | Number of retries until failure is reported. |  |
| stoponerror | boolean | No | NO | Yes: halts processing, displays an appropriate error.<br /> No: populates the error variables |  |
| passive | boolean | No | NO | Yes: enable passive mode |  |
| transfermode | string | No | auto | ASCII FTP transfer mode<br /> Binary FTP transfer mode<br /> Auto FTP transfer mode | /Users/garethedwards/development/github/cfdocs/docs/tags/cfftp.md|binary |
| failifexists | boolean | No | YES | Yes: if a local file with same name exists, getFile fails |  |
| directory | string | No |  | Directory on which to perform an operation |  |
| localfile | string | No |  | Name of the file on the local file system |  |
| remotefile | string | No |  | Name of the file on the FTP server file system. |  |
| item | string | No |  | Object of these actions: file or directory. |  |
| existing | string | No |  | Current name of the file or directory on the remote server. |  |
| new | string | No |  | New name of file or directory on the remote server |  |
| name | string | No |  | Query name of directory listing. |  |
| result | string | No |  | Specifies a name for the structure in which cfftp<br /> stores the returnValue variable. If set, this value<br /> replaces cfftp as the prefix to use when accessing<br /> returnVariable. |  |
| attributes | string | No |  | Attributes of the current element: normal or Directory. |  |
| passphrase | string | No |  | CF8+ Used when `key` is specified. Because private keys are stored in an encrypted form on the client host, the user must supply a passphrase to enable generating the signature. |  |
| buffersize | numeric | No |  | Buffer size in bytes. |  |
| secure | string | No | NO | CF8+ `yes`: enables secure FTP |  |
| asciiextensionlist | string | No |  | Delimited list of file extensions that force ASCII<br /> transfer mode, if transferMode = "auto". |  |
| key | string | No |  | CF8+ Public-key-based authentication. Refers to the absolute path to the private key of the user. <br />Possession of a private key provides authentication by sending a signature created with a private key. <br />The server must ensure that the key is a valid authentication for the user and that the signature is valid. <br />Both must be valid to accept the authentication. |  |
| actionparam | string | No |  | Used only when action is quote, site, or acct. Specifies the command when action is quote or site; specifies account information when action is acct. |  |
| fingerprint | string | No |  | CF8+ Fingerprint of the host key in the form ssh-dss.ssh-rsa, which is a 16-byte unique identifier for the server attribute that you specify. |  |
| systemtype | string | No |  | CF11.0.3+ Specifies how to parse file list response, specify `WINDOWS` or `UNIX` or a class which implements `org.apache.commons.net.ftp.FTPFileEntryParser` | /Users/garethedwards/development/github/cfdocs/docs/tags/cfftp.md|UNIX |

## Script Syntax

CF9+ using the CFIDE script components

```html
// Create FTP service and set attributes for connection 
 ftpService = new ftp(); 
 ftpService.setConnection("myConn"); 
 ftpService.setUsername("myUName"); 
 ftpService.setPassword("myPW"); 
 ftpService.setServer("ftp.server.com"); 
 ftpService.setStopOnError(true); 
 // Open connection 
 ftpService.open(); 
 // Get list of dir 
 fileList = ftpService.listdir(directory = "/ ", name="fileList", stopOnError = true).getResult(); 
 // Close connection 
 ftpService.close();
```

## Open Connection

```html
<cfftp action="open" connection="myConn" username="myUName" password="myPW" server="ftp.server.com" stopOnError="true">
```

## Get List of Directories

```html
<cfftp action="listdir" connection="myConn" name="filesList" directory="/" stopOnError="true">
```

## Close Connection

```html
<cfftp action="close" connection="myConn" stopOnError="true">
```
