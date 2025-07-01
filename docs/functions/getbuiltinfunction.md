# getBuiltinFunction

Returns an object, which contains the description, parameters and return-type of the given function. Throws an exception when the function do not exists.

```javascript
getBuiltinFunction(name)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name of the function. |

## Show information about the StructKeyExists-function

Dump the StructKeyExists-function to show information about this function.

```javascript
dump(getBuiltinFunction("StructKeyExists"));
```
