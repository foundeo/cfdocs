# reReplaceNoCase

Uses a regular expression to search a string for a string
 pattern and replace it with another. The search is
 case-insensitive.

```javascript
reReplaceNoCase(String, reg_expression, substring[, scope])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.reReplaceNoCase(reg_expression, substring[, scope])
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| String | string | Yes |  | A string or a variable that contains one |  |
| reg_expression | string | Yes |  | Regular expression to replace. |  |
| substring | string | Yes |  | A string or a variable that contains one. Replaces<br /> reg_expression |  |
| scope | string | No |  | * one: Replace the first occurrence of the regular<br /> expression. Default.<br /> * all: Replace all occurrences of the regular expression. | /Users/garethedwards/development/github/cfdocs/docs/functions/rereplacenocase.md|all |

## Strip Characters Using ReReplace

This example strips out all characters except a-z and 0-9.

```javascript
reReplaceNoCase("test 123!", "[^a-z0-9]", "", "ALL")
```

### Expected Result: test123

## Extract Characters Using Back Reference

Uses a back reference: \1 to extract the pattern contained within the parenthesis.

```javascript
reReplaceNoCase("123abc456", "[0-9]+([a-z]+)[0-9]+", "\1")
```

### Expected Result: abc
