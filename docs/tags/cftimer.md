# cftimer

Displays execution time for a specified section of
 CFML code. ColdFusion MX displays the timing information
 along with any output produced by the timed code.

### Syntax

```html
<cftimer>
```

### Script Syntax

```javascript
cftimer() {}
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| label | string | No |  | Label to display with timing information.
 Default: " " |  |
| type | string | No | debug | - inline: displays timing information inline, following the
 resulting HTML.
 - outline: displays timing information and also displays a line
 around the output produced by the timed code. The browser
 must support the FIELDSET tag to display the outline.
 - comment: displays timing information in an HTML comment
 in the format <!-- label: elapsed-time ms -->. The default label
 is cftimer.
 - debug: displays timing information in the debug output
 under the heading CFTimer Times.
 Default: debug | /Users/garethedwards/development/github/cfdocs/docs/tags/cftimer.md|debug |

## Tag version

```html
<cftimer label="Nap time" type="inline">
Begin some long running process ...
<cfset sleep(2000)>
done.
</cftimer>
```

### Expected Result: The time elapsed while executing the code inside the <cftimer> block should be displayed inline.

## Script version

```html
cftimer(label = "Nap time", type="outline"){
writeoutput("Begin some long running process ... ");
sleep(2000);
writeoutput("done.");
}
```

### Expected Result: The time elapsed while executing the code inside the cftimer block should be displayed in the output with an outline around any output generated within the cftimer call..
