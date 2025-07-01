# threadNew

Creates a new thread of execution based on the passed closure/lambda.

```javascript
threadNew()
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| runnable | function | Yes |  | The closure/lambda to execute in the new thread. |  |
| attributes | struct | No | {} | A struct of data to bind into the thread's scope. |  |
| name | string | No |  | The name for the thread. |  |
| priority | string | No | normal | The priority of the thread. | /Users/garethedwards/development/github/cfdocs/docs/functions/threadnew.md|low |
