# structEquals

Performs a deep comparison of two structures to see if they represent the same values

```javascript
structEquals(struct1,  struct2)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| struct1 | struct | Yes |  | A structure to compare |
| struct2 | struct | Yes |  | A structure to compare |

## Append options to config struct (without overwrite flag)

```javascript
config1 = {a:0, b:0};
config2 = {a:0, b:1};
writeOutput( structEquals(config1, config2) );
```

### Expected Result: NO
