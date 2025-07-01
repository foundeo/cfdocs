# lsDayOfWeek

Returns the day of the week using locale-specific date and time formatting conventions.

```javascript
lsDayOfWeek(date [, locale] [, timezone])
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.lsDayOfWeek([locale] [, timezone])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | date object; for example, now() |
| locale | string | No |  | Locale to use instead of the locale of the page when processing the function |
| timezone | string | No |  | A datetime object is independent of a specific timezone; it is only an offset in milliseconds from 1970-1-1 00.00:00 UTC (Coordinated Universal Time).

The timezone only comes into play when you need specific information like hours in a day, minutes in a hour or which day it is as these calculations depend on the timezone.

A timezone must be specified in order to translate the date object to something else. If you do not provide the timezone in the function call, it will default to the timezone specified in the Lucee Administrator (Settings/Regional), or the timezone specified for the current request using the function setTimezone().

You can find a list of all available timezones in the Lucee administrator (Settings/Regional). Some examples of valid timezones include:

* AGT (for time in Argentina)
* Europe/Zurich (for time in Zurich/Switzerland)
* HST (Hawaiian Standard Time in the USA) |
