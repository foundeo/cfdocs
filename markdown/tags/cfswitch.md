# cfswitch

Evaluates a passed expression and passes control to the cfcase tag that matches the expression result. You can, optionally, code a cfdefaultcase tag, which receives control if there is no matching cfcase tag value. Note the difference in the tag and script syntax when providing multiple values for a case.

### Syntax

```html
<cfswitch expression="">
```

### Script Syntax

```javascript
switch (expression) { }
```
