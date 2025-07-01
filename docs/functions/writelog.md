# writeLog

Writes a message to a log file.

```javascript
writeLog(text [, type] [, application] [, file] [, log] )
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| text | string | Yes |  | Message to log. The date / time will be logged automatically for you. |  |
| type | string | No |  | Type or severity of the log message | /Users/garethedwards/development/github/cfdocs/docs/functions/writelog.md|fatal |
| application | boolean | No | true | Logs the application name, if it is specified in Application.cfc or a cfapplication tag. |  |
| file | string | No |  | The file name to log to. You cannot specify a directory path or file extension (extension will be `.log`). If the file does not exist, it is created automatically. The log file will be located in your CF server logs directory. |  |
| log | string | No |  | If you omit the file attribute, writes messages to standard
 log file. Ignored, if you specify file attribute.

 Application: writes to Application.log, normally used for
 application-specific messages.
 Scheduler: writes to Scheduler.log, normally used to log
 the execution of scheduled tasks. | /Users/garethedwards/development/github/cfdocs/docs/functions/writelog.md|Scheduler |

## Simple writeLog Code Example

Logs an order processed successfully message to `orders.log` which will be located in the CF logs directory, eg: `{cf.root}/cfusion/logs/`

```javascript
writeLog(text="Order #order.getOrderID()# Processed Successfully", type="information", file="orders");
```
