# htmlEditFormat

Replaces special characters in a string with their HTML-escaped equivalents.

```javascript
htmlEditFormat( string [, version] )
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| string | string | Yes |  | A string or a variable that contains one. |  |
| version | numeric | No | 2.0 | HTML version to use; currently ignored. | /Users/garethedwards/development/github/cfdocs/docs/functions/htmleditformat.md|3.2 |

## Escapes the HTML characters

```javascript
htmlEditFormat( "This is a test & this is another <This text is in angle brackets> Previous line was blank!!!" )
```

### Expected Result: This is a test &amp; this is another &lt;This text is in angle brackets&gt; Previous line was blank!!!
