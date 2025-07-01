# iIf

A boolean condition or value is passed into the first argument. If the condition is `true` the second argument is evaluated and returned, if `false` the third argument is evaluated and returned.

```javascript
iIf(condition, expression1, expression2)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| condition | boolean | Yes |  | A boolean value or an expression that evaluates to a boolean. |
| expression1 | string | Yes |  | A CFML expression that is evaluated dynamically using Evaluate if the condition is `true`. |
| expression2 | string | Yes |  | A CFML expression that is evaluated dynamically using Evaluate if the condition is `false`. |

## Simple iIf Example

```javascript
iIf( server.os.name IS "Bacon", de("Running Bacon OS"), de("Not Running Bacon OS") )
```

### Expected Result: Not Running Bacon OS

## Simple Example using Ternary Operator Instead

Instead of using iif, you should use the ternary operator CF9+

```javascript
( (server.os.name IS "Bacon") ? "Running Bacon OS" : "Not Running Bacon OS")
```

### Expected Result: Not Running Bacon OS
