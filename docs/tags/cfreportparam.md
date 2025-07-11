# cfreportparam

Passes input parameters to a ColdFusion Report Builder
 report definition. Allowed inside cfreport tag bodies only.

### Syntax

```html
<cfreportparam>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfreportparam();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | No |  | Variable name for data that is passed. The ColdFusion<br /> Report Builder report definition must include an input<br /> parameter that matches this name. |
| value | string | No |  | Value of the data that is sent. |
| chart | string | No |  | Name of the chart contained in a report or subreport. The value of this attribute must match Name property of a chart defined in the Report Builder report. |
| query | query | No |  | Query value to pass to a subreport or chart. The ColdFusion query must contain at least all of the columns included in the Report Builder query. |
| series | numeric | No |  | Ordinal number of a chart series to use for the query. This attribute is valid only when the chart attribute is specified. |
| style | string | No |  | Style in CSS format for a subreport. |
| subreport | string | No |  | Name of the subreport. |
