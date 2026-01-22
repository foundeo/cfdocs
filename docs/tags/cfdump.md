# cfdump

Outputs the contents of a variable of any type for debugging purposes. The variable can be as simple as a string or as complex as a cfc component instance.

### Syntax

```html
<cfdump var="">
```

### Script Syntax

```javascript
writeDump(var = cgi, label = "CGI Scope");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| var | variableName | Yes |  | Variable to display. Enclose a variable name in pound signs. |
| expand | boolean | No | YES | Yes: Expands views |
| label | string | No |  | A string; header for the dump output. |
| top | numeric | No |  | CF7+ The number of rows to display. For a structure, this is the number of nested levels to display (useful for large structures). |
| format | string | No | text | CF8+ Specify whether to save the results of a cfdump to a file in text or HTML format. |
| hide | string | No |  | CF8+ Hide column or keys. |
| keys | numeric | No |  | CF8+ For a structure, number of keys to display. |
| metainfo | boolean | No | YES | CF8+ Includes information about the query in the cfdump results. |
| output | string | No | browser | CF8+ Where to send the results of cfdump. |
| show | string | No |  | CF8+ Show column or keys. |
| showUDfs | boolean | No | YES | CF8+ Show UDFs in cfdump output. |
| abort | boolean | No | NO | CF9+ Stops further processing of page. |

## Dump Server Scope (Tag Based)

Outputs a listing of all the variables in the server scope.

```html
<cfdump var="#server#" label="Server Scope">
```

## Dump Server Scope (Script Based)

Outputs a listing of all the variables in the server scope.

```html
writeDump(var = server, label = "Server Scope");
```

## LUCEE also supports this syntax (Script Based)

Outputs a listing of all the variables in the server scope. Only for LUCEE.

```html
dump(var = server, label = "Server Scope");
```

## Dump Then Abort

CF9+ Specifying the "abort" attribute without corresponding value is equivalent to assigning it with a "true" value. However, when this attribute is excluded, the default value of "false" is applied.

```html
<cfdump var="#server#" abort>
```
