# ucFirst

Transforms the first letter of a string to uppercase or the first letter of each word, and optionally lowercase uppercase characters.

```javascript
ucFirst(string [, doAll] [, doLowerIfAllUppercase])
```

```javascript
returns string
```

## Member Function Syntax

```javascript
string.ucFirst([doAll] [, doLowerIfAllUppercase])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  |  |
| doAll | boolean | No |  |  |
| doLowerIfAllUppercase | boolean | No |  |  |

## Basic usage

Lucee4.5+ Capitalizes the first character of the first word only.

```javascript
ucFirst("hello world!")
```

### Expected Result: Hello world!

## Capitalize all the words in string

Lucee4.5+ Using the optional doAll parameter capitalizes the first character of all words. Word separators are: whitespace, period, parenthesis, or dash.

```javascript
ucFirst("cfdocs.org is your (everyone's) resource for cf-related documentation!", true)
```

### Expected Result: Cfdocs.Org Is Your (Everyone's) Resource For Cf-Related Documentation!

## Handling of strings in all uppercase

Lucee4.5+ Using the optional doLowerIfAllUppercase parameter allows for intelligent capitalization of words in all caps.

```javascript
ucFirst("CFDOCS.ORG YOUR (EVERYONE'S) RESOURCE FOR CF-RELATED DOCUMENTATION!", true, true)
```

### Expected Result: Cfdocs.Org Your (Everyone's) Resource For Cf-Related Documentation!
