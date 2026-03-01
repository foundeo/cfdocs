# yesNoFormat

 Yes, for a true value; No for a false value, empty string or null. Throws an exception for other values.

```javascript
yesNoFormat(value)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  | A Boolean value or empty string |

## Example of Yes

Pass in a true value outputs Yes

```javascript
yesNoFormat(true)
```

### Expected Result: Yes

## Example of No

Pass in a false value outputs No

```javascript
yesNoFormat(false)
```

### Expected Result: No

## Example of empty string

Pass in an empty string outputs No

```javascript
yesNoFormat("")
```

### Expected Result: No
