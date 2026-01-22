# isNotMap

Returns true if the given Object is not of Type java.util.Map.

```javascript
isNotMap(obj)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| obj | any | Yes |  |  |

## Check if Map is of type Map

```javascript
myMap = createObject('java','java.util.HashMap');
myMap.put('a','1');
writeOutput(isNotMap(myMap));
```

### Expected Result: true

## Check if something else is of type Map

```javascript
myStruct = {'a': 1};
writeOutput(isNotMap(myStruct));
```

### Expected Result: false
