# structKeyArray

Returns the keys in a CFML structure as an array. If structure does not exist throws an exception.

```javascript
structKeyArray(structure)
```

```javascript
returns array
```

## Member Function Syntax

```javascript
someStruct.keyArray()
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

writeDump(structKeyArray(statusCodes));
```

### Expected Result: [NOT_FOUND, BAD_REQUEST, CREATED, OK, NOT_MODIFIED]

## Using Member Function

CF11+ Lucee4.5+ Retrieve a comma separated list of keys using the member function

```javascript
statusCodes = {
    OK = 200,
    CREATED = 201,
    NOT_MODIFIED = 304,
    BAD_REQUEST = 400,
    NOT_FOUND = 404
};

writeDump(statusCodes.keyArray());
```

### Expected Result: [NOT_FOUND, BAD_REQUEST, CREATED, OK, NOT_MODIFIED]
