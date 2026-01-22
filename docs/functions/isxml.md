# isXML

Determines whether a string is well-formed XML text.

```javascript
isXML(value)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| value | string | Yes |  | A string containing the XML document text. |
| parserOptions | struct | No |  | XML parsing options. No documentation available on usage. |

## isXML Example

Returns true if the string is well-formed XML.

```javascript
example = '<coldfusionengines>
 <engine>
  <name>Adobe ColdFusion</name>
 </engine>
 <engine>
  <name>Lucee</name>
 </engine>
 <engine>
  <name>Railo</name>
 </engine>
 <engine>
  <name>Open BlueDragon</name>
 </engine>
</coldfusionengines>';
writeOutput( isXml( example ) );
```

### Expected Result: YES

## isXML Example for Invalid XML

Returns false if the string is not well-formed XML.

```javascript
example1 = '<coldfusionengines>
 <engine>
  <name>Adobe ColdFusion</name>
 </engine>
 <engine>
  <name>Lucee</name>';
writeOutput( isXml( example1 ) );
```

### Expected Result: NO
