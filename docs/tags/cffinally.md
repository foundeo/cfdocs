# cffinally

Used inside a cftry tag. Code in the cffinally block is processed after the main cftry code and, if an exception
occurs, the cfcatch code. The cffinally block code always executes, whether or not there is an exception.

### Syntax

```html
<cffinally>
```

### Script Syntax

```javascript
finally { }
```

## Script Syntax

```html
try {
	writeOutput('hello world<br/>');
	throw(message='threw on purpose!');
}catch(any e){
	writeOutput('Caught an exception<br/>');
}finally{
	writeOutput('Ran clean-up code regardless of error');
}
```

### Expected Result: hello world
Caught an exception
Ran clean-up code regardless of error

## Tag Syntax

```html
<cftry>
	hello world<br/>
	<cfthrow message="threw on purpose!" />
	<cfcatch type="any">
		Caught an exception<br/>
	</cfcatch>
	<cffinally>
		Ran clean-up code regardless of error
	</cffinally>
</cftry>
```

### Expected Result: hello world
Caught an exception
Ran clean-up code regardless of error
