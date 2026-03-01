# isValid

Tests whether a value meets a validation or data type rule.

```javascript
isValid(type, value, min, max, pattern)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes |  | The valid format for the data. |
| value | any | Yes |  | The value to test. |
| min | numeric | No |  | The minimum valid value; used only for range validation. |
| max | numeric | No |  | The maximum valid value; used only for range validation. |
| pattern | string | No |  | A regular expression that the parameter must match;<br /> used only for regex or regular_expression validation. |

## Check to see if a 235 is an integer

Use the isValid function with integer as the type.

```javascript
isValid("integer", 235)
```

### Expected Result: true

## Validate an Email Address

Use the isValid function with email as the type.

```javascript
isValid("email", "user@example.com")
```

### Expected Result: true
