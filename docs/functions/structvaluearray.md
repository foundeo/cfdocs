# structValueArray

Returns all the values as an array

```javascript
structValueArray(structure)
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  |  |

## Traditional function

```javascript
statusCodes = {
    OK = 200,
    CREATED = 201,
    NOT_MODIFIED = 304,
    BAD_REQUEST = 400,
    NOT_FOUND = 404
};

writeDump(structValueArray(statusCodes));
```

### Expected Result: [200, 201, 304, 400, 404]
