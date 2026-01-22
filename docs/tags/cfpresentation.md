# cfpresentation

Defines the look and feel of a dynamic slide presentation.
 Use the cfpresentation tag as the parent tag for one or more cfpresentationslide tags,
 where you define the content for the presentation.

### Syntax

```html
<cfpresentation title="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfpresentation(title="");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| title | string | Yes |  | Specifies the title of the presentation. |  |
| backgroundColor | string | No | 0x727971 | Specifies the background color of the presentation.<br /> The value is hexadecimal: use the form "##xxxxxx" or "##xxxxxxxx",<br /> where x = 0-9 or A-F; use two number signs or none. |  |
| control | string | No | normal | Specifies the presentation control: | /Users/garethedwards/development/github/cfdocs/docs/tags/cfpresentation.md|brief |
| controlLocation | string | No | right | Specifies the location of the presentation control: | /Users/garethedwards/development/github/cfdocs/docs/tags/cfpresentation.md|left |
| directory | string | No |  | Specifies the directory where the presentation is saved.<br /> This can be absolute path or a path relative to the CFM page.<br /> ColdFusion automatically generates the files necessary to<br /> run the presentation, including:<br /> index.htm<br /> components.swf<br /> loadflash.js<br /> viewer.swf<br /> ColdFusion stores any data files in the presentation,<br /> including images, video clips, and SWF files referenced by the<br /> cfpresentationslide tags in a subdirectory called data.<br /> To run the presentation, open the index.htm file.<br /> If you do not specify a directory, the presentation<br /> runs in the client browser. |  |
| glowColor | string | No | 0x35D334 | Specifies the color used for glow effects on the buttons.<br /> The value is hexadecimal: use the form "##xxxxxx" or "##xxxxxxxx",<br /> where x = 0-9 or AF; use two number signs or none. |  |
| initialTab | string | No | outline | Specifies which tab will be on top when the presentation is displayed.<br /> This applies only when the control value is normal: | /Users/garethedwards/development/github/cfdocs/docs/tags/cfpresentation.md|notes |
| lightColor | string | No | 0x4E5D60 | Specifies the light color used for light-and shadow effects.<br /> The value is hexadecimal: use the form "##xxxxxx" or "##xxxxxxxx",<br /> where x = 0-9 or A-F; use two number signs or none. |  |
| overwrite | boolean | No | yes | Specifies whether files in the directory are overwritten.<br /> Specify this attribute only when the you specify the directory.<br /> yes: overwrites files if they are already present<br /> no: create new files |  |
| primaryColor | string | No | 0x6F8488 | Specifies the primary color of the presentation.<br /> The value is hexadecimal: use the form "##xxxxxx" or "##xxxxxxxx",<br /> where x = 0-9 or AF; use two number signs or none. |  |
| shadowColor | string | No | 0x000000 | Specifies the shadow color used for light-and shadow effects.<br /> The value is hexadecimal: use the form "##xxxxxx" or "##xxxxxxxx",<br /> where x = 0-9 or A-F; use two number signs or none. |  |
| showNotes | boolean | No | no | Specifies whether the notes tab is present: |  |
| showOutline | boolean | No | yes | Specifies whether the outline is present: |  |
| showSearch | boolean | No | yes | Specifies whether the search tab is present: |  |
| textColor | string | No | 0xFFFFFF | Specifies the color for all the text in the presentation user interface. |  |
| authpassword | string | No |  | Sends a password to the target URL for Basic Authentication. Combined with username to form a base64 encoded string that is passed in the Authenticate header. |  |
| authuser | string | No |  | Sends a user name to the target URL for Basic Authentication. Combined with password to form a base64 encoded string that is passed in the Authenticate header. |  |
| autoplay | boolean | No | YES | Specifies whether to play the presentation automatically:<br /> * true: the presentation automatically runs through the entire presentation at startup.<br /> * false: the user must click the Play button to start the presentation and click the Next button to advance to the next slide in the presentation. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfpresentation.md|YES |
| loop | boolean | No | NO | Specifies whether the presentation runs in a loop:<br /> * true: the presentation restarts automatically after it ends.<br /> * false: the user must click the Play button to restart the presentation. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfpresentation.md|YES |
| proxypassword | string | No |  | Password required by the proxy server. |  |
| proxyuser | string | No |  | User name to provide to the proxy server. |  |
| proxyhost | string | No |  | Host name or IP address of a proxy server to which to send the request. |  |
| proxyport | string | No |  | The port to connect to on the proxy server. |  |
| useragent | string | No |  | Text to put in the HTTP User-Agent request header field. Used to identify the request client software. |  |
| destination | string | No |  | Destination directory |  |
| format | string | No |  | Specifies file format for conversion. The `flashpaper` format has been deprecated since CF11+ | /Users/garethedwards/development/github/cfdocs/docs/tags/cfpresentation.md|ppt |
