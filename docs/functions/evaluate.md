# evaluate

Evaluates one or more string expressions, dynamically, from left to right. (The results of an evaluation on the left can have meaning in an expression to the right.) Returns the result of evaluating the rightmost expression.

```javascript
evaluate(expression)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| expression | string | Yes |  | Expression to evaluate. String expressions can be complex. If a string expression contains a single- or double-quotation mark, the mark must be escaped. This function is useful for forming one variable from multiple variables. |

## Tag Syntax

```javascript
<!--- Evaluate the expression ---> 
 <cfset first = "ColdFusion"> 
 <cfset second = "ColdFusion"> 
 <cfset op = "eq"> 
 <cfoutput>#evaluate("first #op# second")#</cfoutput>
```

### Expected Result: YES
