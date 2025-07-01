# listRemoveDuplicates

Removes duplicate values (if they exist) in a list.

```javascript
listRemoveDuplicates(list[, delimiter] [, ignoreCase])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | Required. List of objects. |
| delimiter | string | No | , | Optional. Character(s) that separate list elements. The default value is comma. |
| ignoreCase | boolean | No | NO | Optional. If true, ignores the case of strings in the list. By default the value is set to false. |

## Basic usage (case-sensitive)

Basic usage. Optional arguments left as defaults.

```javascript
listRemoveDuplicates("one,two,three,four,five,one,five,three")
```

### Expected Result: one,two,three,four,five

## Optional arguments usage (ignore case = true)

Optional arguments being set. Ignore case set to true

```javascript
listRemoveDuplicates("one,two,three,four,five,ONE,TWO,THREE", ",", true)
```

### Expected Result: one,two,three,four,five
