# metaphone

Metaphone is a phonetic algorithm, an algorithm published in 1990 for indexing words by their English pronunciation. The algorithm produces variable length keys as its output, as opposed to Soundex's fixed-length keys. Similar sounding words share the same keys.

```javascript
metaphone(str)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| str | string | Yes |  |  |

## Metaphone long words

This compound word is the longest word published with 79 letters according to the 1996 Guinness Book of World Records

```javascript
Metaphone("Donaudampfschiffahrtsgesellschaftskapitän")
```

### Expected Result: TNTM

## Different words with the same metaphone

```javascript
Metaphone("Truck")&"/"&Metaphone("Trek")
```

### Expected Result: TRK/TRK

## Metaphone of a word and then same word with prefix

Adding a word changes the whole metaphone

```javascript
Metaphone("Trek")&"/"&Metaphone("Star Trek")
```

### Expected Result: TRK/STRT
