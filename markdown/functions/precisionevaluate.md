# precisionEvaluate

 Evaluates one or more string expressions using BigDecimal precision arithmetic. If the results ends in an infinitely repeating decimal value only the first 20 digits of the decimal portion will be used.  BigDecimal precision results only work with addition, subtraction, multiplication and division.  The use of ^, MOD, % or \ arithmetic operators will result in normal integer precision.

```javascript
precisionEvaluate(expressions)
```

```javascript
returns numeric
```
