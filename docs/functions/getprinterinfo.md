# getPrinterInfo

Determines which print attributes are supported by a selected printer.

```javascript
getPrinterInfo([printer])
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| printer | string | No |  | Name of the printer |

## Output printer info if exists

```javascript
try {
	writeDump(getPrinterInfo());
}
catch (Application e) {
	writeOutput(e.message & "<br />" & e.detail);
}
catch (any e) {
	rethrow;
}
```
