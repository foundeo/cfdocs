# week

 From a date/time object, determines the week number within
 the year. An integer in the range 1-53; the ordinal of the
 week, within the year.

```javascript
week(date)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.week()
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| date | date | Yes |  | A date/time object in the range 100 AD-9999 AD. |  |
| calendar | string | No | gregorian | CF2016u8+ Indicates whether the week starts on Sunday (gregorian) or Monday (iso) | /Users/garethedwards/development/github/cfdocs/docs/functions/week.md|iso |

## Week of a datetime object

```javascript
dt = createdatetime(2016,1,1,5,30,25);
w = week( dt );
writeoutput( w );
```

### Expected Result: 1
