# reFindNoCase

Uses a regular expression (RE) to search a string for a pattern, starting from a specified position. The search is case-insensitive.

```javascript
reFindNoCase(reg_expression, String [, start] [, returnsubexpressions])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| reg_expression | string | Yes |  |  |  |
| string | string | Yes |  | A string or a variable that contains one. String in which
 to search. |  |
| start | numeric | No | 1 |  |  |
| returnsubexpressions | boolean | No | NO | True: if the regular expression is found, the first array
 element contains the length and position, respectively,
 of the first match.
 If the regular expression contains parentheses that
 group subexpressions, each subsequent array element
 contains the length and position, respectively, of
 the first occurrence of each group.
 If the regular expression is not found, the arrays each
 contain one element with the value 0.
 False: the function returns the position in the string
 where the match begins. Default. |  |
| scope | string | No | one | CF2016+ * one: returns the first value that matches the regex.
 * all: returns all values that match the regex. | /Users/garethedwards/development/github/cfdocs/docs/functions/refindnocase.md|all |

## Script Syntax

```javascript
reFindNoCase("E", "test 123!")
```

### Expected Result: 2

## Script Syntax

CF2016+ example with all optional arguments

```javascript
serializeJSON(reFindNoCase("E", "test 123!", 1, true, "ALL"))
```

### Expected Result: [{ "len":[1], "match":["e"], "pos":[2]}]
