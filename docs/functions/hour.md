# hour

Extracts the hour of the day from a date/time object.
 Ordinal value of the hour, in the range 0 - 23.

```javascript
hour(date)
```

```javascript
returns numeric
```

## Member Function Syntax

```javascript
date.hour()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | Date/time object, in the range 100 AD-9999 AD.
NOTE: When passing a date/time value as a string, enclose it in quotation marks. Otherwise, it is interpreted as a number representation of a date/time object. |

## Hour of a datetime object

```javascript
dt = createdatetime(2016,1,1,5,30,25);
h = hour( dt );
writeoutput( h );
```

### Expected Result: 5

## Current Hour of the day

```javascript
hour( now() )
```
