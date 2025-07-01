# cfbreak

Used within a cfloop tag. Breaks out of a loop.

### Syntax

```html
<cfbreak>
```

### Script Syntax

```javascript
break;
```

## Break out of a for loop

Example Using Script Syntax

```html
for (i=1; i <= 10; i++){
    writeOutput("#i#<br>");
    if (i >= 5){
        break;
    }
}
```

### Expected Result: 1 2 3 4 5

## Break out of a CFLoop

Shows tag based syntax.

```html
<cfloop index="i" from="1" to="10">
    <cfoutput>#i#</cfoutput><br>
     <cfif i Ge 5>
        <cfbreak>
    </cfif>
</cfloop>
```

### Expected Result: 1 2 3 4 5
