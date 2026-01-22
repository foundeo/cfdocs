# setTimeZone

Change the timezone definition for the current request

```javascript
setTimezone(timezone)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| timezone | string | Yes |  | The timezone to set to. |

## Set the current Timezone to CET

```javascript
setTimezone("CET");
writeoutput(getTimezoneInfo().timezone);
```

### Expected Result: CET
