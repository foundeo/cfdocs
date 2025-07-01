# cfexecute

Executes a CFML developer-specified process on a server computer.

### Syntax

```html
<cfexecute name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfexecute(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Absolute path of the application to execute.<br /><br /> On Windows, you must specify an extension; for example,<br /> C:\myapp.exe. |
| arguments | any | No |  | Command-line variables passed to application. If specified<br /> as string, it is processed as follows:<br /> * Windows: passed to process control subsystem for parsing.<br /> * UNIX: tokenized into an array of arguments. The default<br /> token separator is a space; you can delimit arguments<br /> that have embedded spaces with double quotation marks.<br /> If passed as array, it is processed as follows:<br /> * Windows: elements are concatenated into a string of<br /> tokens, separated by spaces. Passed to process control<br /> subsystem for parsing.<br /> * UNIX: elements are copied into an array of exec()<br /> arguments |
| outputfile | string | No |  | File to which to direct program output. If no outputfile or<br /> variable attribute is specified, output is displayed on<br /> the page from which it was called.<br /><br /> If not an absolute path (starting a with a drive letter and<br /> a colon, or a forward or backward slash), it is relative<br /> to the CFML temporary directory, which is returned<br /> by the GetTempDirectory function. |
| variable | string | No |  | Variable in which to put program output. If no outputfile<br /> or variable attribute is specified, output is displayed on<br /> page from which it was called. |
| timeout | numeric | No | 0 | Length of time, in seconds, that CFML waits for<br /> output from the spawned program. |
| errorVariable | string | No |  | The name of a variable in which to save the error stream output. |
| errorFile | string | No |  | The pathname of a file in which to save the error stream output. If not an<br />absolute path (starting a with a drive letter and a colon, or a forward or backward slash), it is<br />relative to the ColdFusion temporary directory, which is returned by the GetTempDirectory<br />function. |
| terminateOnTimeout | boolean | No | false | Lucee4.5+ Terminate the process after the specified timeout is reached. Ignored if timeout is not set or is 0. |
| directory | string | No |  | Lucee5.3.8+ The working directory in which to execute the command |

## Script syntax

If you want to execute a script (.sh,.cmd,.bat), use bash (linux) or cmd.exe (windows) as the command and the script as argument for the shell interpreter.

```html
cfexecute( name="bash", arguments="/opt/jq.sh #cmdArgs#", variable="standardOut" , errorVariable="errorOut" , timeout="10");
```

## Script syntax with terminateOnTimeout

Printing a PDF using lpr

```html
cfexecute(
	name="lpr",
	arguments="-P 'My Print Job Name' 'C:/Users/devguy/Documents/server/mynewfile.pdf'",
	timeout="5",
	terminateOnTimeout="true"
	);
```
