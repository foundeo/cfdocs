# cfflush

Flushes currently available data to the client.

### Syntax

```html
<cfflush>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfflush();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| interval | numeric | No |  | Flushes output each time this number of bytes becomes
 available. HTML headers, and data that is already
 available when the tag is executed, are omitted from the
 count. |

## Simple Script Example

Outputs 'foo' to the browser approximately 1 second before 'bar'

```html
writeOutput( "<div>foo</div>" ); 
 cfflush(); 
 sleep( 1000 ); 
 writeOutput( "<div>bar</div>" );
```

## Simple Tag Example

Outputs 'foo' to the browser approximately 1 second before 'bar'

```html
<div>foo</div> 
 <cfflush /> <cfsleep time="1000" /> 
 <div>bar</div>
```
