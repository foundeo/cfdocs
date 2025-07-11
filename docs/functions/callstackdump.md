# callStackDump

Similar to the function callStackGet except that it outputs a string representation of the call stack.

```javascript
callStackDump(output)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| output | string | No | browser | If you chose "file" and do not provide the complete path to the file, the file is written to the temp directory as determined by the function `getTempDirectory()`. | /Users/garethedwards/development/github/cfdocs/docs/functions/callstackdump.md|file |

## Tag Syntax

In this example, the factorial of a number is computed. The example is similar to the example for CallStackGet except that the function used here is callStackDump.callfact.cfm

```javascript
<cftry>
<cfinclude template="fact.cfm">
<cfcatch type="any">
<cfoutput>
#cfcatch.message#
<br>#cfcatch.detail#
<br>
</cfoutput>
</cfcatch>
</cftry>
```

## Tag Syntax

fact.cfm

```javascript
<cffunction name="factorial" hint="returns the factorial of a number" output="true">
       <cfargument name="n" required="yes" type="numeric" hint="The number for which the factorial is returned" />
       <cfif n eq 1>
              <cfset callStackDump()>
              <cfreturn 1>
       <cfelse>
              <cfset callStackDump()>
              <cfreturn n * factorial(n - 1)>
       </cfif>
</cffunction>
<cfoutput>Factorial of 5 - #factorial(5)#</cfoutput>
```
