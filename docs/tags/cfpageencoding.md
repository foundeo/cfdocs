# cfpageencoding

The character encoding to use to read the content between the opening and closing tags.

### Syntax

```html
<cfpageencoding charset="utf-8"></cfpageencoding>
```

### Script Syntax

```javascript
cfpageencoding( charset="utf-8" ) {}
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| charset | string | Yes |  | The name of the variable that will contain the value of the time taken. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfpageencoding.md|utf-16 |

## Tag version

```html
<cfpageencoding charset="utf-8">
Some UTF-8 content
</cfpageencoding>
```

### Expected Result: Encoding the buffered content between the tags

## Script version

```html
cfpageencoding( charset="utf-8" ){
writeoutput("Some UTF-8 content");
}
```

### Expected Result: Encoding the buffered content between the tags
