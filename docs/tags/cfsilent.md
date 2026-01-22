# cfsilent

Suppresses output produced by CFML within the body of the tag.

### Syntax

```html
<cfsilent>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfsilent();
```

## Example for cfsilent tag

Content within cfsilent tag will not be displayed

```html
<cfset a = 10> 
 <cfset b = 5> 
 <cfsilent> 
    <cfoutput> This is from inside cfsilent #a+b# </cfoutput> 
 </cfsilent> 
 <cfoutput>This is from outside cfsilent #a-b#</cfoutput>
```

### Expected Result: This is from outside cfsilent 5
