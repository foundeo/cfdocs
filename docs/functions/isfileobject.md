# isFileObject

Checks if the given object is a filestream-object. A filestream-object you usually get, when calling fileOpen-function.

```javascript
isFileObject(object);
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| object | variableName | Yes |  | The object you want to check, if it is a filestream-object. |

## Check for a filestream-object

Checks if the fileObj is a filestream-object.

```javascript
filePath = expandPath("./myfile.txt");
fileObj = fileOpen(filePath);
writeOutput(isFileObject(fileObj));
```

### Expected Result: true
