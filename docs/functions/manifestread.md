# manifestRead

reads a manifest file and returns the content as struct

```javascript
manifestRead(path)
```

```javascript
returns struct
```

## Member Function Syntax

```javascript

```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | string | Yes |  | Path to<br />— a jar file containing a "MANIFEST.MF" file in the directory "/META-INF/"<br />— a Manifest file<br /><br />or the content of a Manifest File |

## Dump manifest of a bundle

```javascript
dump(manifestRead(path));
```
