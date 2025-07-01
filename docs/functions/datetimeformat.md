# dateTimeFormat

Formats a datetime value using U.S. date and time formats. For international date support, use lsDateTimeFormat.

```javascript
dateTimeFormat(date [, mask [, timezone]])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
datetime.dateTimeFormat([mask [, timezone]])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | The datetime object (100AD-9999AD).
 NOTE: This parameter is named `datetime` in Lucee. |
| mask | string | No | dd-mmm-yyyy HH:nn:ss | The mask used to format the datetime output.
	- d : Day of the month as digits; no leading zero for single-digit days.
	- dd : Day of the month as digits; leading zero for single-digit days.
	- EEE : Day of the week as a three-letter abbreviation.
	- EEEE : Day of the week as its full name.
	- m : Month as digits; no leading zero for single-digit months.
	- mm : Month as digits; leading zero for single-digit months.
	- mmm : Month as a three-letter abbreviation. (Dec)
	- mmmm : Month as its full name.
	- M : Month in year. (pre-CF2016u3)
	- D : Day in year. (pre-CF2016u3)
	- yy : Year as last two digits; leading zero for years less than 10.
	- yyyy : Year represented by four digits.
	- YYYY : Week year represented by four digits. (pre-CF2016u3)
	- Y : Week year. (pre-CF2016u3)
	- YY : Week Year as last two digits; leading zero for years less than 10. (pre-CF2016u3)
	- G : Period/era string. (e.g. BC/AD)
	- h : hours; no leading zero for single-digit hours. (12-hour clock)
	- hh : hours; leading zero for single-digit hours. (12-hour clock)
	- H : hours; no leading zero for single-digit hours. (24-hour clock)
	- HH : hours; leading zero for single-digit hours. (24-hour clock)
	- n : minutes; no leading zero for single-digit minutes.
	- nn : minutes; leading zero for single-digit minutes.
	- s : seconds; no leading zero for single-digit seconds.
	- ss : seconds; leading zero for single-digit seconds.
	- l or L : milliseconds, with no leading zeros.
	- t : one-character time marker string, such as A or P.
	- tt : multiple-character time marker string, such as AM or PM.
	- w : Week of the year as digit. (JDK7+)
	- ww : Week of the year as digits; leading zero for single-digit week. (JDK7+)
	- W : Week of the month as digit. (JDK7+)
	- WW : Week of the month as digits; leading zero for single-digit week. (JDK7+)

The following masks tell how to format the full date and time and cannot be combined with other masks:
	- `short` : equivalent to `"m/d/y h:nn tt"`
	- `medium` : equivalent to `"mmm d, yyyy h:nn:ss tt"`
	- `long` : `medium` with full month name rather than abbreviation, followed by three-letter time zone; as in, `"mmmm d, yyyy h:mm:ss tt EST"`
	- `full` : equivalent to `"EEEE, mmmm d, yyyy h:mm:ss tt EST"`
	- `iso` CF2016+ Lucee5.3.8+ Formats the date time in ISO8601 format
	- `iso8601` Lucee4.5+ Formats the date time in ISO8601 format

The function also follows Java date time mask, except for mask "a". For more information, refer to Date and Time Patterns topic in `SimpleDateFormat` Java API page.

JDK7 and JDK8 introduces the masks "w", "ww", "W", and "WW". |
| timezone | string | No | System time-zone | The timezone to use. Can be the 3 letter code ("EST","UTC") or the full name full {"America/New_York") |

## Mask = Short Example

On Lucee with Java 11 adds a comma after year bug: LDEV-3744

```javascript
dateTimeFormat("2015-04-11 19:02", "short")
```

### Expected Result: 4/11/15 7:02 PM

## Mask = Medium Example

On Lucee with Java 11 adds a comma after year bug: LDEV-3744

```javascript
dateTimeFormat("2015-04-11 19:02", "medium")
```

### Expected Result: Apr 11, 2015 7:02:00 PM

## Mask = Long Example

On Lucee with Java 11 adds at before the time bug: LDEV-3744

```javascript
dateTimeFormat("2015-04-11 19:02", "long")
```

### Expected Result: April 11, 2015 7:02:00 PM UTC

## Mask = Full Example

On Lucee with Java 11 adds at before the time bug: LDEV-3744

```javascript
dateTimeFormat("2015-04-11 19:02", "full")
```

### Expected Result: Saturday, April 11, 2015 7:02:00 PM UTC

## Date Time Format in ISO 8601

Uses the CF2016+ `iso` or the Lucee4.5+ `iso8601` format depending on the engine. Note the depending on Java version the timezone format may differ (on Lucee at least, possible due to LDEV-3744)

```javascript
dateTimeFormat("2015-04-11 19:02", (server.keyExists("lucee")) ? "iso8601" : "iso")
```

### Expected Result: 2015-04-11T19:02:00+0000

## Date Time Format member function syntax

Simple date/time formatting using the member function syntax

```javascript
createDateTime( 2022, 10, 1, 9, 30, 0 ).dateTimeFormat( 'mm/dd/yyyy hh:nn:ss tt' )
```

### Expected Result: 10/01/2022 09:30:00 AM
