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
| mode | string | Yes |  | perf_monitor - Returns internal data, in a structure.
 simple_load - Returns an integer value that is computed
 from the state of the server's internal
 queues. Indicates the overall server load.
 prev_req_time - Returns the time, in milliseconds, that it
 took the server to process the previous
 request.
 avg_req_time - Returns the average time, in milliseconds,
 that it takes the server to process a
 request. | /Users/garethedwards/development/github/cfdocs/docs/functions/getmetricdata.md|avg_req_time |
