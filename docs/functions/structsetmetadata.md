# structSetMetadata

Sets metadata for a key in a struct. When you want to SerializeJSON, the key and the value will be display as you defined in the metadata.

```javascript
structSetMetadata(inputStruct, metaStruct)
```

```javascript
returns void
```

## Member Function Syntax

```javascript
inputStruct.setMetadata(metaStruct)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| inputStruct | struct | Yes |  | The struct in which you want to add the metadata. |
| metaStruct | struct | Yes |  | The metadata struct you want to add. |

## Add metadata to a struct

Add metadata to a struct and serialize to a json.
It is changing the keyname and convert a string ("20") to a number.

```javascript
testStruct = structNew("ordered");
testStruct.testdata = "example";
testStruct.testdata2 = "20";
metadata = {
    testdata: {type: "string", name: "td1" },
    testdata2: {type: "numeric", name: "td2" }
};
StructSetMetadata(testStruct,metadata);
writeoutput(SerializeJSON(testStruct));
```

### Expected Result: {"td1":"example", "td2":20.0}

## Add metadata to a struct as a member function

Add metadata to a struct and serialize to a json.
It is changing the keyname and convert a string ("20") to a number.

```javascript
testStruct = structNew("ordered");
testStruct.testdata = "example";
testStruct.testdata2 = "20";
metadata = {
    testdata: {type: "string", name: "td1" },
    testdata2: {type: "numeric", name: "td2" }
};
testStruct.setMetadata(metadata);
writeoutput(SerializeJSON(testStruct));
```

### Expected Result: {"td1":"example", "td2":20.0}
