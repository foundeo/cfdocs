# createODBCTime

Creates an ODBC time object.

```javascript
createODBCTime(date)
```

```javascript
returns date
```

## Member Function Syntax

```javascript
date.createODBCTime()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | Date or date/time object. |

## Creates an ODBC time object

Uses the CreateODBCTime function to create an ODBC time object

```javascript
<cfset time = createDateTime(2012, 12, 12, 12, 12, 12)>
<cfset result = createODBCTime(time)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: {t '12:12:12'}
