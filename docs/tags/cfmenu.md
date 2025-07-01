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
| bgcolor | string | No |  | The color of the menu background. You can 
 use any valid HTML color specification. 
 This specification is locally overridden by the 
 menuStyle attribute of this tag and any 
 cfmenuitem tag, but does affect the background 
 of the surrounding color of a submenu whose 
 background is controlled by a childStyle 
 attribute |
| childstyle | string | No |  | A CSS style specification that applies to the 
 items of the top level menu and all child menu 
 items, including the children of submenus. This 
 attribute lets you use a single style specification 
 for all menu items. |
| font | string | No |  | The font to be use for all child menu items. You 
 can use any valid HTML font-family style 
 attribute. |
| fontcolor | string | No |  | The color of the menu text. You can use any 
 valid HTML color specification. |
| fontsize | string | No |  | The size of the font. Use a numeric value, such 
 as 8, to specify a pixel character size. Use a 
 percentage value, such as 80% to specify a 
 size relative to the default font size. 
 Font sizes over 20 pixels can result in submenu 
 text exceeding the menu boundary. |
| menustyle | string | No |  | A CSS style specification that applies to the 
 menu, including any parts of the menu that do not 
 have items. If you do not specify style information 
 in the cfmenuitem tags, this attribute controls the 
 style of the top-level items. |
| name | string | No |  | The name of the menu. |
| selectedfontcolor | string | No |  | The color of the text for the menu item that has 
 the focus. You can use any valid HTML color 
 specification. |
| selecteditemcolor | string | No |  | The color that highlights the menu item that has 
 the focus. You can use any valid HTML color 
 specification. |
| type | string | No | horizontal | The orientation of menu. |
| width | string | No |  | The width of a vertical menu; not valid for 
 horizontal menus. |

## A simple CFMenu example

The example about simple menu with menuItems.It is supported in cf 10,11 & 16.

```html
<cfmenu name='menu' type="horizontal" fontsize="14" bgcolor="##CCFFFF">
	<cfmenuitem name="acrobat" href="http://www.adobe.com/acrobat" display="Acrobat"/>
	<cfmenuitem name="aftereffects" href="http://www.adobe.com/aftereffects" display="After Effects"/>
</cfmenu>
```
