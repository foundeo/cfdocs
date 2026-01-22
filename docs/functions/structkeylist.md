# structKeyList

 Extracts keys from a CFML structure.

```javascript
structKeyList(structure [, delimiter])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
someStruct.keyList([delimiter])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure from which to extract a list of keys |
| delimiter | string | No | , | Character that separates keys in list. Default: comma. |

## Using Custom Delimiter

Retrieve a pipe separated list of keys

```javascript
statusCodes = {
    OK = 200,
    CREATED = 201,
    NOT_MODIFIED = 304,
    BAD_REQUEST = 400,
    NOT_FOUND = 404
};

writeDump(structKeyList(statusCodes, " | "));
```

### Expected Result: "OK | CREATED | NOT_MODIFIED | BAD_REQUEST | NOT_FOUND"

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

writeDump(statusCodes.keyList());
```

### Expected Result: "OK,CREATED,NOT_MODIFIED,BAD_REQUEST,NOT_FOUND"
