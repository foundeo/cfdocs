# dateDiff

Determines the integer number of datepart units by which date1 is less than date2.

```javascript
dateDiff(datepart, date1, date2)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date2.diff(datepart, date1)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datepart | string | Yes |  | yyyy: Year
 q: Quarter
 m: Month
 y: Day of year
 d: Day
 w: Week (Weekday cf2018+)
 ww: Week
 h: Hour
 n: Minute
 s: Second |
| date1 | date | Yes |  | The smaller date to diff
Can be either a string or a date object whereas member function only accept the latter |
| date2 | date | Yes |  | The bigger date to diff
Can be either a string or a date object whereas member function only accept the latter |

## dateDiff Example

Find the difference between two dates.

```javascript
dateDiff("d", "2013-01-15", "2013-01-25")
```

### Expected Result: 10

## How old are they?

Calculates a persons age based on a variable birthDate which contains a date. Uses the now function to get current date.

```javascript
birthDate = createDate( 1972, 5, 20 );
age = dateDiff('yyyy', birthDate, now());
writeoutput( age );
```

## dateDiff member function

Note the different behavior between ColdFusion and Lucee.

```javascript
testDate = now();
diffDate = dateAdd('d', 1, testDate);
writeOutput(testDate.diff('d', diffDate)); // this returns 1 on Lucee, and -1 on ColdFusion
```
