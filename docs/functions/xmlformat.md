# xmlFormat

Escapes XML special characters in a string, so that the string is safe to use with XML.

```javascript
xmlFormat(String [, escapeChars])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  | The string to escape |
| escapeChars | boolean | No |  | When true escapes restricted characters according to the W3C XML standard. |

## Basic xmlFormat() usage

In this example we demonstrate passing the invalid characters < and & into the xmlFormat() function to make them XML safe.

```javascript
writeOutput( xmlFormat( '<node>Good &amp; Juicy</node>') );
```

### Expected Result: &lt;node&gt;Good &amp;amp; Juicy&lt;/node&gt;
