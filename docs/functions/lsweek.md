# lsWeek

Returns the week number in the year of the date referenced, based on the local influence.
Not everywhere does the week begin on Monday by definition.

```javascript
lsWeek(date [, locale] [, timezone])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | date object; for example, now() |
| locale | string | No | getLocale() | Geographic/language locale value, where the format is a combination of an ISO 639-1 code and an optional ISO 3166-1 code separated by a dash or an underscore. |
| timezone | string | No |  | A datetime object is independent of a specific timezone; it is only an offset in milliseconds from 1970-1-1 00.00:00 UTC (Coordinated Universal Time).

The timezone can come into play for all dateparts. For example: 8:00 a.m. in Germany (= CET) is 11 p.m. the previous day in PST (pacific time zone). So it's important to keep in mind, that the same date can be on different dates in different timezones, not only hours may change.

A timezone must be specified in order to translate the date object to something else. If you do not provide the timezone in the function call, it will default to the timezone specified in the Lucee Administrator (Settings/Regional), or the timezone specified for the current request using the function setTimezone().

You can find a list of all available timezones in the Lucee administrator (Settings/Regional). Some examples of valid timezones include:

* AGT (for time in Argentina)
* Europe/Zurich (for time in Zurich/Switzerland)
* HST (Hawaiian Standard Time in the USA) |

## Get localized week number for USA central standard time.

```javascript
WriteOutput( lsWeek( createDateTime( '2019', '10', '04', '01', '50', '00' ), 'en_US', 'CDT' ) );
```

### Expected Result: 40
