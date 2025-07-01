# reFind

Uses a regular expression (RE) to search a string for a pattern, starting from a specified position. The search is case-sensitive.

It will return `numeric` if `returnsubexpressions` is `false` and a `struct` of arrays named "len", "match" and "pos" when `returnsubexpressions` is `true`.

```javascript
reFind(reg_expression, string [, start] [, returnsubexpressions])
```

```javascript
returns any
```
