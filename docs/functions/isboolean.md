# isBoolean

Returns true when a value can be converted to Boolean

```javascript
isBoolean(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  |  |

## Yes

`Yes` is considered a boolean that is `true`

```javascript
isBoolean("yes")
```

### Expected Result: YES

## No

`No` is considered a boolean that is `false`

```javascript
isBoolean("no")
```

### Expected Result: YES

## Maybe

`Maybe` is not considered a boolean

```javascript
isBoolean("maybe")
```

### Expected Result: NO

## True

`true` is a boolean

```javascript
isBoolean(true)
```

### Expected Result: YES

## False

`false` is a boolean

```javascript
isBoolean(false)
```

### Expected Result: YES

## Zero

`0` is considered a boolean that is `false`

```javascript
isBoolean(0)
```

### Expected Result: YES

## Non Zero Integer

`23` is considered a boolean that is `true`

```javascript
isBoolean(23)
```

### Expected Result: YES
