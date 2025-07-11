# cfsleep

Causes the current thread to sleep for the given number of milliseconds.

### Syntax

```html
<cfsleep time=ms>
```

### Script Syntax

```javascript
sleep(duration)
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| time | numeric | Yes |  | The number of milliseconds to sleep for. |

## Tag Syntax

Dump the current time using a loop, delay 2 seconds each iteration.

```html
<cfloop index='i' from='1' to='3'>
  <cfdump var='#timeFormat(now(), "HH:mm:ss")#'/>
  <cfsleep time='2000'/>
</cfloop>
```
