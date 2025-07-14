# structFind

Determines the value associated with a key in a structure.

```javascript
structFind(structure, key [, defaultValue ])
```

```javascript
returns any
```

## Member Function Syntax

```javascript
struct.find(key [, defaultValue ])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure that contains the value to return |
| key | string | Yes |  | Key whose value to return |
| defaultValue | any | No |  | Lucee4.5+ Default value which will be returned if the key does not exist or if null was found. Currently only supported by Lucee. See https://docs.lucee.org/reference/functions/structfind.html#argument-defaultValue |

## Simple example

Searches through a structure by a given key and outputs the related value

```javascript
countries = {
    "USA"="Washington D.C.",
    "Germany"="Berlin",
    "Japan"="Tokio"
};
writeOutput(structFind(countries, "Germany"));
```

### Expected Result: Berlin
