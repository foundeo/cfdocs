# cfif

Creates simple and compound conditional statements in CFML.
 Tests an expression, variable, function return value, or
 string. Used, optionally, with the cfelse and cfelseif tags.

### Syntax

```html
<cfif>
```

### Script Syntax

```javascript
if (expression) { }
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
