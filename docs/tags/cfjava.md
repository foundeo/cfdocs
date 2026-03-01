# cfjava

Provides support for writing Java code within ColdFusion.

### Syntax

```html
<cfjava handle="classInstance">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfjava(handle="classInstance");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| handle | variableName | Yes |  | The variable that holds the value of class instance of the Java code. |

## Create Name instance (Tag syntax)

```html
<cfjava handle="nameInstance">
    public class Name {
        private String firstName;
        private String lastName;

        public Name(String firstName, String lastName) {
            this.firstName = firstName;
            this.lastName = lastName;
        }

        public String getFullName() {
            return firstName + " " + lastName;
        }
    }
</cfjava>
<cfset nameInstance.init("John", "Doe")>
<cfset fullName = nameInstance.getFullName()>
<cfoutput>#fullName#</cfoutput>
```

### Expected Result: John Doe
