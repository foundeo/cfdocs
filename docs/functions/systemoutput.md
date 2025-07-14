# systemOutput

Writes the given object to the output stream

```javascript
systemOutput(obj [, addNewLine] [, doErrorStream])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| obj | any | Yes |  |  |
| addNewLine | boolean | No |  |  |
| doErrorStream | boolean | No |  |  |

## Write a string to the output stream "Hello World"

```javascript
systemOutput("Hello World");
```

## Write an array to the output stream

```javascript
systemOutput([ "foo", "bar" ]);
```

## Write a struct to the output stream

```javascript
systemOutput({ "myKey", "myValue" });
```
