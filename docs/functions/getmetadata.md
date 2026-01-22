# getMetadata

Gets metadata (the methods, properties, and parameters of a component) associated with an object that is deployed on the CFML server.

```javascript
getMetadata(value)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | A ColdFusion component, user-defined function, or ColdFusion query. Within a CFC, the parameter can also specify the `this` scope. |

## Dump Metadata of CFC Instance

CF9+

```javascript
writeDump(getMetadata(new Query()));
```
