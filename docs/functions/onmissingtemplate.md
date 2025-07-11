# onMissingTemplate

Defined in Application.cfc, invoked when a request is made for a CFML template that does not exist.

```javascript
function onMissingTemplate(string targetPage) { return true; }
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| targetPage | string | Yes |  | Requested template path relative to the webroot |
