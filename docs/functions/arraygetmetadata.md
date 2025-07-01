# arrayGetMetadata

Gets metadata for items of an array and indicates the array type.

```javascript
arrayGetMetadata(array)
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
someArray.getMetadata()
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The array for which to get the metadata. |

## Simple Example

```javascript
// Create an array
arrayList = ["apple", "pineapple", "mango"];

// Fetch meta data
data = arrayGetMetadata(arrayList);

// Print array type
writeOutput(data.type);
```

### Expected Result: synchronized

## Member Function Example

```javascript
// Create an array
arrayList = ["apple", "pineapple", "mango"];

// Fetch meta data
data = arrayList.getMetadata();

// Print array type
writeOutput(data.type);
```

### Expected Result: synchronized

## Dump Metadata of Typed Array (Member syntax)

CF2018+ Return struct has a new key called `dimensions` and can also have a defined datatype. Supported datatypes are String, Numeric, Boolean, Date, Array, Struct, Query, Component, [Component name], Binary, and Function.

```javascript
arr = arrayNew['String'](1);
writeOutput(serializeJson(arr.getMetadata()));
```

### Expected Result: {"dimensions":1,"datatype":"String","type":"synchronized"}
