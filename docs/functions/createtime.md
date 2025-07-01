# createTime

 Creates a time variable.

```javascript
createTime(hour, minute, second)
```

```javascript
returns date
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| hour | numeric | Yes |  | Hour of the day in 24-hour notation (0-23) |
| minute | numeric | Yes | 0 | Minute within the hour |
| second | numeric | Yes | 0 | Second within the minute |
| millisecond | numeric | No | 0 |  |
| timezone | numeric | No |  |  |

## Tag Syntax

```javascript
<cfset yourTime = createTime("5", "24", "56")>  
 <cfdump var="#yourTime#" />
```
