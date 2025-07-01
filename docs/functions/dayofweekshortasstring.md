# dayOfWeekShortAsString

Returns the first three letters of the day of the week passed to the function

```javascript
dayOfWeekShortAsString(day_of_week [, locale])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| day_of_week | numeric | Yes |  | Only values from 1 to 7 are valid.
Week starting with 1 for Sunday and ends with 7 for Saturday. |
| locale | string | No |  |  |

## Get Sunday

```javascript
dayOfWeekShortAsString(1)
```

### Expected Result: Sun

## Get Sunday with french locale

```javascript
dayOfWeekShortAsString(1,"fr")
```

### Expected Result: dim.
