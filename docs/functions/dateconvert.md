# dateConvert

Converts local time to Coordinated Universal Time (UTC), or UTC to local time. The function uses the daylight savings settings in the executing computer to compute daylight savings time, if required.

```javascript
dateConvert(conversionType, date)
```

```javascript
returns date
```

## Member Function Syntax

```javascript
date.convert(conversionType)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| conversionType | string | Yes |  | `local2Utc` : Converts local time to UTC time.
`utc2Local` : Converts UTC time to local time. |
| date | date | Yes |  |  |

## Converting Local to UTC

```javascript
utc_datetime = dateConvert('local2Utc', now());
```

## Converting UTC to Local

This example makes sense only if your server time is UTC. now() uses your server settings when creating a datetime object.

```javascript
local_datetime = dateConvert('utc2Local', now());
```
