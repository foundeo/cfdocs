# trueFalseFormat

Returns the string true or false when a boolean value is passed in. Throws an exception if the value passed in cannot be converted to a boolean.

```javascript
trueFalseFormat(value)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | boolean | Yes |  |  |

## Numeric 1 is interpreted as true

```javascript
trueFalseFormat(1)
```

### Expected Result: true

## Numeric 0 is interpreted as false

```javascript
trueFalseFormat(0)
```

### Expected Result: false

## String representation of 1 is interpreted as true

```javascript
trueFalseFormat('1')
```

### Expected Result: true

## String representation of 0 is interpreted as false

```javascript
trueFalseFormat('0')
```

### Expected Result: false

## YES is recognized as synonym for true as well

```javascript
trueFalseFormat('YES')
```

### Expected Result: true

## And NO as synonym for false

```javascript
trueFalseFormat('NO')
```

### Expected Result: false

## An empty string results in false again

```javascript
trueFalseFormat('')
```

### Expected Result: false
