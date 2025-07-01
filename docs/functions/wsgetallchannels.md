# wsGetAllChannels

Provides all the channels defined in the Application.cfc as an array.

```javascript
wsGetAllChannels (); wsGetAllChannels('channelName');
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| channelName | string | No |  | If specified, returns all sub-channels listed under the entered channel name. If left unspecified, the function returns all channels registered under the current application. |
