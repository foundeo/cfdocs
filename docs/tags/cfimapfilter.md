# cfimapfilter

Specifies filter parameters that control the actions of cfimap, get operations.

Two ways to use this tag: [name, value pair attributes] or [name, from, to ].


 name = "filter type"
 value = "filter value"

OR 
 

 name = "filter type"
 from = "date/time"
 to = "date/time"

### Syntax

```html
<cfimapfilter name="filter type" ... >
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfimapfilter(name="filter type", ...);
```
