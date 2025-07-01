# findNoCase

Finds the first occurrence of a substring in a string, from a specified start position. If substring is not in string, returns zero. The search is case-insensitive.

```javascript
findNoCase(substring, string [, start])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| substring | string | Yes |  | The string for which you are looking |
| string | string | Yes |  | The string in which to search |
| start | numeric | No | 1 | The position from which to start searching in the string |

## Script Syntax

```javascript
findNoCase("s", "cfdocs.org", 0)
```

### Expected Result: 6
