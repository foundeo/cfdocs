# Variables Scope

The `VARIABLES` scope is the default scope in ColdFusion. i.e. if a variable is declared in .cfm and .cfc file without explicitly prefixing a scope, or without 'var' to a variable inside a function, ColdFusion assigns VARIABLES scope to that variable.

### EXAMPLE

`<cfset myVariable = "" />` is same as `<cfset variables.myVariable = "" />`

### CF Script EXAMPLE

```cfml
myVariable = "";
/* is same as */
variables.myVariable = "";
```

Similarly, variable declared in `VARIABLES` scope can be referenced without explicitly prefixing the `VARIABLES` scope.

### EXAMPLE

```cfml
<cfset myVariable = "" />
<!--- can be referenced as --->
<cfoutput>#myVariable#</cfoutput>
<!--- or --->
<cfoutput>#variables.myVariable#</cfoutput>
```

### CF Script EXAMPLE

```cfml
myVariable = "";

writeOutput(myVariable);
/* is same as */
writeOutput(variables.myVariable);
```

Variables declared in `VARIABLES` scope are accessible only within that .cfm or .cfc file.

Variables declared in `VARIABLES` scope in a .cfc file are accessible to all functions within the .cfc file.  If the variable value is modified in one function, all other functions get the newly updated value.

Variables declared in `VARIABLES` scope in a .cfc file are **not** accessible from outside the component.

Adobe `VARIABLES` scope Documentation: https://helpx.adobe.com/coldfusion/cfml-reference/reserved-words-and-variables/scope-specific-built-in-variables/variable-scope.html
