# cfelse

Used as the last control block in a cfif tag block to handle
 any case not identified by the cfif tag or a cfelseif tag.

### Syntax

```html
<cfelse>
```

### Script Syntax

```javascript
else { }
```

## Script Syntax

```html
count = 10; 
 if (count > 20) { 
 writeOutput(count); 
 } else if (count == 8) { 
 writeOutput(count); 
 } else { 
 writeOutput(count); 
 }
```

## Tag Syntax

```html
<cfset count = 10> 
 <cfif count GT 20> 
 <cfoutput>#count#</cfoutput> 
 <cfelseif count EQ 8> 
 <cfoutput>#count#</cfoutput> 
 <cfelse> 
 <cfoutput>#count#</cfoutput> 
 </cfif>
```
