# precisionEvaluate

 Evaluates one or more string expressions using BigDecimal precision arithmetic. If the results ends in an infinitely repeating decimal value only the first 20 digits of the decimal portion will be used.  BigDecimal precision results only work with addition, subtraction, multiplication and division.  The use of ^, MOD, % or \ arithmetic operators will result in normal integer precision.

```javascript
precisionEvaluate(expressions)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| expressions | string | Yes |  | Expressions to evaluate |

## precisionEvaluate of 1/3 plus 5

1/3 is calculated then 5 is added to the total.  Display is limited to 20 threes.

```javascript
precisionEvaluate( 1/3 + 5 )
```

### Expected Result: 5.333333333333

## precisionEvaluate of 1/(7*12)

Calculate 1 divided by the product of 7 x 12

```javascript
precisionEvaluate( 1/(7*12) )
```

### Expected Result: 0.011904761905
