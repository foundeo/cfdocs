# cfdefaultcase

Used only inside the cfswitch tag body. Contains code to
 execute when the expression specified in the cfswitch tag does
 not match any of the values specified by preceding cfcase tags.

### Syntax

```html
<cfdefaultcase>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfdefaultcase();
```

## Script Syntax

```html
vegetable = "";
switch(vegetable) {
    case "carrot":
        writeOutput("Carrots are orange.");
        break;
    default:
        writeOutput("You don't have any vegetables!");
        break;
}
```

### Expected Result: You don't have any vegetables!

## Tag Syntax

```html
<cfset vegetable = "" /><cfswitch expression="#vegetable#">
    <cfcase value="carrot">
        Carrots are orange.
    </cfcase>
    <cfdefaultcase>
        You don't have any vegetables!
    </cfdefaultcase>
</cfswitch>
```

### Expected Result: You don't have any vegetables!
