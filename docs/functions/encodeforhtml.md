# encodeForHTML

Encodes the input string for safe output in the body of a HTML tag. The encoding in meant to mitigate Cross Site Scripting (XSS) attacks. This function can provide more protection from XSS than the `HTMLEditFormat` or `XMLFormat` functions do.

```javascript
encodeForHTML(string [, canonicalize])
```

```javascript
returns string
```
