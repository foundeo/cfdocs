# getCpuUsage

 Gets the CPU usage with default or custom snapshot interval.

```javascript
getCpuUsage([interval]);
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| interval | numeric | No | 1000 | Time in milliseconds. This is the time delay between two snapshots. |

## Output CPU usage from current snapshot

```javascript
getCpuUsage()
```
