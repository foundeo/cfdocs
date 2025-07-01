# encodeForHTMLAttribute

Encodes the input string for safe output in the attribute value of an HTML attribute, such as table width or image height. The encoding is meant to mitigate Cross Site Scripting (XSS) attacks.

```javascript
encodeForHTMLAttribute(string [, canonicalize])
```

```javascript
returns string
```
