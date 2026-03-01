# createODBCDateTime

Creates an ODBC date-time object.

```javascript
createODBCDateTime(date)
```

```javascript
returns date
```

## Member Function Syntax

```javascript
date.createODBCDateTime()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | Date or date/time object or string. |

## Creates an ODBC date-time object

Uses the CreateODBCDateTime function to create an ODBC date-time object

```javascript
<cfset Date = createDateTime(2012, 12, 12, 12, 12, 12)>
<cfset result = createODBCDateTime(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: {ts '2012-12-12 12:12:12'}
