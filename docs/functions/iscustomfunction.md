# isCustomFunction

Determines if a variable is a user defined function

```javascript
isCustomFunction(Object)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| Object | any | Yes |  | The variable to test |

## isCustomFunction Example

Here we've example to check the given variable is user defined function or not.

```javascript
function myfunc() {
return 1;
}
 writeDump( isCustomFunction(myfunc) );
```

### Expected Result: YES

## isCustomFunction Example

Here we've example to check the given variable is user defined function or not.

```javascript
myfunc ="2";
 writeDump( isCustomFunction(myfunc) );
```

### Expected Result: NO
