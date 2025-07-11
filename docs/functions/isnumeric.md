# isNumeric

Determines whether a string can be converted to a numeric value. Supports numbers in U.S. number format. For other number support use LSIsNumeric.

```javascript
isNumeric(String)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  |  |

## Integer isNumeric

```javascript
isNumeric(23)
```

### Expected Result: YES

## String isNumeric

```javascript
isNumeric("twenty")
```

### Expected Result: NO

## Scientific Notation

The number `5e2` is scientific notation for `5 x 10^2` aka `500`

```javascript
isNumeric(5e2)
```

### Expected Result: YES
