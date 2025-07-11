# isInstanceOf

Determines whether an object is an instance of a ColdFusion interface or component, or of a Java class.

```javascript
isInstanceOf(value, type)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | The CFC instance or Java object that you are testing |
| type | string | Yes |  | The name of the interface, component, or Java class of which the object might be an instance |

## Check if Date is instance of java.util.Date

Dates in CFML are instances of the java class: `java.util.Date`

```javascript
isInstanceOf(now(), "java.util.Date");
```

### Expected Result: YES
