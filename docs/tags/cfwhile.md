# cfwhile

Loops while the condition is true or until break.

### Syntax

```html
<cfwhile [condition=boolean] [label=string]>
```

### Script Syntax

```javascript
while(condition) { }
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| condition | boolean | No |  | A boolean condition that determines if the loop should continue. |
| label | string | No |  | Used to address loop from `break` or `continue` statement instead of innermost loop. |

## Tag Syntax - without label

Output the value of x while it is less than 5.

```html
<cfset x = 0/>
<cfwhile condition="#x LT 5#">
  <cfoutput>#x#</cfoutput>
  <cfset x = x + 1/>
</cfwhile>
```

### Expected Result: 0 1 2 3 4

## Tag Syntax - with label in break

An outer while loop can be broken from inside a nested loop if the correct label name is passed within the break tag.

```html
<cfset row = 0/>
<cfwhile condition="#row LT 5#" label="outerLoop">
    <cfset col = 0/>
    <cfwhile condition="#col LT 5#" label="innerLoop">

        <cfif col EQ 3>
            <cfbreak/>
        <cfelseif row EQ 1>
            <cfbreak outerLoop/>
        </cfif>

        <cfoutput>[#row#, #col#]</cfoutput>

        <cfset col = col + 1/>
    </cfwhile>
    <cfset row = row + 1/>
</cfwhile>
```

### Expected Result: [0, 0] [0, 1] [0, 2]
