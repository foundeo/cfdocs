# getException

 Used with the cftry and cfcatch tags. Retrieves a Java
 exception object from a Java object.

```javascript
getException(javaobject)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| javaobject | any | Yes |  |  |

## Simple Example

Renders map of exception data, when trying to access a non-existent element in an ArrayList.

```javascript
arrayList = createObject("JAVA", "java.util.ArrayList").init();
try {writeDump(arrayList.get(2));}
catch(java.lang.IndexOutOfBoundsException _) {
    writeDump(getException(arrayList));
}
```
