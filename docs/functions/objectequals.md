# objectEquals

Identifies any conflict between CFC instances on the client and the server.

```javascript
objectEquals(clientobject, originalobject)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| clientobject | any | Yes |  | New instance of the CFC on the client. |
| originalobject | any | Yes |  | Original instance of the CFC. |

## Tag Example

```javascript
<cfset isNotConflict = objectEquals(originalobject, serverobject)>
<cfdump var="#isNotConflict#" />
```
