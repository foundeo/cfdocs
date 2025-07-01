# htmlCodeFormat

Replaces special characters in a string with their HTML-escaped equivalents and inserts &lt;pre&gt; and &lt;/pre&gt; tags at the beginning and end of the string.
The only difference between this function and `HTMLEditFormat` is that `HTMLEditFormat` doesn't surround the text in HTML `pre` tags.

```javascript
htmlCodeFormat(string [, version])
```

```javascript
returns string
```
