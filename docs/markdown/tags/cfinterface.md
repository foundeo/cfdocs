# cfinterface

Defines an interface that consists of a set of signatures for functions.
 The interface does not include the full function definitions;
 instead, you implement the functions in a CFC.
 The interfaces that you define by using this tag can make up
 the structure of a reusable application framework.

### Syntax

```html
<cfinterface>
```

### Script Syntax

```javascript
interface displayname="My Interface" { 
 numeric function myFunction(required string myArgument); 
 }
```
