# soundEx

Soundex is a phonetic algorithm for indexing names by sound, as pronounced in English.
The goal is for homophones to be encoded to the same representation so that they can be matched despite minor differences in spelling.
The algorithm mainly encodes consonants; a vowel will not be encoded unless it is the first letter.

Soundex is the most widely known of all phonetic algorithms, as it is a standard feature of MS SQL and Oracle, and is often used (incorrectly) as a synonym for 'phonetic algorithm'

```javascript
soundEx(str)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| str | string | Yes |  |  |

## Get Soundexes of "Robert", "Rupert" and "Rubin"

Both "Robert" and "Rupert" return the same string "R163" while "Rubin" yields "R150"

```javascript
soundEx("Robert")&"/"&soundEx("Rupert")&"/"&soundEx("Rubin")
```

### Expected Result: R163/R163/R150
