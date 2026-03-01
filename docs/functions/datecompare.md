# dateCompare

Performs a full date/time comparison of two dates.
 `-1` if date1 is less than date2
 `0` if date1 is equal to date2
 `1` if date1 is greater than date2
 [DatePart] `yyyy`: Year; `m`: Month; `d`: Day; `h`: Hour; `n`: Minute; `s`: Second

```javascript
dateCompare(date1, date2 [, datePart])
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date1.compare(date2 [, datePart])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| date1 | date | Yes |  | A date to compare |  |
| date2 | date | Yes |  | Another date to compare |  |
| datePart | string | No | s |  | /Users/garethedwards/development/github/cfdocs/docs/functions/datecompare.md|s |

## Compare Two Dates by Year

```javascript
dateCompare('12/30/2015', '12/02/2015', 'yyyy')
```

### Expected Result: 0

## Compare Two Dates by Day

Returns 1 because date1 is greater than date 2

```javascript
dateCompare('12/30/2015', '12/02/2015', 'd')
```

### Expected Result: 1

## Member function example

```javascript
d1 = createDate("2024","01","01");
d2 = createDate("2024","02","14");
d1.compare(d2)
```

### Expected Result: -1
