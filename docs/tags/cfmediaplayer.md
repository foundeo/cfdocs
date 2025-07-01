# cfmediaplayer

Creates an in-built media player that lets you play FLV files

### Syntax

```html
<cfmediaplayer source="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfmediaplayer(source="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| width | string | No |  | Width of the media player, in pixels. |
| height | string | No |  | Height of the media player, in pixels. |
| fullscreencontrol | boolean | No |  | Whether full screen is enabled |
| hideBorder | boolean | No |  | A Boolean value that specifies if you want to hide border for the media player panel |
| controlbar | boolean | No |  | A Boolean value that specifies if you want to display the control panel for the media player |
| align | string | No |  | Specifies the vertical alignment of the media player. |
| onload | string | No |  | Custom JavaScript function to run on loading the player component. |
| bgcolor | string | No |  | The background color of the media player specified as a Hexadecimal value without a "#" |
| source | string | Yes |  | The URL to the FLV file. |
| name | string | No |  | Name of the media player.
The name attribute is required when you invoke JavaScript functions. |
| quality | string | No |  | The quality of the media playback |
| hideTitle | boolean | No |  | A Boolean value that specifies if you want to hide title for the media player panel |
| oncomplete | string | No |  | Custom JavaScript function to run when the FLV file has finished playing. |
| onstart | string | No |  | Custom JavaScript function to run when the FLV file starts playing. |
| wmode | string | No |  | Specifies the absolute positioning and layering capabilities in your browser |
| autoPlay | boolean | No |  | A Boolean value that specifies if the media player should automatically play the FLV file on loading the CFM page. |
| style | string | No |  | Specify style for mediaplayer |
