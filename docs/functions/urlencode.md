# urlEncode

Returns an url-encoded string with respect to charset.

```javascript
urlEncode(string [, charset] [, force])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.urlEncode([charset] [, force])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  |  |
| charset | string | No | utf-8 | The character encoding in which the string will be encoded. |
| force | boolean | No | true |  |

## String encoding

Encode string with special chars for use in url

```javascript
urlEncode('Apples → Äpfel','utf-8')
```

### Expected Result: Apples+%E2%86%92+%C3%84pfel

## String charset

Same string, different charset

```javascript
urlEncode('Apples → Äpfel','ASCII')
```

### Expected Result: Apples+%3F+%3Fpfel

## Convert collection to be able to be passed as url param value

```javascript
vocab = [{
        apples: {
            en: 'apples',
            de: 'Äpfel',
            da: 'æble',
            el: 'μήλο'
        }
    }];
    writeOutput(urlEncode(vocab.toString(),'utf-8'));
```

### Expected Result: %5B%7BAPPLES%3D%7B%7BEL%3D%7B%CE%BC%CE%AE%CE%BB%CE%BF%7D%2C+EN%3D%7Bapples%7D%2C+DA%3D%7B%C3%A6ble%7D%2C+DE%3D%7B%C3%84pfel%7D%7D%7D%7D%5D
