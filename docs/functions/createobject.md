# createObject

The createObject function takes different arguments depending on the value of the type argument:

 createObject('component', cfcName)
 createObject('java', class)
 createObject('java', class, bundleName, bundleVersion) (Lucee only)
 createObject('webservice', urltowsdl, [, portname])
 createObject('.NET', class, assembly [, server, port, protocol, secure])
 createObject('com', class, context, serverName)

```javascript
createObject(type, className)
```

```javascript
returns any
```
