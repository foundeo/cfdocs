# toString

 Converts a value to a string.
Lucee parses numbers with one decimal place.
complex object types can only be used in combination with the member syntax.

```javascript
toString(any_value [, encoding])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
any_value.toString()
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| any_value | any | Yes |  | Value to convert to a string |  |
| encoding | string | No |  | The character encoding (character set) of the string.

The default value is the encoding of the page on which the function is called. | /Users/garethedwards/development/github/cfdocs/docs/functions/tostring.md|utf-16 |

## Base64 value to binary to string

```javascript
base64Value = toBase64( "stringValue" );
binaryValue = toBinary( base64Value );
stringValue = toString( binaryValue );
writeOutput(stringValue);
```

### Expected Result: Expected Result: stringValue

## Structure to String

```javascript
s = {
    "a": "1",
    "b":"2"
};
writeOutput(toString(s));
```

### Expected Result: {a={1},b={2}}

## Member syntax

CF number toString as a method
CAUTION: While CF returns an integer (42), Lucee returns a double (42.0), that's because while CF stores the value as `java.lang.Integer` (CF2018+) resp. `java.lang.String` (CF2016+), Lucee calls this method on `java.lang.Double`.

```javascript
num = 42;
writeOutput(num.toString());
```

### Expected Result: 42
