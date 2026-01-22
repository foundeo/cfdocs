# reMatchNoCase

Uses a regular expression (RE) to search a string for a pattern, starting from a specified position.

```javascript
reMatchNoCase(reg_expression, string)
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| reg_expression | string | Yes |  | Regular expression for which to search. Case insensitive. |
| string | string | Yes |  | A string or a variable that contains one. String in which to search. |

## reMatchNoCase Example

Uses a regular expression (RE) to search a string for a pattern.

```javascript
string = "1234AbcacAcdd";
 writeDump(reMatchNoCase("[A-Z]+",string)) ;
```
