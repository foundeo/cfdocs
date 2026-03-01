# cflock

Ensures the integrity of shared data. Instantiates the
 following kinds of locks:

 * Exclusive allows single-thread access to the CFML constructs
 * Read-only allows multiple requests to access CFML constructs

### Syntax

```html
<cflock name="lockName" timeout="3">
```

### Script Syntax

```javascript
lock name="lockName" timeout="3" { }
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| timeout | numeric | Yes |  | Maximum length of time, in seconds, to wait to obtain a<br /> lock. If lock is obtained, tag execution continues.<br /> Otherwise, behavior depends on throwOnTimeout attribute<br /> value. |
| scope | string | No |  | Lock scope. Mutually exclusive with the name attribute.<br /> Lock name. Only one request in the specified scope can<br /> execute the code within this tag (or within any other<br /> cflock tag with the same lock scope scope) at a time. |
| name | string | No |  | Lock name. Mutually exclusive with the scope attribute.<br /> Only one request can execute the code within a cflock tag<br /> with a given name at a time. Cannot be an empty string. |
| throwontimeout | boolean | No | YES | How timeout conditions are handled. |
| type | string | No | exclusive | readOnly: lets more than one request read shared data.<br /> exclusive: lets one request read or write shared data. |
| result | string | No | cflock | Lucee4+ Specifies a name for the structure in which cflock returns the statusCode and ExecutionTime variables. Default variable is "cflock". |

## Script Syntax

```html
lock timeout="60" scope="session" type="exclusive" { 
 session.myVar = "Hello"; 
 }
```

## Tag Syntax

```html
<cflock timeout="60" scope="session" type="exclusive"> 
 <cfset session.myVar = "Hello"> 
 </cflock>
```
