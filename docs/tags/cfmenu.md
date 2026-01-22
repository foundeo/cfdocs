# cfmenu

Creates a menu or tool bar (a horizontally arranged menu). Any menu item can be the top 
 level of a submenu.

### Syntax

```html
<cfmenu>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfmenu();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| bgcolor | string | No |  | The color of the menu background. You can <br /> use any valid HTML color specification. <br /> This specification is locally overridden by the <br /> menuStyle attribute of this tag and any <br /> cfmenuitem tag, but does affect the background <br /> of the surrounding color of a submenu whose <br /> background is controlled by a childStyle <br /> attribute |
| childstyle | string | No |  | A CSS style specification that applies to the <br /> items of the top level menu and all child menu <br /> items, including the children of submenus. This <br /> attribute lets you use a single style specification <br /> for all menu items. |
| font | string | No |  | The font to be use for all child menu items. You <br /> can use any valid HTML font-family style <br /> attribute. |
| fontcolor | string | No |  | The color of the menu text. You can use any <br /> valid HTML color specification. |
| fontsize | string | No |  | The size of the font. Use a numeric value, such <br /> as 8, to specify a pixel character size. Use a <br /> percentage value, such as 80% to specify a <br /> size relative to the default font size. <br /> Font sizes over 20 pixels can result in submenu <br /> text exceeding the menu boundary. |
| menustyle | string | No |  | A CSS style specification that applies to the <br /> menu, including any parts of the menu that do not <br /> have items. If you do not specify style information <br /> in the cfmenuitem tags, this attribute controls the <br /> style of the top-level items. |
| name | string | No |  | The name of the menu. |
| selectedfontcolor | string | No |  | The color of the text for the menu item that has <br /> the focus. You can use any valid HTML color <br /> specification. |
| selecteditemcolor | string | No |  | The color that highlights the menu item that has <br /> the focus. You can use any valid HTML color <br /> specification. |
| type | string | No | horizontal | The orientation of menu. |
| width | string | No |  | The width of a vertical menu; not valid for <br /> horizontal menus. |

## A simple CFMenu example

The example about simple menu with menuItems.It is supported in cf 10,11 & 16.

```html
<cfmenu name='menu' type="horizontal" fontsize="14" bgcolor="##CCFFFF">
	<cfmenuitem name="acrobat" href="http://www.adobe.com/acrobat" display="Acrobat"/>
	<cfmenuitem name="aftereffects" href="http://www.adobe.com/aftereffects" display="After Effects"/>
</cfmenu>
```
