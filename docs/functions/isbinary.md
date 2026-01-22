# isBinary

 Determines whether a value is stored as binary data.

```javascript
isBinary(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  |  |

## Checks if toBase64() function returns binary data

toBase64() returns base64 encoded data which is not binary

```javascript
isBinary( toBase64(1) )
```

### Expected Result: NO

## Checks if toBinary() function returns binary data

toBinary() expects base64 encoded data and returns binary data

```javascript
isBinary( toBinary(toBase64(1)) )
```

### Expected Result: YES
