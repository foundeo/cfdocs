# timeFormat

Formats a time value using US English time formatting conventions. If no mask is specified, returns a time value using the hh:mm tt format. For international time formatting, see LSTimeFormat.

```javascript
timeFormat(time [, mask])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
time.timeFormat([mask])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| time | date | Yes |  | A date/time value or string to convert |  |
| mask | string | No | hh:mm tt | Masking characters that determine the format.<br /> `h`,`hh`: Hours in 12 hour format<br />,`H`,`HH`: Hours in 24 hour format<br /> `m`,`mm`: Minutes<br />`s`,`ss`: Seconds<br /> `l`: Milliseconds<br />`t`: A or P<br />`tt`: AM or PM<br />`z`: Time zone in literal format, for example GMT<br />`Z`: Time zone in hours offset (RFC822), for example +0400<br />`X`,`XX`,`XXX`: Time zone in hours of offset in ISO 8601 format<br />`"short"`: `h:mm tt`<br />`"medium"`: `h:mm:ss tt` | /Users/garethedwards/development/github/cfdocs/docs/functions/timeformat.md|full |

## Format a 12 hour time with am/pm

```javascript
timeFormat( createDateTime(2017, 8, 31, 15, 25, 11), "h:mm tt")
```

### Expected Result: 3:25 PM

## Member Function Example

Requires CF11+ or Lucee5+

```javascript
createDateTime(2017, 8, 31, 15, 25, 11).timeFormat("h:mm tt")
```

### Expected Result: 3:25 PM

## Omitting the Mask

Should default mask to `hh:mm tt`

```javascript
timeFormat( createDateTime(2017, 8, 31, 15, 25, 11) )
```

### Expected Result: 03:25 PM
