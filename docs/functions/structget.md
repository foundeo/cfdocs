# structGet

Returns a value in a structure or a structure in the specified path.

```javascript
structGet(path)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | Pathname of variable that contains structure or array from which CFML retrieves the value. If there is no structure or array present in the path, this function creates structures or arrays to make it a valid variable path. |

## Get a value in a structure using structGet

```javascript
x = { y = { z=8 } };
writeDump( structGet("x.y.z") );
```

### Expected Result: 8

## Accidentally Modifying a Structure

The structGet function will modify the variable x by adding a new structure x.a and also adds a key x.a.b to satisfy the path.

```javascript
x = { y = { z=8 } };
writeDump( structGet("x.a.b") );
writeDump(x);
```

## Accidentally Overwriting a variable using structGet

The value of x.y.z[2] will be set to an empty struct.

```javascript
x = { y = { z=[1,2,3] } };
writeDump( structGet("x.y.z[2]") );
writeDump(x);
```
