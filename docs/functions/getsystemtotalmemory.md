# getSystemTotalMemory

 Gets details of the memory that is available for the operating system, in bytes.

```javascript
getSystemTotalMemory();
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| region | string | No |  | Indicates the cache region from which to remove the stored objects. If no value is specified, default cache region is considered by default. |

## The in-memory file system memory set in cfadmin

```javascript
#NumberFormat(getSystemTotalMemory() / 1000 / 1000,"0.00")# MB
```
