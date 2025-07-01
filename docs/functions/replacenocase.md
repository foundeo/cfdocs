# replaceNoCase

Replaces occurrences of substring1 with callback, in the specified scope. The search is case-insensitive.

```javascript
replaceNoCase(string, substring1, callback [, scope])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.replaceNoCase(substring1, callback[, scope])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | A string (or variable that contains one) within which to replace substring |
| substring1 | string | Yes |  | A string (or variable that contains one) to replace, if found. |
| callback | any | Yes |  | String to replace substring1 with. As of CF2018+ you can also pass a callback function in this argument `function(transform, position, original)`. |
| scope | string | No |  | * one: Replace the first occurrence (default)<br /> * all: Replace all occurrences |
| start | numeric | No | 1 | CF2021+ Position to start searching in the string. |

## Script Syntax

```javascript
getVal = replaceNoCase("ColdFUsion", "u", "a");
writeDump(getVal);
```

### Expected Result: Expected Result: ColdFasion

## Tag Syntax

```javascript
<cfset getVal = replaceNoCase("ColdFusiOn", "O", "a", "ALL")>
<cfdump var="#getVal#">
```

### Expected Result: Expected Result: CaldFusian
