# cfexit

This tag aborts processing of the currently executing CFML
 custom tag, exits the page within the currently executing CFML
 custom tag, or re-executes a section of code within the
 currently executing CFML custom tag.

### Syntax

```html
<cfexit>
```

### Script Syntax

```javascript
exit;
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| method | string | No |  | exittag: aborts processing of currently executing tag<br /> exittemplate: exits page of currently executing tag<br /> loop: reexecutes body of currently executing tag | /Users/garethedwards/development/github/cfdocs/docs/tags/cfexit.md|loop |

## Simple cfexit example

Here the loop over the 5 number. When it's meet the condition as true then the block of code get exit.

```html
<cfoutput>
<cfloop from="1" to="5" index = "i">
<cfif i EQ 3>
	<cfexit>
<cfelse>
	#i#
</cfif>
</cfloop>
</cfoutput>
```

### Expected Result: 1 2
