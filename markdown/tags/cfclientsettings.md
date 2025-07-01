# cfclientsettings

Part of the new CF11 mobile development features. This tag is similar to cfprocessingdirective and acts as a compiler directive to include plugins for various features (device detection and device API). You can use this tag to load all the required device detection plugins.

### Syntax

```html
 <cfclientsettings enableDeviceAPI = "true|false" detectDevice = "true|false" deviceTimeout = Number > 
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
 cfclientsettings(enableDeviceAPI = "true|false", detectDevice = "true|false", deviceTimeout = Number); 
```
