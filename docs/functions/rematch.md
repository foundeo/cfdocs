# reMatch

Uses a regular expression (RE) to search a string for a pattern, starting from a specified position.

```javascript
reMatch(reg_expression, string)
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| reg_expression | string | Yes |  | Regular expression for which to search. Case-sensitive. |
| string | string | Yes |  | A string or a variable that contains one. String in which to search. |

## Simple reMatch Example

Extracts numbers from a string and returns them as an array

```javascript
serializeJSON( reMatch("[0-9]+", "1 way to extract any number like 45, 38") )
```

### Expected Result: ["1","45","38"]
