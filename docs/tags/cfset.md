# cfset

Sets a value in CFML. Used to create a variable, if it
 does not exist, and assign it a value. Also used to call
 functions.

### Syntax

```html
<cfset x = 1>
```

### Script Syntax

```javascript
x = 1;
```

## Script Syntax

```html
x = y = 1; 
z = [ 
    !x, 
    x == 1 && y == 2, 
    x == 1 || y == 2 
]; 
writeDump(z);
```

## Tag Syntax

```html
<cfset x = y = 1> 
<cfset z = [ 
    NOT x, 
    x EQ 1 AND y EQ 2, 
    x EQ 1 OR y EQ 2 
]> 
<cfdump var="#z#">
```
