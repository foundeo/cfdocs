# getPrinterList

Returns list of printers accessible by the ColdFusion server

```javascript
getPrinterList([delimiter])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| delimiter | string | No |  | list separator |

## Return comma separated printer list

On a server with printers, this will display a result. If there are none, it will be an empty string.

```javascript
getPrinterList();
```
