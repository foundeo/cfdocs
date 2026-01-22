# structClear

 Removes all data from a structure.

```javascript
structClear(structure)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure to clear |

## Script Syntax

```javascript
profile = {name:'John', instrument:'guitar', occupation:'singer'};
structClear(profile);
writeOutput(serializeJSON(profile));
```

### Expected Result: An empty struct

## Tag Syntax

```javascript
<cfset profile = {name:'John', instrument:'guitar', occupation:'singer'} />
<cfset structClear(profile) />
<cfdump var="#profile#" />
```

### Expected Result: An empty struct
