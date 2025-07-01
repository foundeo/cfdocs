# wrap

 Wraps text so that each line has a specified maximum number
 of characters.

```javascript
wrap(String, limit [, strip])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  | String or variable that contains one. The text to wrap. |
| limit | numeric | Yes |  | Positive integer maximum number of characters to allow on
 a line. |
| strip | boolean | No | NO | Whether to remove all existing newline and carriage return
 characters in the input string with spaces before wrapping
 the text. Default: False. |

## Script Syntax

```javascript
sentence = "This is a standard sentence.";
wrappedSentence = wrap(sentence, 7);
writeOutput(wrappedSentence);
```

### Expected Result: This is a standar d senten ce.

## Tag Syntax

```javascript
<cfset sentence = "This is a standard sentence." />
<cfset wrappedSentence = wrap(sentence, 7) />
<cfoutput>#wrappedSentence#</cfoutput>
```

### Expected Result: This is a standar d senten ce.
