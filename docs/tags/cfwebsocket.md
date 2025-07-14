# cfwebsocket

Includes the required JavaScript files in your CFM template and creates a global JavaScript reference to the WebSocket Object on the client-side.

### Syntax

```html
<cfwebsocket name="" onMessage="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfwebsocket(name="", onMessage="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  |  |
| onMessage | string | Yes |  | The JavaScript function that is called when the WebSocket receives a message from the server. |
| onOpen | string | No |  | The JavaScript function that is called when the WebSocket establishes a connection. |
| onClose | string | No |  | The JavaScript function that is called when the WebSocket closes a connection. |
| onError | string | No |  | The JavaScript function that is called if there is an error while performing an action over the WebSocket connection. |
| usecfAuth | boolean | No | false | If set to true (default), users need not authenticate for WebSocket connection (provided they have already logged in to the application). This is the default value. If false, users have to specify the credentials for the WebSocket connection. |
| subscribeTo | string | No |  | Comma-separated list of channels to subscribe to. You can specify any or all channels set in your `this.wschannels` Application settings |
| secure | boolean | No |  | If true, the web socket communication will happen over SSL. CF11+ |

## Script Syntax (CF11+)

```html
cfwebsocket(name="ws", onMessage="handleMessage");
```

## Tag Syntax

This example creates a JavaScript WebSocket object named `ws`. When a message is pushed, the client runs the `handleMessage` JavaScript function. This example also uses the `subscribeTo` attribute so it will automatically subscribe to the channel `chat`.

```html
<cfwebsocket name="ws" onMessage="handleMessage" subscribeTo="chat" />
<script>
  function handleMessage(message)  {
    // Output message object to console
    console.log(message);
  }
</script>
```

## Sub-channels

Sub-channels are created dynamically and are referenced by dot notation. When a message is broadcasted to a channel all its sub-channels receive the message as well. This only goes from top to bottom and not the other way around.  In this example we create a JavaScript object called `ws` and subscribe to the `room-general` subchannel of the main `chat` channel.

```html
<cfwebsocket name="ws" onMessage="handleMessage" subscribeTo="chat.room-general" />
```
