# compareNoCase

Performs a case-insensitive comparison of two strings.
 An indicator of the difference:
 -1, if string1 is less than string2
 0, if string1 is equal to string2
 1, if string1 is greater than string2

```javascript
compareNoCase(string1, string2)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string1 | string | Yes |  |  |
| string2 | string | Yes |  |  |

## Tag Syntax

```javascript
<cfset comparison = compareNoCase("ColdFusion", "coldfusion")>
<cfdump var="#comparison#" />
```

### Expected Result: 0
