# structKeyExists

Determines whether a specific key is present in a structure.

```javascript
structKeyExists(structure, key)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
struct.keyExists(key)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Name of structure to test |
| key | string | Yes |  | Key to test |

## Check if server struct has OS key

```javascript
structKeyExists(server, "os")
```

### Expected Result: YES

## Check if server struct has OS key using member function

CF11+ calling the keyExists member function on a struct.

```javascript
server.keyExists("os")
```

### Expected Result: YES
