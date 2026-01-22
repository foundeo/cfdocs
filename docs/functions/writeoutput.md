# writeOutput

 Appends text to the page-output stream.
 This function writes to the page-output stream regardless of
 conditions established by the cfsetting tag.

```javascript
writeOutput(string)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| string | string | Yes |  | A string, or a variable that contains one |  |
| encodeFor | string | No |  | CF2016+ Lucee5.1.0.8+ Wraps the result with an encodeFor function. | /Users/garethedwards/development/github/cfdocs/docs/functions/writeoutput.md|dn |

## Output the literal string "Hello World"

```javascript
writeOutput("Hello World");
```

## Output the equivalent string as a variable

```javascript
greeting = "Hello World";
writeOutput(greeting);
```

## Using the encodeFor argument

CF2016+ Passing in `html` to the `encodeFor` argument wraps the result with a call to encodeForHTML.

```javascript
name = "Pete";
writeOutput("Hello " & name, "html");
```

### Expected Result: Hello Pete
