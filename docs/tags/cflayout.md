# cflayout

Creates a region of its container (such as the browser 
 window or a cflayoutarea tag) with a specific layout 
 behavior: a bordered area, a horizontal or vertically 
 arranged box, or a tabbed navigator.

### Syntax

```html
<cflayout type="accordion">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cflayout(type="accordion");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| type | string | Yes | border | The type of layout. |
| align | string | No | center | Specifies the default alignment of the content of <br /> child layout areas. Each cflayoutarea tag can specify <br /> an alignment attribute to override this value. |
| name | string | No |  | The name of the layout region. Must be unique <br /> on a page. |
| padding | string | No |  | Applies only to hbox and vbox layouts.<br /> You can use any valid CSS length or percent format, <br /> such as 10, 10% 10px, or 10em, for this attribute. <br /> The padding is included in the child layout area <br /> and takes the style of the layout area. |
| style | string | No |  | A CSS style specification that defines layout styles. |
| tabheight | numeric | No |  | A CSS style specification that defines layout stApplies only to tab type layouts. Specifies the <br /> height of the content area of all child layout <br />areas. You can override this setting by <br />specifying a height setting in an individual <br />cflayoutarea tag style attributes. |
| tabposition | numeric | No | top | Applies only to tab type layouts. Specifies the <br /> location of the tabs relative to the tab region <br /> contents. |
| titlecollapse | boolean | No | YES | Specify whether title bar should act as collapse/expand toggle or not; default=true. |
| activeontop | boolean | No | NO | Specify whether active tab needs to be on top always; default=false. |
| fillheight | boolean | No | YES | True to adjust the active item's height to fill the available space in the container; default=true. |
| fitToWindow | boolean | No | YES | A Boolean value that specifies whether the border layout should occupy 100% of the width and height of the window |
| height | numeric | No |  |  |
| width | numeric | No |  |  |
| buttonStyle | string | No |  |  |
