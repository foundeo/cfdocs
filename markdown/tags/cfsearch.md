# cfsearch

Searches Verity collections using CFML or K2Server, whichever search engine a collection is registered by.
 (CFML can also search collections that have not been
 registered, with the cfcollection tag.)

 A collection must be created and indexed before this tag can
 return search results.

### Syntax

```html
<cfsearch name="" collection="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfsearch(name="", collection="");
```
