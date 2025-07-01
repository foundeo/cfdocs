# cfcache

Stores a copy of a page on the server and/or client computer,
 to improve page rendering performance. To do this, the tag
 creates temporary files that contain the static HTML returned
 from a CFML page.

 Use this tag if it is not necessary to get dynamic content each
 time a user accesses a page.
 You can use this tag for simple URLs and for URLs that contain
 URL parameters.

### Syntax

```html
<cfcache>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfcache();
```
