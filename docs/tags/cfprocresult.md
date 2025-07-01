# cfprocresult

Associates a query object with a result set returned by a
 stored procedure. Other CFML tags, such as cfoutput and
 cftable, use this query object to access the result set. This
 tag is nested within a cfstoredproc tag.

### Syntax

```html
<cfprocresult name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfprocresult(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name for the query result set. |
| resultset | numeric | No |  | Names one result set, if stored procedure returns more than
 one. |
| maxrows | numeric | No |  | Maximum number of rows returned in result set. |
