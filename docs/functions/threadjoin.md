# threadJoin

Waits for the given thread object to finish running

```javascript
threadJoin()
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| threadName | string | No |  | Thread to join<br /><br />If no `threadName` is specified, all running threads will be affected.<br />You can pass a threadname as string or multiple threads as comma-separated list |
| timeout | numeric | No | 0 | The number of milliseconds for which to suspend thread processing |
