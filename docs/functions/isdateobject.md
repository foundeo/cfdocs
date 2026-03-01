# isDateObject

Checks if the given value is a date / time object. The difference between isDateObject and isDate is that the latter returns true for date / time objects as well as date / time strings.

```javascript
isDateObject(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | A value to test whether it's a date object |

## Check if date is a date OBJECT, not just a date string

```javascript
<cfscript>
    date = IsDateObject(now());
    writeOutput("Can string be converted to a date/time value : " & date);
</cfscript>
```

### Expected Result: Can string be converted to a date/time value : YES
