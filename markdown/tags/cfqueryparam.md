# cfqueryparam

Verifies the data type of a query parameter and, for DBMSs that support bind variables, enables CFML to use bind variables in the SQL statement. Bind variable usage enhances performance when executing a cfquery statement multiple times.

 This tag is nested within a cfquery tag, embedded in a query SQL statement. If you specify optional parameters, this tag performs data validation.

NOTE: Due to security it's highly recommended to use this tag for any user input or non-static value used in a query to prevent code injections and the like.

### Syntax

```html
<cfqueryparam>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfqueryparam();
```
