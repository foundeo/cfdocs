# structToQueryString

Converts a struct to a query string using the specified delimiter.

```javascript
structToQueryString(structure, delimiter)
```

```javascript
returns string
```

## Member Function Syntax

```javascript
structure.structToQueryString(delimiter)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure or a variable that contains one. |
| delimiter | string | No | &amp; | Delimiter to use in between key/value pairs. Default is &amp;. |

## structToQueryString with the default delimiter

Converting a struct to a query string using the default delimiter (&amp;)

```javascript
someStruct = {
    "firstName": "John",
    "lastName": "Doe"
};
writeDump( structToQueryString( someStruct ) );
```

### Expected Result: firstName=John&lastName=Doe
