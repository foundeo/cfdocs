# sleep

Causes the current thread to stop processing for a specified period of time.

```javascript
sleep(duration)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| duration | numeric | Yes |  | Time, in milliseconds, to stop processing the current thread |

## Sleep for 5 seconds

Outputs the current date/time, sleeps for 5 seconds, then outputs the current date/time again.

```javascript
<cfscript>
    writeOutput(now());
    writeOutput("<br />");
    sleep(5000);
    writeOutput(now());
</cfscript>
```
