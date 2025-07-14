# reFind

Uses a regular expression (RE) to search a string for a pattern, starting from a specified position. The search is case-sensitive.

It will return `numeric` if `returnsubexpressions` is `false` and a `struct` of arrays named "len", "match" and "pos" when `returnsubexpressions` is `true`.

```javascript
reFind(reg_expression, string [, start] [, returnsubexpressions])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| reg_expression | string | Yes |  |  |  |
| string | string | Yes |  | A string or a variable that contains one. String in which<br /> to search. |  |
| start | numeric | No | 1 |  |  |
| returnsubexpressions | boolean | No | NO | True: if the regular expression is found, the first array<br /> element contains the length and position, respectively,<br /> of the first match.<br /> If the regular expression contains parentheses that<br /> group subexpressions, each subsequent array element<br /> contains the length and position, respectively, of<br /> the first occurrence of each group.<br /> If the regular expression is not found, the arrays each<br /> contain one element with the value 0.<br /> False: the function returns the position in the string<br /> where the match begins. Default. |  |
| scope | string | No | one | CF2016+ * one: returns the first value that matches the regex.<br /> * all: returns all values that match the regex. | /Users/garethedwards/development/github/cfdocs/docs/functions/refind.md|all |

## Find an integer in a string

This example uses reFind to locate an integer in a string, and returns the position of the integer in the string.

```javascript
reFind("[0-9]+", "test 123!")
```

### Expected Result: 6
