# onApplicationEnd

Defined in Application.cfc, invoked when the application times out or when the server is shutting down.

```javascript
function onApplicationEnd(applicationScope) { }
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| ApplicationScope | struct | Yes |  | The application scope of the application that is ending. |

## Write to log when onApplicationEnd is triggered

Write to the log that application has ended. In the example below, text 'myApp ended on {current date/time}' gets added to D:\CF\logs\myApp.log file. Note: Application has already ended, but we can use ApplicationScope argument to access any Application scope variables.

```javascript
public void function onApplicationEnd(struct ApplicationScope){

		writeLog(text = "#arguments.ApplicationScope.name# ended on: #now()#");
		return true;
	}
```
