# cfreturn

Returns result values from a component method. Contains an
 expression returned as result of the function.
 An expression; the result of the function from which this tag
 is called.

### Syntax

```html
<cfreturn>
```

### Script Syntax

```javascript
return;
```

## A simple cfreturn  example

The function Department return the addition value of a & b. The below code is tag based code example

```html
<cffunction name="Department" access="public" returnType="Numeric">
	<cfargument name="a" type="numeric" >
	<cfargument name="b" type="numeric">
	<cfset c = arguments.a + arguments.b>
	<cfreturn c>
</cffunction>
<cfoutput>#Department(6,7)#</cfoutput>
```

### Expected Result: 13

## A simple cfreturn ( return ) example

The function Department return the subtraction value of a & b. The below code is script based code example

```html
<cfscript>
	public function Department(a,b){
		c = arguments.a - arguments.b;
		return c;
	}
</cfscript>
<cfoutput>#Department(6,7)#</cfoutput>
```

### Expected Result: -1
