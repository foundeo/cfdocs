# isDate

 Determines whether a string or Java object can be converted
 to a date/time value.

```javascript
isDate(Object)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| Object | any | Yes |  | A string or variable name |

## Simple example

To determine whether a string can be converted to a date/time value.

```javascript
<cfset Date = CreateDate(2012, 12, 12)>
<cfset result = isDate(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: Yes

## Simple example

To determine whether a string can be converted to a date/time value.

```javascript
<cfset result = isDate("Date")>
<cfoutput>#result#</cfoutput>
```

### Expected Result: No
