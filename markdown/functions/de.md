# de

Delay evaluation of a string as an expression, when it is passed as a parameter to the IIf or Evaluate functions. Escapes any double quotation marks in the parameter and wraps the result in double quotation marks. It does not escape `#` so the string could still be evaluated in some cases.

```javascript
de(String)
```

```javascript
returns string
```
