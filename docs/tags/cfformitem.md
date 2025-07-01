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
| style | string | No |  | Flash: Must be a style specification in CSS format.
 Ignored if the type attribute is HTML or text.
 XML: ColdFusion passes the style attribute to the XML.
 ColdFusion skins include the style attribute to the
 generated HTML. |
| width | numeric | No |  | Width of the item, in pixels. If you omit this attribute, Flash
 automatically sizes the width. In ColdFusion XSL skins,
 use the style attribute, instead. |
| height | numeric | No |  | Height of the item, in pixels. If you omit this attribute,
 Flash automatically sizes the width. In ColdFusion XSL
 skins, use the style attribute, instead. |
| enabled | boolean | No | YES | Boolean value specifying whether the control is enabled.
 Disabled text appear in light gray. Has no effect on
 spacers and rules.
 Default: true |
| visible | boolean | No | YES | Boolean value specifying whether to show the control.
 Space that would be occupied by an invisible control is
 blank. Has no effect on spacers.
 Default: true |
| tooltip | string | No |  | Text to display when the mouse pointer hovers over the
 control. Has no effect on spacers. |
| bind | string | No |  | A Flash bind expression that populates the field with
 information from other form fields. If you use this
 attribute, ColdFusion MX ignores any text that you
 specify in the body of the cftextitem tag. This attribute
 can be useful if the cfformitem tag is in a cfformgroup
 type="repeater" tag. |
