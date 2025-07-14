# onMissingMethod

This method is invoked in a CFC when a method call exists that is not defined by cffunction or with a function statement.

```javascript
function onMissingMethod(string missingMethodName, struct missingMethodArguments) { }
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| missingMethodName | string | Yes |  | The name of the missing method. |
| missingMethodArguments | struct | Yes |  | The arguments that were passed on the function call to the missing method. |

## onMissingMethod Example

Creates helper function getPropertyNameForHTML() which calls getPropertyName() and wraps it with the encodeForHTML function.

```javascript
public function onMissingMethod(missingMethodName, missingMethodArguments) {
    if (reFindNoCase("^get[a-zA-Z0-9]+ForHTML$", arguments.missingMethodName) {
        local.getter = this[replaceNoCase(arguments.missingMethodName, "ForHTML", "")];
        return encodeForHTML(local.getter());
    } else {
        throw (message="Method #encodeForHTML(arguments.missingMethodName)# was not found in the component #encodeForHTML(getMetadata(this).name)#");
    }
}
```
