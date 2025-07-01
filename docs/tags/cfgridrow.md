# cfgridrow

Lets you define a cfgrid that does not use a query as source
 for row data. If a query attribute is specified in cfgrid, the
 cfgridrow tags are ignored.

### Syntax

```html
<cfgridrow data="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfgridrow(data="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| data | string | Yes |  | Delimited list of column values. If a value contains a
 comma, it must be escaped with another comma |
| delimiter | string | No |  | Delimiter to be used for data |
