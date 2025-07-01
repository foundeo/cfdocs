# cfmenuitem

Defines an entry in a menu, including an item that is the head of a submenu.

### Syntax

```html
<cfmenuitem>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfmenuitem();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| display | string | No |  | The text to show as the menu item label. |
| childstyle | string | No |  | A CSS style specification that applies to all child 
 menu items, including the children of submenus. |
| divider | string | No |  | This attribute specifies that the item is a divider. If 
 you specify this attribute, you cannot specify any 
 other attributes. |
| href | string | No |  | A URL link to activate or JavaScript function to 
 call when the user clicks the menu item. |
| image | string | No |  | URL of an image to display at the left side of the 
 menu item. The file type can be any format the 
 browser can display. 
 For most displays, you should use 15x15 pixel 
 images, because larger images conflict with the 
 menu item text |
| menustyle | string | No |  | A CSS style specification that controls the overall 
 style of any submenu of this menu item. This 
 attribute controls the submenu of the current menu 
 item, but not to any child submenus of the submenu. |
| name | string | No |  | The name of the menu item. |
| style | string | No |  | A CSS style specification that applies to the current 
 menu item only. It is not overridden by the 
 childStyle attribute. |
| target | string | No |  | The target in which to display the contents 
 returned by the href attribute. The attribute can be 
 a browser window or frame name, an HTML target 
 value, such as _self. |

## MenuItem with example

Here, We have created simple menu items. The main menu having two submenu items such as My account, Project display.It is supported in cf 10,11 & 16.

```html
<cfmenu name='menu' type="horizontal" fontsize="14" bgcolor="##CCFFFF">
	<cfmenuitem name="Home" display="Home"/>
	<cfmenuitem name="Main" display="Main">
		<cfmenuitem name="MyAccount" display="My Account"/>
		<cfmenuitem name="ProjectDisplay" display="Project Displaay"/>
	</cfmenuitem>
</cfmenu>
```
