# cfpresenter

Describes a presenter in a slide presentation. A slide presentation can have multiple presenters.
 The presenters must be referenced from the slides defined by the cfpresentationslide tag.

### Syntax

```html
<cfpresenter name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfpresenter(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| biography | string | Yes |  | Specifies the biography of the presenter. |
| name | string | Yes |  | Specifies the name of the presenter. |
| email | string | No |  | The name to use for the JavaScript proxy class. |
| image | string | No |  | Specifies the path for the presenter's image in JPEG format.<br /> The JPG file must be relative to the CFM page. |
| logo | string | No |  | Specifies the path for the presenter's logo or the logo of<br /> the presenters organization. The logo must be in JPEG format.<br /> The file must be relative to the CFM page. |
| title | string | No |  | Specifies the title of the presenter. |
