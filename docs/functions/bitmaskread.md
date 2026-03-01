# bitMaskRead

Performs a bitwise mask read operation.
 Returns an integer representation of the corresponding bits specified in the mask.

```javascript
bitMaskRead(number, start, length)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| number | numeric | Yes |  | Integer |
| start | numeric | Yes |  | Start bit for the read mask (Integer in the range 0-31, inclusive) |
| length | numeric | Yes |  | Length of bits in the read mask (Integer in the range 0-31, inclusive) |

## Bitwise Mask Read

Uses the bitMaskRead function to read each of the corresponding bits specified in the mask

```javascript
bitMaskRead(3, 0, 1)
```

### Expected Result: 1

## Using non zero start parameter

Bit shift the mask 2 places

```javascript
bitMaskRead(10, 2, 1)
```

### Expected Result: 0

## Using non zero read mask start and length parameters

```javascript
bitMaskRead(10, 1, 3)
```

### Expected Result: 5
