# cJustify

Centers a string in a given field length by adding spaces to either side.

```javascript
cJustify(string, length)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The string that is to be centered |
| length | numeric | Yes |  | The length of the field in which the string should be centered |

## Tag Syntax

```javascript
<cfset jstring = cJustify("ColdFusion", 35)> 
 <cfdump var="#jstring#" />
```
