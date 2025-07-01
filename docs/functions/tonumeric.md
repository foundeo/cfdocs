# toNumeric

Cast a value to a number.

```javascript
toNumeric(value [, radix])
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| value | any | Yes |  |  |  |
| radix | any | No | 10 | The base of the value. | /Users/garethedwards/development/github/cfdocs/docs/functions/tonumeric.md|hex |

## Cast a string to a number.

```javascript
toNumeric("29.5")
```

### Expected Result: 29.5

## Cast a hex-value to a number.

```javascript
toNumeric("FF0011", "hex")
```

### Expected Result: 16711697

## Cast a binary-value to a number.

```javascript
toNumeric("1010", "bin")
```

### Expected Result: 10
