# cfprogressbar

Creates progressbar

### Syntax

```html
<cfprogressbar name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfprogressbar(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| width | string | No |  | Width in pixel. Default='300' |
| height | string | No |  | Height in pixel. |
| bind | string | No |  | A bind expression specifying a client JavaScript function or server CFC that the control calls to get progress information each time the period defined by the<br />interval attribute elapses. You cannot use this attribute with a duration attribute. |
| oncomplete | string | No |  | This function will be called by CF once work is done. This can be used to reset status of progress bar text or enabling the button, which might be in disable mode while task was under progress or something more. |
| name | string | Yes |  | Name of the progressBar. |
| duration | string | No |  | If callback is not defined then based on this value, ColdFusion will decide percentage work done. One of the callback or totaltime attribute needs to be defined. |
| interval | string | No |  | Time interval on which progressbar will keep on updating. |
| style | string | No |  | The following are the supported styles: <br />bgcolor: The background color for the progress bar. A hexadecimal value without # prefixed.<br />textcolor: Text color on progress bar.<br />progresscolor: Color used to indicate the progress |
| autoDisplay | string | No |  | Set to true to display the progress bar. |
| onError | string | No |  | The JavaScript function to run on an error condition. The error can be a network error or server-side error. |
