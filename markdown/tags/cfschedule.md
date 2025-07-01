# cfschedule

Provides a programmatic interface to the CFML scheduling engine. Can run a CFML page at scheduled intervals, with the option to write the page output to a static HTML page. This feature enables you to schedule pages that publish data, such as reports, without waiting while a database transaction is performed to populate the page.

### Syntax

```html
<cfschedule action="delete" task="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfschedule(action="delete", task="");
```
