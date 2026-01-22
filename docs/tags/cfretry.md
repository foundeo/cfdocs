# cfretry

Used within a catch block to jump back to the beginning of the try statement.

### Syntax

```html
<cfretry>
```

### Script Syntax

```javascript
retry
```

## Tag Syntax - basic example

Throw an error and retry within cfcatch until the iteration counter is equal to 3.

```html
<cfoutput>
<cfset iterations = 1/>
<cfset limit = 3/>

<cftry>
	<cfif iterations EQ limit>
		Done!
	<cfelse>
		<cfthrow type='Custom' message='Too soon. '/>
	</cfif>

	<cfcatch>
		#cfcatch.message#

		<cfset iterations += 1/>
		<cfif iterations LE limit>
			<cfretry/>
		</cfif>
	</cfcatch>
</cftry>
</cfoutput>
```

### Expected Result: Too soon. Too soon. Done!

## Script Syntax - basic example

Throw an error and retry within catch until the iteration counter is equal to 3.

```html
iterations = 1;
limit = 3;

try {
	if (iterations == limit) {
		writeOutput('Done!');
	} else {
		throw(message='Too soon. ');
	}
}
catch(any e) {
	writeOutput('#cfcatch.message#');

	iterations += 1;
	if (iterations <= limit) {
		retry;
	}
}
```

### Expected Result: Too soon. Too soon. Done!
