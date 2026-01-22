# onError

Defined in Application.cfc, invoked when an exception occurs that was not caught by a cftry or cfcatch statement.

```javascript
function onError(exception, eventName) {}
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| exception | struct | Yes |  | A structure containing the exception similar to what the cfcatch tag has. |  |
| eventName | string | Yes |  | The name of the application event at which the exception occurred. If no onRequest method is defined then an empty string may be passed. | /Users/garethedwards/development/github/cfdocs/docs/functions/onerror.md|[empty string] |
