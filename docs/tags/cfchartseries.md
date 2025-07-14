# cfchartseries

Used with the cfchart tag. This tag defines the style in which
 chart data displays: bar, line, pie, and so on.

### Syntax

```html
<cfchartseries type="bar">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfchartseries(type="bar");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| type | string | Yes |  | Sets the chart display style | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchartseries.md|pie |
| query | query | No |  | Name of CFML query from which to get data. |  |
| itemcolumn | string | No |  | Name of a column in the query specified in the query<br /> attribute; contains the item label for a data point to<br /> graph. |  |
| valuecolumn | string | No |  | Name of a column in the query specified in the query<br /> attribute; contains data values to graph. |  |
| serieslabel | string | No |  | Text of data series label |  |
| seriescolor | string | No |  | Color of the main element (such as the bars) of a chart.<br /> For a pie chart, the color of the first slice.<br /><br /> Hex value or supported named color; see name list in the<br /> cfchart Usage section.<br /> For a hex value, use the form "##xxxxxx", where x = 0-9 or<br /> A-F; use two pound signs or none. |  |
| paintstyle | string | No | plain | Sets the paint display style of the data series. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchartseries.md|light |
| markerstyle | string | No | rectangle | Applies to chartseries type attribute values line, curve<br /> and scatter, and show3D attribute value no. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchartseries.md|rcross |
| colorlist | string | No |  | Applies if chartseries type attribute = "pie". Sets pie<br /> slice colors.<br /><br /> Comma-delimited list of hex values or supported, named web<br /> colors; see name list in the cfchart Usage section.<br /><br /> For a hex value, use the form "##xxxxxx", where x = 0-9 or<br /> A-F; use two pound signs or none. |  |
| datalabelstyle | string | No |  | Specifies the way in which the color is applied to the<br /> item in the series:<br /> - None = nothing is printed (default)<br /> - Value = the value of the datapoint<br /> - Rowlabel = the row's label<br /> - Columnlabel = the column's label<br /> - Pattern | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchartseries.md|pattern |

## A simple area chart

A Simple area chart with hard coded data.

```html
<cfchart xAxisTitle="Subject" yAxisTitle="Marks">
	<cfchartseries type="area" seriescolor ="##ccc">
		<cfchartdata item="Tamil" value="80">
		<cfchartdata item="English" value="85">
		<cfchartdata item="Maths" value="95">
		<cfchartdata item="Science" value="88">
	</cfchartseries>
</cfchart>
```
