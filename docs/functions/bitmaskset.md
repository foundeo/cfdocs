# bitMaskSet

Performs a bitwise mask set operation.

```javascript
bitMaskSet(number, mask, start, length)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  | Integer |
| mask | numeric | Yes |  | Integer mask |
| start | numeric | Yes |  | Start bit for the set mask (Integer in the range 0-31, inclusive) |
| length | numeric | Yes |  | Length of bits in the set mask (Integer in the range 0-31, inclusive) |

## Bitwise Mask Set

Performs masking operation on each of the corresponding bits

```javascript
bitMaskSet(6, 1, 0, 1)
```

### Expected Result: 7

## Using non zero start parameter

Bit shift the mask 2 places

```javascript
bitMaskSet(10, 1, 2, 1)
```

### Expected Result: 14

## Using non zero mask start and length parameters

```javascript
bitMaskSet(10, 2, 1, 2)
```

### Expected Result: 12
