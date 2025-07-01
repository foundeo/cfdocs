# cfcomponent

Creates and defines a component object; encloses functionality that you build in CFML and enclose within cffunction tags. This tag contains one or more cffunction tags that define methods. Code within the body of this tag, other than cffunction tags, is executed when the component is instantiated (like a constructor). Components are saved in a file with a `.cfc` extension.

### Syntax

```html
<cfcomponent>
```

### Script Syntax

```javascript
component displayname="myComponent" output="false" {  }
```
