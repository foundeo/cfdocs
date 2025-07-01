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

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| expression | string | Yes |  | CFML expression that yields a scalar value. CFML converts integers, real numbers, Booleans, and dates to numeric values. For example, True, 1, and 1.0 are all equal. |

## Script Syntax

```html
fruit = "Orange";
switch(fruit) {
    case "Apple":
        writeOutput("I like apples!");
        break; 
    case "Orange": case "Citrus":
         writeOutput("I like oranges!");
        break; 
    case "Kiwi":
        writeOutput("I like kiwi!"); 
        break; 
    default: 
        writeOutput("Fruit, what fruit?"); 
        break; 
 }
```

### Expected Result: I like oranges!

## Tag Syntax

```html
<cfset fruit = ""> 
<cfswitch expression="#fruit#"> 
    <cfcase value="Apple">I like apples!</cfcase>
    <cfcase value="Orange,Citrus">I like oranges!</cfcase> 
    <cfcase value="Kiwi">I like kiwi!</cfcase>
    <cfdefaultcase>Fruit, what fruit?</cfdefaultcase> 
</cfswitch>
```

### Expected Result: Fruit, what fruit?

## Dynamic switch case

CF2021+ switch cases are support dynamic value

```html
num = 10;
switch(0) {
 case num % 2:
      writeOutput("Even number");
      break; 
default: 
     writeOutput("Odd number"); 
break; 
 }
```

### Expected Result: Even number
