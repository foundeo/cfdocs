# cfstopwatch

Measures the time taken, in milliseconds, for the code between the start tag and end tag to execute.

### Syntax

```html
<cfstopwatch variable="time" label="timer"></cfstopwatch>
```

### Script Syntax

```javascript
cfstopwatch( variable="time" label="timer" ) {}
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| variable | string | Yes |  | The name of the variable that will contain the value of the time taken. |
| label | string | No |  | The label for the stopwatch, used in debugging output. |

## Tag version

```html
<cfstopwatch variable="stopwatchVar" label="Nap time">
Begin some long running process ...
<cfset sleep(2000)>
done.
</cfstopwatch><cfdump var="stopwatchVar">
```

### Expected Result: The time elapsed while executing the code inside the <cfstopwatch> block is returned as a variable then displayed below.

## Script version

```html
cfstopwatch( variable="stopwatchVar", label = "Nap time" ){
writeoutput("Begin some long running process ... ");
sleep(2000);
}
writeDump( stopwatchVar );
```

### Expected Result: The time elapsed while executing the code inside the <cfstopwatch> block is returned as a variable then displayed below.
