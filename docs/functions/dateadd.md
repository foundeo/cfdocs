# dateAdd

Adds units of time to a date.

```javascript
dateAdd(datepart, number, date)
```

```javascript
returns date
```

## Member Function Syntax

```javascript
date.add(datepart, number)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| datepart | string | Yes |  | `yyyy` - Year
`q` - Quarter
`m` - Month
`y` - Day of year
`d` - Day
`w` - Week day
`ww` - Week
`h` - Hour
`n` - Minute
`s` - Second
`l` - Millisecond |
| number | numeric | Yes |  | The number of datepart units to add to the provided date.
 Number must be an integer.
 Negative integers move the date into the past, positive into the future. |
| date | date | Yes |  | A datetime object in the range of 100AD-9999AD.
 NOTE: When passing a datetime object as a string, enclose it in quotation marks. Otherwise, it is interpreted as a numeric representation of a datetime object. |

## Add Days to a Date

Add 30 days to August 3rd, 2014.

```javascript
dateAdd('d', 30, '8/3/2014')
```

### Expected Result: {ts '2014-09-02 00:00:00'}

## Subtract Days from a Date

Subtract 30 days from August 3rd, 2014.

```javascript
dateAdd('d', -30, '8/3/2014')
```

### Expected Result: {ts '2014-07-04 00:00:00'}

## Add Weeks to a Date

Here we're adding 8 weeks to the date August 3rd, 2014.

```javascript
dateAdd('ww', 8, '8/3/2014')
```

### Expected Result: {ts '2014-09-28 00:00:00'}

## Add Days to a Date (Member Function)

Here we're adding 1 day to the current date/time.

```javascript
createDate( 2022, 10, 1 ).add( 'd', 1 )
```

### Expected Result: {ts '2022-10-02 00:00:00'}
