# createODBCDate

Creates an ODBC date object.

```javascript
createODBCDate(date)
```

```javascript
returns date
```

## Member Function Syntax

```javascript
date.createODBCDate()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| date | date | Yes |  | Date or date/time object. |

## Creates an ODBC date object

Uses the createODBCDate function to create an ODBC date object

```javascript
<cfset Date = createDate(2012, 12, 12)>
<cfset result = createODBCDate(Date)>
<cfoutput>#result#</cfoutput>
```

### Expected Result: {d '2012-12-12'}
