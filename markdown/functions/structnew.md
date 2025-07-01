# structNew

Creates a new, empty structure. The shorthand syntax for an empty unordered struct is `{}`. You can also use the syntax `{"key":"value"}` to initialize it with values. The shorthand syntax for an ordered struct is `[:]` or `[=]`. The shorthand for a case-sensitive struct is `${}`.The shorthand for a ordered and casesensitive struct is `$[=]`.
NOTE: To preserve the case of the struct key, place quotes around it, otherwise it will be converted to uppercase.

```javascript
structNew([type[[,sortType][,sortOrder][,localeSensitive]|[,callback]]])
```

```javascript
returns struct
```
