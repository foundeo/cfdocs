# decodeFromURL

 Decodes an encoded HTML URL string.

```javascript
decodeFromURL(string);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The encoded URL string to decode.. |

## Tag Syntax

```javascript
<cfset string = 'http://www.adobe.com/'> 
<cfset urlencoded = encodeForURL(string)>
<cfset urldecoded = decodeFromURL(urlEncoded)>
 <cfoutput>
String: #string#<br/>
URL Encoded: #urlencoded#<br/>
URL Decoded: #urldecoded#<br/>
</cfoutput>
```
