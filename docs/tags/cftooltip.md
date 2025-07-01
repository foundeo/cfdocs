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
| preventoverlap | string | No | YES | A Boolean value specifying whether to prevent the 
 tooltip from overlapping the component that it 
 describes. |
| autodismissdelay | string | No |  | The number of milliseconds between the time 
 when the user moves the mouse pointer over the 
 component (and leaves it there) and when the 
 tooltip disappears. |
| hidedelay | string | No |  | The number of milliseconds to delay between the 
 time when the user moves the mouse pointer away 
 from the component and when the tooltip 
 disappears. |
| showdelay | string | No |  | The number of milliseconds to delay between the 
 time when the user moves the mouse over the 
 component and when the tooltip appears. |
| sourcefortooltip | string | No |  | The URL of a page with the tool tip contents. The 
 page can include HTML markup to control the 
 format, and the tip can include images. 
 If you specify this attribute, an animated icon 
 appears with the text "Loading..." while the tip is 
 being loaded. |
| tooltip | string | No |  | Tip text to display. The text can include HTML 
 formatting. 
 Ignored if you specify a sourceForTooltip attribute |
| style | string | No |  |  |
