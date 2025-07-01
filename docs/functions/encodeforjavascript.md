# encodeForJavaScript

Encodes the input string for safe output within JavaScript code. The encoding in meant to mitigate Cross Site Scripting (XSS) attacks. This function can provide more protection from XSS than JSStringFormat does.

```javascript
encodeForJavaScript(string [, canonicalize])
```

```javascript
returns string
```
