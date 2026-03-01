# trace

 Displays and logs debugging data about the state of an
 application at the time the cftrace tag executes. Tracks
 runtime logic flow, variable values, and execution time.
 Displays output at the end of the request or in the debugging
 section at the end of the request;

 CFML logs cftrace output to the file logs\cftrace.log, in
 the CFML installation directory.

 Note: To permit this tag to execute, you must enable debugging
 in the CFML Administrator. Optionally, to report trace
 summaries, enable the trace section.

```javascript
trace([var] [, text] [, type] [, category] [, inline] [, abort])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| var | string | No |  | The name of a simple or complex variable to display.<br /><br /> Useful for displaying a temporary value, or a value that<br /> does not display on any CFM page. |
| text | string | No |  | User-defined string, which can include simple variable,<br /> but not complex variables such as arrays. Outputs to cflog<br /> text attribute |
| type | string | No | information | Corresponds to the cflog type attribute; displays an<br /> appropriate icon.<br /><br /> * Information<br /> * Warning<br /> * Error<br /> * Fatal Information |
| category | string | No |  | User-defined string for identifying trace groups |
| inline | boolean | No | NO | Displays trace code in line on the page in the<br /> location of the cftrace tag, addition to the debugging<br /> information output. |
| abort | boolean | No | NO | Calls cfabort tag when the tag is executed |
