# dateFormat

Formats a date value using U.S. date formats. When formatting both date and time, use dateTimeFormat. For international date support, use lsDateFormat.

```javascript
dateFormat(date [, mask])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
date.dateFormat([mask])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | The datetime object (100AD-9999AD) |
| mask | string | No | dd-mmm-yy | Each keyword below will be replaced in the string by its respective datepart:<br />	-d: Day of the month as digits; no leading zero for single-digit days.<br />	-dd: Day of the month as digits; leading zero for single-digit days.<br />	-ddd: Day of the week as a three-letter abbreviation.<br />	-dddd: Day of the week as its full name.<br />	-e: Day in a week (CF2016u3+).<br />	-f: Day of a week in a month (CF2016u3+).<br />	-D: Day in year. (pre-CF2016u3)<br />	-m: Month as digits; no leading zero for single-digit months.<br />	-mm: Month as digits; leading zero for single-digit months.<br />	-mmm: Month as a three-letter abbreviation.<br />	-mmmm: Month as its full name.<br />	-M: Month in year. (pre-CF2016u3)<br />	-k: Hour in a day (CF2016u3+).<br />	-W: Week in a month (CF2016u3+).<br />	-w: Week in a year (CF2016u3+).<br />	-yy: Year as last two digits; leading zero for years less than 10.<br />	-yyyy,YYYY: Year represented by four digits.<br />	-gg: Period/era string.<br />	-z: Time zone in unstandardized abbreviated format, for example, `EST` (CF2016u3+).<br />	-Z: Time zone in hours of offset (RFC 822 TimeZone), for example, `+0530` (CF2016u3+).<br />	-X: Time zone in hours of offset in ISO 8601 format. (CF2016u3+).<br />	-X: `+05`<br />	 -XX: `+0530`<br />	 -XXX: `+5:30`<br /> The following keywords are shorthand for specific full formats and cannot be combined with other masks:<br />	-short: equivalent to `m/d/y`<br />	-medium: equivalent to `mmm d, yyyy`<br />	-long: equivalent to `mmmm d, yyyy`<br />	-full: equivalent to `dddd, mmmm d, yyyy` |

## Using the short mask

```javascript
dateFormat("2015-04-11", "short")
```

### Expected Result: 4/11/15

## Using the long mask

```javascript
dateFormat("2015-04-11", "long")
```

### Expected Result: April 11, 2015

## Using the full mask

```javascript
dateFormat("2015-04-11", "full")
```

### Expected Result: Saturday, April 11, 2015

## Using the member function

```javascript
createDate( 2022, 10, 1 ).dateFormat( 'mm/dd/yyyy' )
```

### Expected Result: 10/01/2022
