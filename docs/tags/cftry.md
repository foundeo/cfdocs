# cftry

Used with one or more cfcatch tags. Together, they catch and
 process exceptions in CFML pages. Exceptions are events
 that disrupt the normal flow of instructions in a CFML
 page, such as failed database operations, missing include
 files, and developer-specified events.

### Syntax

```html
<cftry>
```

### Script Syntax

```javascript
try { } catch (any e) {}
```

## A simple try/catch script based example

Create a divide by zero error and then catch it.

```html
try {
    x = 5/0;
}
catch (any e) {
    writeOutput("Error: " & e.message);
}
```

### Expected Result: Error: Division by zero.

## A simple try/catch tag based example

Create a divide by zero error and then catch it.

```html
<cftry>
    <cfset x = 5/0 />
    <cfcatch type="any">
        Error: <cfoutput>#cfcatch.message#</cfoutput>
    </cfcatch>
</cftry>
```

### Expected Result: Error: Division by zero.
