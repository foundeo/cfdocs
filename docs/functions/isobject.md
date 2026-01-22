# isObject

Determines whether a value is an object.
True, if the value represents a CFML object. False if the value is any other type of data, such as an integer, string, date, or struct.

```javascript
isObject(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | any | Yes |  |  |

## isObject Example

Returns true if the parameter is a CFML object. The CFML object here is a Java object.

```javascript
random = createObject( "java", "java.security.SecureRandom" ).getInstance( "SHA1PRNG" );
writeOutput( isObject( random ) );
```

### Expected Result: YES

## isObject Example for Other Data Types

Returns false if the parameter is any data type other than a CFML object

```javascript
example = { 'name' = 'I am a struct' };
writeOutput( isObject( example ) );
```

### Expected Result: NO
