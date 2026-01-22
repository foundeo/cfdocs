# isStruct

 Determines whether a variable is a structure.
 True, if variable is a CFML structure or is a Java object
 that implements the java.lang.Map interface. Returns False if the
 object in variable is a user-defined function (UDF).

```javascript
isStruct(variable)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| variable | any | Yes |  |  |

## isStruct Example

Returns true if variable is a ColdFusion structure or is a Java object that implements the java.lang.Map interface.

```javascript
isStruct( structNew() )
```

### Expected Result: YES

## isStruct Example for False

Returns false is the object in the variable parameter is a user-defined function UDF).  In the example below exponent is a function created by the user

```javascript
isStruct( arrayNew(1) )
```

### Expected Result: NO
