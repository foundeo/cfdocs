# cflog

Writes a message to a log file.

### Syntax

```html
<cflog text="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cflog(text="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| text | string | Yes |  | Message text to log. |
| log | string | No |  | If you omit the file attribute, writes messages to standard
 log file. Ignored, if you specify file attribute.

 Application: writes to Application.log, normally used for
 application-specific messages.
 Scheduler: writes to Scheduler.log, normally used to log
 the execution of scheduled tasks. |
| file | string | No |  | Message file. Specify only the main part of the filename.
 For example, to log to the Testing.log file, specify
 "Testing".

 The file must be located in the default log directory. You
 cannot specify a directory path. If the file does not
 exist, it is created automatically, with the suffix .log. |
| type | string | No |  | Type (severity) of the message |
| application | boolean | No |  | log application name, if it is specified in a cfapplication
 tag. |

## Log to a file you specify

CFLog will create a file or append to a file named myAppLog.log in the servers logs directory.

```html
<cflog file="myAppLog" text="Whatever you want to log." type="information" >
```

## Script Syntax

```html
writeLog(text = "Logging some info.", type = "information", application = "no", file = "myLogFile");
```
