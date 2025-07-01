# cflock

Ensures the integrity of shared data. Instantiates the
 following kinds of locks:

 * Exclusive allows single-thread access to the CFML constructs
 * Read-only allows multiple requests to access CFML constructs

### Syntax

```html
<cflock name="lockName" timeout="3">
```

### Script Syntax

```javascript
lock name="lockName" timeout="3" { }
```
