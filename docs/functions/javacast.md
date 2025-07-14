# javaCast

Converts the data type of a CFML variable to pass as an argument to an overloaded method of a Java object.

```javascript
javaCast(type, variable)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes |  | The name of a Java primitive or a Java class name. |
| variable | string | Yes |  | A variable, Java object or array. |

## Convert a ColdFusion Number to a Java double primitive

Converts the number 180.0 degrees to radians using Java method: Math.toRadians(double degrees)

```javascript
createObject("java", "java.lang.Math").toRadians( javaCast("double", 180.0) )
```

### Expected Result: 3.14159265359
