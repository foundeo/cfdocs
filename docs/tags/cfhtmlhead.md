# cfhtmlhead

Writes text to the head section of a generated HTML page. It is
 useful for embedding JavaScript code, or putting other HTML
 tags, such as meta, link, title, or base in an HTML page
 header.

### Syntax

```html
<cfhtmlhead text="">
```

### Script Syntax

```javascript
cfhtmlhead() {}
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| text | string | No |  | Text to add to the head area of an HTML page. In Lucee a closing tag can be used and then the body between the tags is added to the head |

## Add RSS feed link to the HTML head section

```html
<cfhtmlhead text='<link href="/news.xml" rel="alternate" type="application/rss+xml" title="Latest News" />'>
```

## Using cfhtmlhead in cfscript

```html
cfhtmlhead( text='<link href="/news.xml" rel="alternate" type="application/rss+xml" title="Latest News" />');
```

## Script syntax alternative

Lucee4.2+

```html
htmlhead text='<link href="/news.xml" rel="alternate" type="application/rss+xml" title="Latest News" />';
```

## Lucee tag wrap alternative

Lucee tag wrap

```html
<cfhtmlhead><link href="/news.xml" rel="alternate" type="application/rss+xml" title="Latest News" /></cfhtmlhead>
```
