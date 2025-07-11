# onRequestEnd

Defined in Application.cfc, invoked at the end of the request before the request is terminated. It can generate output.

```javascript
function onRequestEnd(string targetPage) {  }
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| targetPage | string | Yes |  | Requested template path relative to the webroot |
