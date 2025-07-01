# cfpresentationslide

Creates a slide dynamically from an HTML source file,
 HTML and CFML code, or an SWF source file.
 If you do not specify a source file, you must include the HTML or CFML code for
 the body of the slide within the cfpresentationslide tag. The cfpresentationslide
 is the child tag of the cfpresentation tag.

### Syntax

```html
<cfpresentationslide>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfpresentationslide();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| title | string | Yes |  | Specifies the title of the slide. |
| audio | string | No |  | Specifies the path of the audio file relative to the CFM page.
 The audio file must be an MP3 file.
 A slide cannot have both audio and video specified |
| bottomMargin | numeric | No | 0 | Specifies the bottom margin of the slide. |
| duration | numeric | No |  | Specifies the duration in seconds that the slide is played. (required) |
| notes | string | No |  | Specifies the notes used for the slide. |
| presenter | string | No |  | Specifies the presenter of the slide.
 A slide can have only one presenter.
 This name must match one of the presenter names in the cfpresenter tag.
 If no presenter is specified, it will take the first presenter
 specified in the presenter list. |
| rightMargin | numeric | No | 0 | Specifies the right margin of the slide. |
| scale | numeric | No | 1.0 | Specifies the scale used for the HTML content on the slide
 presentation. If the scale attribute is not specified and
 the content cannot fit in one slide, it will automatically
 be scaled down to fit on the slide. |
| src | string | No |  | HTML or SWF source files used as a slide. You can specify
 the following as the slide source:
 an absolute path
 a path relative to the CFM page
 a URL: you can specify the URL only if the source is an HTML file
 SWF files must be present on the system running ColdFusion and the path
 must either be an absolute path or path relative to the CFM page.
 If the src value is not specified, you must specify HTML/CFML code
 as the body. If you specify a source file and HTML /CFML, ColdFusion
 ignores the source file and displays the HTML/CFML in the slide. |
| topMargin | numeric | No | 0 | Specifies the top margin of the slide. |
| video | string | No |  | Specifies the video file used for the presenter of the slide.
 If you specify video for the slide and an image for the presenter,
 the video is used instead of the image for the slide. You cannot specify
 both audio and video for a slide. The video must be an FLV file. |
| advance | string | No |  | Overrides the cfpresentation tag autoPlay attribute for the slide:
 * auto: after the slide plays, the presentation advances to the next slide automatically. This is the default value if cfpresentation autoPlay="yes".
 * never: after the slide plays, the presentation does not advance to the next slide until the user clicks the Next button. This is the default value if cfpresentation autoPlay="no".
 * click: after the slide plays, the presentation advances to the next slide if the user clicks anywhere in the main presentation area. |
| authpassword | string | No |  | Use to pass a password to the target URL for Basic Authentication. Combined with username to form a base64 encoded string that is passed in the Authenticate header. |
| authuser | string | No |  | Use to pass a user name to the target URL for Basic Authentication. Combined with password to form a base64 encoded string that is passed in the Authenticate header. |
| marginbottom | numeric | No |  | Bottom margin of the slide. |
| marginleft | numeric | No |  | Left margin of the slide. |
| marginright | numeric | No |  | Right margin of the slide. |
| margintop | numeric | No |  | Top margin of the slide. |
| useragent | string | No |  | Text to put in the HTTP User-Agent request header field. Identifies the request client software. |
| slides | string | No |  | Used to specify the slide numbers required to export from ppt file |
