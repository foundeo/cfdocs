# cftooltip

Specifies tool tip text that displays when the user hovers the mouse pointer over the elements 
 in the tag body. This tag does not require a form and is not used inside Flash forms.

### Syntax

```html
<cftooltip>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cftooltip();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| preventoverlap | string | No | YES | A Boolean value specifying whether to prevent the <br /> tooltip from overlapping the component that it <br /> describes. |
| autodismissdelay | string | No |  | The number of milliseconds between the time <br /> when the user moves the mouse pointer over the <br /> component (and leaves it there) and when the <br /> tooltip disappears. |
| hidedelay | string | No |  | The number of milliseconds to delay between the <br /> time when the user moves the mouse pointer away <br /> from the component and when the tooltip <br /> disappears. |
| showdelay | string | No |  | The number of milliseconds to delay between the <br /> time when the user moves the mouse over the <br /> component and when the tooltip appears. |
| sourcefortooltip | string | No |  | The URL of a page with the tool tip contents. The <br /> page can include HTML markup to control the <br /> format, and the tip can include images. <br /> If you specify this attribute, an animated icon <br /> appears with the text "Loading..." while the tip is <br /> being loaded. |
| tooltip | string | No |  | Tip text to display. The text can include HTML <br /> formatting. <br /> Ignored if you specify a sourceForTooltip attribute |
| style | string | No |  |  |
