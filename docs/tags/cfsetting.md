# cfsetting

Controls aspects of page processing, such as the output of content outside cfoutput tags.

### Syntax

```html
<cfsetting enablecfoutputonly=true|false>
```

### Script Syntax

```javascript
setting enablecfoutputonly=true|false;
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| enablecfoutputonly | boolean | No | false | true: Blocks output of content that is outside cfoutput tags.
false: Displays content that is outside cfoutput tags. |
| showdebugoutput | boolean | No | true | true: If debugging is enabled in the Administrator, displays
 debugging information
 false: suppresses debugging information that would otherwise
 display at end of generated page. |
| requesttimeout | numeric | No |  | Integer; number of seconds. Time limit, after which
 CFML processes the page as an unresponsive thread.
 Overrides the timeout set in the CFML Administrator. |

## Script Syntax

Enable cfoutput only

```html
setting enablecfoutputonly=true;
```

## Script Syntax

Disables debug output

```html
setting showdebugoutput=false;
```

## Script Syntax

Set the request timeout to 30 seconds

```html
setting requesttimeout=30;
```

## Tag Syntax

Enable cfoutput only

```html
<cfsetting enablecfoutputonly="true">
Foo <cfoutput>bar</cfoutput>
```

### Expected Result: bar

## Tag Syntax

Disables debug output

```html
<cfsetting showdebugoutput="false">
```

## Tag Syntax

Set the request timeout to 30 seconds

```html
<cfsetting requesttimeout="30">
```
