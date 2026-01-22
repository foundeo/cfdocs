# cfchartdata

Used with the cfchart and cfchartseries tags. This tag defines
 chart data points. Its data is submitted to the cfchartseries
 tag.

### Syntax

```html
<cfchartdata item="" value="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfchartdata(item="", value="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| item | string | Yes |  | string; data point name |
| value | string | Yes |  | number or expression; data point value |

## A simple bar chart

A Simple bar chart with hard coded data.

```html
<cfchart xAxisTitle="Department" yAxisTitle="Salary Average">
	<cfchartseries type="bar">
		<cfchartdata item="Finance" value="75000">
		<cfchartdata item="Sales" value="120000">
		<cfchartdata item="IT" value="83000">
		<cfchartdata item="Facilities" value="45000">
	</cfchartseries>
</cfchart>
```
