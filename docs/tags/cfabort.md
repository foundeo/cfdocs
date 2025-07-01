# cfabort

Stops the processing of a CFML page at the tag location.
 CFML returns everything that was processed before the
 tag. The tag is often used with conditional logic to stop
 processing a page when a condition occurs.

### Syntax

```html
<cfabort>
```

### Script Syntax

```javascript
abort;
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| showerror | string | No |  | Error to display, in a standard CFML error page,
 when tag executes |
| attributecollection | string | No |  | You can specify this tag's attributes in an attributeCollection whose value is a 
 structure. Specify the structure name in the attributeCollection and use the tag‚ 
 attribute names as structure keys. |

## Example of using abort() to stop processing after an error occurs

In this example we demonstrate using the abort() function to stop any further processing after we deliberately call a non-existent function.

```html
try {
	// make a call to a non-existent function
	firstName = userService.getUserById( 1 ).getFirstName();
// catch any errors    
} catch ( any e ) {
	// dump the error to the browser
	writeDump( e );
	// abort further processing
	abort;
}
```

### Expected Result: Error page: Variable USERSERVICE is undefined.

## Example of using <cfabort> to stop processing after an error occurs

In this example we demonstrate using the <cfabort> tag to stop any further processing after we deliberately call a non-existent function.

```html
<cftry>
	<!--- make a call to a non-existent function --->
	<cfset firstName = userService.getUserById( 1 ).getFirstName()>
<!--- catch any errors --->
<cfcatch type="any">
	<!--- dump the error to the browser --->
	<cfdump var="#cfcatch#">
	<!--- abort further processing --->
	<cfabort>
</cfcatch>
</cftry>
```

### Expected Result: Error page: Variable USERSERVICE is undefined.
