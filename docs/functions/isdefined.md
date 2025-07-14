# isDefined

Evaluates a string value to determine whether the variable named in it exists.

```javascript
isDefined(variable_name)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| variable_name | string | Yes |  | A string expression containing the name of a variable to check the existence of. Only simple dotted notation is supported (for example `myVar`, `arguments.myArg`, `myStruct.key`). Square bracket notation to reference array elements or struct keys is not supported. |

## Using IsDefined

Checking for the existence of a `form` variable.

```javascript
<cfif isDefined("form.submit")>...</cfif>
```

## Scope Evaluation Order and Unscoped Variables

Beware of scope evaluation order when checking for an unscoped variable name.

```javascript
url.foo = "url.foo" ; form.foo = "form.foo"; writeoutput("Is 'foo' defined? " & isDefined("foo")); writeoutput(isDefined("foo") ? " (" & foo & ")" : "");
```

### Expected Result: Is 'foo' defined? YES (url.foo)

## Dot-notation Variable Names

Potentially unexpected behavior when checking for a dot-notation variable containing a scope name.

```javascript
local["form.submit"] = "local['form.submit']" ; form.submit = "form.submit"; writeoutput("Is 'form.submit' defined?" & isDefined("form.submit")); writeoutput(isDefined("form.submit") ? " (" & form.submit & ")" : ""); writeoutput("<br>"); writeoutput("Is 'submit' defined? " & isDefined("submit")); writeoutput(isDefined("submit") ? " (" & submit & ")" : "");
```

### Expected Result: Is 'form.submit' defined? YES (local['form.submit']) Is 'submit' defined? YES(form.submit)
