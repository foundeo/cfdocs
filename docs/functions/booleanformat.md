# booleanFormat

Evaluates the input as a boolean, and outputs either true or false. If not a boolean throws an exception.

```javascript
booleanFormat(value)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | numeric | Yes |  |  |

## 1 is definitely true

```javascript
booleanFormat(1)
```

### Expected Result: true

## 0 is definitely false

```javascript
booleanFormat(0)
```

### Expected Result: false

## Negative -1 is true as well

```javascript
booleanFormat(-1)
```

### Expected Result: true

## And even a number larger then 1 is true

```javascript
booleanFormat(5)
```

### Expected Result: true
