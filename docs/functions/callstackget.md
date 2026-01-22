# callStackGet

Returns an array of structs by default. Each struct contains template name, line number, and function name (if applicable). This is a snapshot of all function calls or invocations.

```javascript
callStackGet()
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | No | array | Lucee4.5+ The type of the returned value |
| offset | numeric | No | 0 | Lucee5.3.8+ The number of frames to skip |
| maxFrames | numeric | No | 0 | Lucee5.3.8+ The maximum number of frames to return |

## Tag Syntax

This example the factorial of a number is computed.

```javascript
<!--- callfact.cfm --->
<cftry>
    <cfinclude template="fact.cfm">
<cfcatch type="any">
    <cfoutput>
        #cfcatch.message#
        <br>#cfcatch.detail#<br>
    </cfoutput>
</cfcatch>
</cftry>
```

## Script Syntax

This example the factorial of a number is computed.

```javascript
<!--- fact.cfm --->
<cfscript>
    numeric function factorial(n) {
        if (n == 1) {
            writeDump(callStackGet());
            writeOutput('<br>');
            return 1;
        }
        else {
            writeDump(callStackGet());
            writeOutput('<br>');
            return n * factorial(n-1);
        }
    }
    factorial(5);
</cfscript>
```
