# reReplace

Uses a regular expression (regex) to search a string for a string pattern and replace it with another. The search is case-sensitive.

```javascript
reReplace(string, regex, substring [, scope])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.reReplace(regex, substring[, scope])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| string | string | Yes |  | A string or a variable that contains one |  |
| regex | string | Yes |  | Regular expression to replace. |  |
| substring | string | Yes |  | A string or a variable that contains one. Replaces substring with the regex match |  |
| scope | string | No | one | * one: Replace the first occurrence of the regular<br /> expression. Default.<br /> * all: Replace all occurrences of the regular expression. | /Users/garethedwards/development/github/cfdocs/docs/functions/rereplace.md|all |

## Strip Characters Using reReplace

This example strips out all characters except a-z and 0-9.

```javascript
reReplace("test 123!", "[^a-z0-9]", "", "ALL")
```

### Expected Result: test123

## Extract Characters Using Back Reference

Uses a back reference: \1 to extract the pattern contained within the parenthesis.

```javascript
reReplace("123abc456", "[0-9]+([a-z]+)[0-9]+", "\1")
```

### Expected Result: abc
