# numberFormat

Creates a custom-formatted number value. For international
number formatting use LSNumberFormat.
The mask is made up of:
_,9 Digit placeholder; . decimal point; 0 Pads with zeros;
( ) less than zero, puts parentheses around the mask
+ plus sign before positive number minus before negative
- a space before positive minus sign before negative
, Separates every third decimal place with a comma.
L,C Left-justifies or center-justifies number
$ dollar sign before formatted number.
^ Separates left and right formatting.

```javascript
numberFormat(number [, mask])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  |  |
| mask | string | No |  | _ : (underscore): Optional. Digit placeholder.
9 : Optional. Digit placeholder. (Shows decimal places more clearly than _.). Note that when ‘9’ or ‘_’  is used after the decimal place, 0 will be padded, if required. 
. : Location of a mandatory decimal point.
0 : Located to the left or right of a mandatory decimal point. Pads with zeros.
( ) : If number is less than zero, puts parentheses around the mask.
+ : Puts plus sign before positive number; minus sign before negative number.
- : Puts a space before positive number; minus sign before negative number.
, : Separates every third decimal place with a comma.
L,C : Left-justifies or center-justifies number within width of mask column. First character of mask must be L or C. The default value is right-justified.
$ : Puts a dollar sign before formatted number. First character of mask must be the dollar sign ($).
^ : Separates left and right formatting. |

## Format to 2 decimal places

```javascript
<cfoutput>1.234 ('__.00') -> #numberFormat(1.234,'__.00')#<br/> <!--- 1.23 --->
1234 ('__.00') -> #numberFormat(1234,'__.00')#<br/> <!--- 1234.00 ---></cfoutput>
```

## 0 and 9 mask

```javascript
<cfoutput>
123 ('00000') -> #numberFormat(123,'00000')#<br/>
123 ('99999') -> #numberFormat(123,'99999')#<br/>
123 ('99.99999') -> #numberFormat(123.12,'99.99999')#<br/>
</cfoutput>
```

## _ mask

```javascript
<cfoutput>
123 ('_____') -> #numberFormat(123,'_____')#<br/>
123 ('_.___') -> #numberFormat(123,'_.___')#<br/>
11.10 ('__.000') -> #numberFormat(11.10,'__.000')#<br/>
</cfoutput>
```

## + & - mask

```javascript
<cfoutput>
123 ('+') -> #numberFormat(123,'+')#<br/>
-123 ('-') -> #numberFormat(-123,'-')#<br/>
</cfoutput>
```

## , comma

```javascript
<cfoutput>
123 (',') -> #numberFormat(123,',')#<br/>
123456 (',') -> #numberFormat(123456,',')#<br/>
</cfoutput>
```

## L,C mask

```javascript
<cfoutput>
1 ("L999") -> #NumberFormat( 1, "L999" )#<br/>
1 ("C000") -> #NumberFormat( 1, "C000" )#<br/>
</cfoutput>
```

## Two decimal places, decimal input

```javascript
numberFormat(1.23,'__.00')
```

### Expected Result: 1.23

## Two decimal places, integer input

```javascript
numberFormat(123,'__.00')
```

### Expected Result: 123.00

## Zero will pad zeros; nine doesn’t

```javascript
num1 = NumberFormat(123,'00000');
num2 = NumberFormat(123,'99999');
    
writeOutput(num1&'/'&num2);
```

### Expected Result: 00123/ 123

## show positive/negative sign

```javascript
num1 = NumberFormat( 5, "+" );
num2 = NumberFormat( -5, "+" );
    
writeOutput(num1&'/'&num2);
```

### Expected Result: +5/-5

## Formats to a dollar format (US)

You could use dollarFormat() or lsCurrencyFormat() instead

```javascript
numberFormat(123456789,'_$,9.99')
```

### Expected Result: $123,456,789.00
