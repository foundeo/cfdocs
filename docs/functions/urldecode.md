# urlDecode

Decodes a URL-encoded string.

```javascript
urlDecode(urlencodedstring [, charset])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| urlencodedstring | string | Yes |  |  |  |
| charset | string | No |  | The character encoding in which the string is encoded. | /Users/garethedwards/development/github/cfdocs/docs/functions/urldecode.md|utf-16 |

## Simple urlDecode() example

Shows how it takes an input of: %21 and returns: !

```javascript
urlDecode("%21")
```

### Expected Result: !

## Basic urlDecode() usage

In this example we demonstrate taking a URL encoded message passed on the request context and displaying it decoded.

```javascript
if( len( rc.msg ) ) {
	writeOutput( encodeForHTML( urlDecode( rc.msg ) ) );
}
```

## urlDecode() in obfuscation

In this example we demonstrate url encoding a password before it is encrypted, and then decoding it after it is decrypted.

```javascript
pwd = urlEncodedFormat( '$18$f^$XlTe41' );
writeOutput( pwd & ' : ' );
pwd = encrypt( pwd, '7Z8of/gKWpqsx/v6O5yHRKanrXsp93B4xIHV97zf88Q=', 'BLOWFISH/CBC/PKCS5Padding', 'HEX' );
writeOutput( pwd & ' : ' );
decpwd = decrypt( pwd, '7Z8of/gKWpqsx/v6O5yHRKanrXsp93B4xIHV97zf88Q=', 'BLOWFISH/CBC/PKCS5Padding', 'HEX' );
writeOutput( decpwd & ' : ' );
decpwd = urlDecode( decpwd );
writeOutput( decpwd );
```

### Expected Result: %2418%24f%5E%24XlTe41 : <some encrypted value> : %2418%24f%5E%24XlTe41 : $18$f^$XlTe41

## urlDecode() usage as a member function

In this example we demonstrate taking a URL encoded message passed on the request context and displaying it decoded using the urlDecode() member function.

```javascript
if( len( rc.msg ) ) {
	writeOutput( encodeForHTML( rc.msg.urlDecode() ) );
}
```
