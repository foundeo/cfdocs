# echo

While writeOutput writes to the page-output stream, this function writes to the main response buffer

```javascript
echo(string)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | String to be written to the output buffer |

## Simple Example

Prints a simple string.

```javascript
echo("hello world");
```

### Expected Result: hello world

## Complex Data Example

Note that complex objects will not automatically be converted to String, as with System.out.println in Java.

```javascript
// Create data
data = {
    "title"  : "A Game of Thrones",
    "author" : "George R. R. Martin",
    "ISBN"   : "0-00-224584-1"
};

// Print data
echo(data.toString());
```

### Expected Result: {ISBN={0-00-224584-1}, author={George R. R. Martin}, title={A Game of Thrones}}
