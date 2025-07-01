# cfclient

Part of the CF11 mobile features for client side (JS) development. Enables output of CFcode to JS. Must read the wikidoc for full understanding of this new cf tag.

### Syntax

```html
<cfclient> ...output... </cfclient>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfclient(); ...output... /cfclient>
```

## Basic Example

Very basic example. Please read the wikidoc entry at Adobe for further usage scenarios.

```html
<cfclient>
 <cfset myvar = “Hello World”>
 <cfoutput>#myvar#</cfoutput>
</cfclient>
```
