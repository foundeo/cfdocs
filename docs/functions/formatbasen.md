# formatBaseN

Converts number to a string, in the base specified by radix.

```javascript
formatBaseN(number, radix)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  | The number to convert |
| radix | numeric | Yes |  | The base radix to use |

## Format 10 as dual number

```javascript
formatBaseN(10,2)
```

### Expected Result: 1010

## Format 1024 as hexadecimal number

```javascript
formatBaseN(1024,16)
```

### Expected Result: 400

## Format 125 as decimal number

```javascript
formatBaseN(125,10)
```

### Expected Result: 125

## Format a float

Floors float to integer then formats with radix given

```javascript
formatBaseN(10.75,2)
```

### Expected Result: 1010
