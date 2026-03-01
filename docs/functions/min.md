# min

 Determines the lesser of two numbers.

```javascript
min(number1, number2)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number1 | numeric | Yes |  |  |
| number2 | numeric | Yes |  |  |

## Minimum of 4 and 9

```javascript
<cfset myNum1 = 4 /> 
<cfset myNum2 = 9 /> 
<cfoutput>The minimum of #myNum1# and #myNum2# numbers is #min(myNum1, myNum2)#.</cfoutput>
```

### Expected Result: The minimum of 4 and 9 is 4.
