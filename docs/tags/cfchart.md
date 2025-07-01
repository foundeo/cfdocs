# cfchart

Generates and displays a chart.

### Syntax

```html
<cfchart>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfchart();
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| format | string | No | html | File format in which to save graph.
`format=flash` has been deprecated in CF2016+
For Lucee the default value is `png` and the format `html` is not supported. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|png |
| chartheight | numeric | No | 240 | Chart height; integer number of pixels |  |
| chartwidth | numeric | No | 320 | Chart width; integer number of pixels |  |
| scalefrom | numeric | No |  | Y-axis minimum value; integer |  |
| scaleto | numeric | No |  | Y-axis max value; integer |  |
| showxgridlines | boolean | No | NO | yes: display X-axis gridlines |  |
| showygridlines | boolean | No | YES | yes: display Y-axis gridlines |  |
| gridlines | numeric | No | 10 | Number of grid lines to display on value axis, including
 axis; positive integer. |  |
| seriesplacement | string | No | default | Applies to charts that have more than one data series.
 Relative positions of series. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|percent |
| foregroundcolor | string | No | black | color for control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|yellow |
| backgroundcolor | string | No |  | Color of the area between the data background and the chart
 border, around labels and around the legend. Hexadecimal
 value or supported named color. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|yellow |
| showborder | boolean | No | NO | Whether to display a border around the chart |  |
| databackgroundcolor | string | No | white | color for control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|yellow |
| font | string | No | arial | Font of data in column. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|arialunicodeMS |
| fontsize | numeric | No |  | Size of text in column. |  |
| fontitalic | boolean | No | NO | Yes: displays grid control text in italics |  |
| fontbold | boolean | No | NO | Yes: displays grid control text in bold |  |
| labelformat | string | No | number | Format for Y-axis labels. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|date |
| xaxistitle | string | No |  | text; X-axis title |  |
| yaxistitle | string | No |  | text; X-axis title |  |
| xaxistype | string | No | category | CF6.1+ The axis indicates the data category. Data is sorted according to the sortXAxis attribute.
 * scale The axis is numeric. All cfchartdata item attribute
 values must numeric. The X axis is automatically sorted
 numerically. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|scale |
| yaxistype | string | No | category | CF6.1+ Currently has no effect, as Y axis is always used for data
 values. Valid values are category and scale | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|scale |
| sortxaxis | boolean | No | NO | Display column labels in alphabetic order along X-axis.
 Ignored if the xAxisType attribute is scale. |  |
| show3d | boolean | No | YES | Display chart with three-dimensional appearance. |  |
| xoffset | numeric | No | 0.1 | Applies if show3D="yes". Number of units by which to
 display the chart as angled, horizontally |  |
| yoffset | numeric | No | 0.1 | Applies if show3D="yes". Number of units by which to
 display the chart as angled, horizontally. |  |
| showlegend | boolean | No | YES | CF8+ if chart contains more than one data series, display legend |  |
| tipstyle | string | No | mouseOver | Determines the action that opens a popup window to display
 information about the current chart element.
 * mouseDown: display if the user positions the cursor at the element
 and clicks the mouse. Applies only to Flash format graph files.
 * mouseOver: displays if the user positions the cursor at the element
 * none: suppresses display | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|none |
| tipbgcolor | string | No | white | color for control. For a hex value, use the form:
 textColor = "##xxxxxx", where x = 0-9 or A-F; use two hash
 signs or none. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|yellow |
| showmarkers | boolean | No | YES | Applies to chartseries type attribute values line, curve
 and scatter.
 yes: display markers at data points |  |
| markersize | numeric | No |  | Size of data point marker. in pixels. Integer. |  |
| pieslicestyle | string | No | sliced | Applies to chartseries type attribute value pie. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|sliced |
| URL | string | No |  | URL to open if the user clicks item in a data series; the
 onClick destination page.

 You can specify variables within the URL string;
 ColdFusion passes current values of the variables.
 * $VALUE$: the value of the selected row. If none, the value is an empty string.
 * $ITEMLABEL$: the label of the selected item. If none, the value is an empty string.
 * $SERIESLABEL$: the label of the selected series. If none, the value is an empty string. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|$SERIESLABEL$ |
| name | string | No |  | Page variable name. String. Generates the graph as
 binary data and assigns it to the specified variable.
 Suppresses chart display. You can use the name value in
 the cffile tag to write the chart to a file. |  |
| style | string | No |  | CF7+ XML file or string to use to specify the style of the chart. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|yellow |
| title | string | No |  | CF7+ Title of the chart. |  |
| base64 | boolean | No | false | CF2018+ Can only be used for client side charts. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfchart.md|false |

## CFML Markup

A Simple PIE chart with hard coded data.

```html
<cfchart format="html" title="Sales Report">
	<cfchartseries type="pie">
		<cfchartdata item="2012" value="#RandRange(300000,900000)#">
		<cfchartdata item="2013" value="#RandRange(300000,900000)#">
		<cfchartdata item="2014" value="#RandRange(300000,900000)#">
		<cfchartdata item="2015" value="#RandRange(300000,900000)#">
	</cfchartseries>
</cfchart>
```

## Script Syntax (CF11+)

```html
cfchart(format = "html", title = "Sales Report") {
	cfchartseries(type = "pie") {
		cfchartdata(item = "2012", value = "#RandRange(300000, 900000)#");
		cfchartdata(item = "2013", value = "#RandRange(300000, 900000)#");
		cfchartdata(item = "2014", value = "#RandRange(300000, 900000)#");
		cfchartdata(item = "2015", value = "#RandRange(300000, 900000)#");
	}
}
```
