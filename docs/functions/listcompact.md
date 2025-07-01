# listCompact

Remove empty elements from start and end of the list

```javascript
listCompact(list [, delimiters] [, multiCharacterDelimiter])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
list.listCompact([delimiters] [, multiCharacterDelimiter])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  |  |
| delimiters | string | No | , |  |
| multiCharacterDelimiter | boolean | No | false |  |

## Trims first and last comma from list string

```javascript
listCompact(",eggs,milk,bread,flour,")
```

### Expected Result: eggs,milk,bread,flour
