# cfcase

Used only inside the cfswitch tag body. Contains code to execute when the expression specified in the cfswitch tag has one or more specific values.  Note the difference in the tag and script syntax when providing multiple values for a case.

### Syntax

```html
<cfcase value="">
```

### Script Syntax

```javascript
case "apple":
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | string | Yes |  | The value or values that the expression attribute of the cfswitch tag must match. To specify multiple matching values, for tag syntax, separate the values with the delimiter character; for script syntax list each on the same line. The value or values must be simple constants or constant expressions, not variables. |
| delimiters | string | No | , | Specifies the delimiter character or characters that separate multiple values to match. If you specify multiple delimiter characters, you can use any of them to separate the values to be matched. Used only for tag syntax. |

## Script Syntax

```html
fruit = "";
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

### Expected Result: Fruit, what fruit?

## Tag Syntax

```html
<cfset fruit = "Orange"> 
<cfswitch expression="#fruit#"> 
    <cfcase value="Apple">I like apples!</cfcase>
    <cfcase value="Orange;Citrus" delimiters=";">I like oranges!</cfcase> 
    <cfcase value="Kiwi">I like kiwi!</cfcase>
    <cfdefaultcase>Fruit, what fruit?</cfdefaultcase> 
</cfswitch>
```

### Expected Result: I like oranges!
