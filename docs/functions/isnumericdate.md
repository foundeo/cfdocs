# isNumericDate

Evaluates whether a real number is a valid representation of a
 date (date/time object).

Same as isValid("date", date)

```javascript
isNumericDate(number)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  |  |

## Simple example

To determine whether a string can be converted to a date/time value.

```javascript
<cfset Date = isNumericDate(now()) >
<cfoutput>#Date#</cfoutput>
```

### Expected Result: Yes

## Simple example

To determine whether a string can be converted to a date/time value.

```javascript
<cfset result = isNumericDate("Monday")>
<cfoutput>#result#</cfoutput>
```

### Expected Result: No
