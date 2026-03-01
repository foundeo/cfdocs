# cfcontinue

Used within a cfloop tag. Skips processing the remainder of the loop iteration, and continues on to the next iteration.

### Syntax

```html
<cfcontinue>
```

### Script Syntax

```javascript
continue;
```

## Continue when query row is empty

```html
qry = queryNew('ID,Name','integer,varchar',[{
	id: 0,
	name: 'hello'
},{},{
	id: 1,
	name: 'world'
}]);
for(row in qry) {
	if(row.ID is '') {
		continue;
	}
	writeOutput(row.ID&'.: '&row.name&', ');
}
```

### Expected Result: 0.: hello, 1.: world,
