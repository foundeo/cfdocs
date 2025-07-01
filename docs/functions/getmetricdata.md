# getMetricData

Gets server performance metrics
 [mode - quickly]

```javascript
getMetricData(mode)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| mode | string | Yes |  | perf_monitor - Returns internal data, in a structure.<br /> simple_load - Returns an integer value that is computed<br /> from the state of the server's internal<br /> queues. Indicates the overall server load.<br /> prev_req_time - Returns the time, in milliseconds, that it<br /> took the server to process the previous<br /> request.<br /> avg_req_time - Returns the average time, in milliseconds,<br /> that it takes the server to process a<br /> request. | /Users/garethedwards/development/github/cfdocs/docs/functions/getmetricdata.md|avg_req_time |
