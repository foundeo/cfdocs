# cfformitem

Inserts a horizontal line, a vertical line, a spacer,
 or text in a Flash form. Used in the cfform or cfformgroup
 tag body for Flash and XML forms. Ignored in HTML forms.

### Syntax

```html
<cfformitem type="html">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfformitem(type="html");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes |  | Form item type. See docs for more details. |
| style | string | No |  | Flash: Must be a style specification in CSS format.<br /> Ignored if the type attribute is HTML or text.<br /> XML: ColdFusion passes the style attribute to the XML.<br /> ColdFusion skins include the style attribute to the<br /> generated HTML. |
| width | numeric | No |  | Width of the item, in pixels. If you omit this attribute, Flash<br /> automatically sizes the width. In ColdFusion XSL skins,<br /> use the style attribute, instead. |
| height | numeric | No |  | Height of the item, in pixels. If you omit this attribute,<br /> Flash automatically sizes the width. In ColdFusion XSL<br /> skins, use the style attribute, instead. |
| enabled | boolean | No | YES | Boolean value specifying whether the control is enabled.<br /> Disabled text appear in light gray. Has no effect on<br /> spacers and rules.<br /> Default: true |
| visible | boolean | No | YES | Boolean value specifying whether to show the control.<br /> Space that would be occupied by an invisible control is<br /> blank. Has no effect on spacers.<br /> Default: true |
| tooltip | string | No |  | Text to display when the mouse pointer hovers over the<br /> control. Has no effect on spacers. |
| bind | string | No |  | A Flash bind expression that populates the field with<br /> information from other form fields. If you use this<br /> attribute, ColdFusion MX ignores any text that you<br /> specify in the body of the cftextitem tag. This attribute<br /> can be useful if the cfformitem tag is in a cfformgroup<br /> type="repeater" tag. |
