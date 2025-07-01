# cfcache

Stores a copy of a page on the server and/or client computer,
 to improve page rendering performance. To do this, the tag
 creates temporary files that contain the static HTML returned
 from a CFML page.

 Use this tag if it is not necessary to get dynamic content each
 time a user accesses a page.
 You can use this tag for simple URLs and for URLs that contain
 URL parameters.

### Syntax

```html
<cfcache>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfcache();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | No |  | * cache: server-side and client-side caching.
 * flush: refresh cached page(s).
 * clientcache: browser-side caching only. To cache a personalized page, use this option.
 * servercache: server-side caching only. Not recommended.
 * optimal: same as "cache". |
| directory | string | No |  | Absolute path of cache directory. |
| timespan | numeric | No |  | The interval until the page is flushed from the cache. |
| expireurl | string | No |  | Used with action = "flush". A URL reference. CFML
 matches it against the mappings in the specified cache
 directory. Can include wildcards. For example:
 "*/view.cfm?id=*". |
| username | string | No |  | A username |
| password | string | No |  | A password |
| port | numeric | No |  | Remote port to which to connect |
| protocol | string | No |  | Protocol that is used to create URL from cache. |
| value | string | No |  | For action="set", object which needs to be stored |
| metadata | string | No |  | Name of the struct variable |
| stripwhitespace | boolean | No | NO | Reduces whitespace |
| throwonerror | boolean | No |  | A Boolean value specifying whether to throw an error if the
flush action encounters an error. Otherwise the action does not
generate an error if it fails. If this attribute is 'true' you can handle the
error in a cfcatch block, for example, if a specified id value is invalid |
| id | string | No |  | Id of the cached object |
| key | string | No |  | key to access cache |
| usecache | boolean | No | YES | to use cache or not (if false it will process the content each time) |
| dependson | string | No |  | Comma separated list of all variables on which this cache would depend |
| idletime | numeric | No |  | Flushes the cached item if it is not accessed for the specified time span. |
| cachedirectory | string | No |  | Cache directory |
| name | string | No |  | name of return variable, valid with action="get" |

## Adding a page to the cache

Puts HTML page into the cache and uses the cached version on subsequent calls to the page.

```html
<cfcache action='optimal' directory='/path/to/directory' timespan='#createTimeSpan( 1, 0, 0, 0 )#' idletime='#createTimeSpan( 0, 12, 0, 0 )#'>
	<div id="some-id">Hello World!</div>
</cfcache>
```

### Expected Result: <div id="some-id">Hello World!</div>

## Flushing a page from the cache

Flushes the 'hello-world.cfm' page from the cache.

```html
<cfcache action='flush' directory='/path/to/directory' expireURL='/hello-world.cfm'></cfcache>
```
