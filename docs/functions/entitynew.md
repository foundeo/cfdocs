# entityNew

Creates a new instance of the persistent CFC with the entity name that you provide.

```javascript
entityNew(entityName [,properties [,ignoreExtras]])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| entityName | string | Yes |  | Entity name of the persistent CFC. |
| properties | struct | No |  | Key-value pair (CF struct) of property names and values. |
| ignoreExtras | boolean | No | false | No Help Available |

## Create a new ORM entity

Use entityNew to get a new instance of an Employee entity.

```javascript
var employee = entityNew("Employee");
```
