# writeDump

Outputs the elements, variables and values of most kinds of CFML objects. Useful for debugging. You can display the contents of simple and complex variables, objects, components, user-defined functions, and other elements. Equivalent to the cfdump tag, useful in cfscript.

```javascript
writeDump(var [, output] [, format] [, abort] [, label] [, metainfo] [, top] [, show] [, hide] [, keys] [, expand] [, showUDFs])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| var | variableName | Yes |  | Variable to display. Enclose a variable name in pound
 signs. |
| output | string | No | browser | Where to send the results of cfdump. |
| format | string | No | text | specify whether to save the results of a cfdump to a file in text or HTML format |
| abort | boolean | No | NO | Boolean value to immediately abort after displaying the dump. |
| label | string | No |  | A string; header for the dump output. |
| metainfo | boolean | No | YES | Includes information about the query in the cfdump results. |
| top | numeric | No |  | The number of rows to display. |
| show | string | No |  | show column or keys. |
| hide | string | No |  | hide column or keys. |
| keys | numeric | No |  | For a structure, number of keys to display. |
| expand | boolean | No | YES | Yes: In Internet Explorer and Mozilla, expands views |
| showUDfs | boolean | No | YES | show UDFs in cfdump output. |

## Dump Server Scope

```javascript
writeDump(server);
```
