# cfsearch

Searches Verity collections using CFML or K2Server, whichever search engine a collection is registered by.
 (CFML can also search collections that have not been
 registered, with the cfcollection tag.)

 A collection must be created and indexed before this tag can
 return search results.

### Syntax

```html
<cfsearch name="" collection="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfsearch(name="", collection="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | Name of the search query. |
| collection | string | Yes |  | One or more collection names. You can specify more
 than one collection unless you are performing a
 category search (that is, specifying category or
 categoryTree).

 One or more collection names. You can specify more
 than one collection unless you are performing a category search (that is, specifying category or categoryTree). |
| category | string | No |  | A list of categories, separated by commas, to which
 the search is limited. If specified, and the collection
 does not have categories enabled, ColdFusion

 throws an exception. |
| categorytree | string | No |  | The location in a hierarchical category tree at which
 to start the search. ColdFusion searches at and
 below this level. If specified, and the collection does
 not have categories enabled, ColdFusion throws an
 exception. Can be used in addition to category
 attribute. |
| status | string | No |  | Specifies the name of the structure variable into
 which ColdFusion places search information, including
 alternative criteria suggestions (spelling corrections). |
| type | string | No | simple | Used to specify the parser that Verity/SOLR uses to process
 the criteria. |
| criteria | string | No |  | Search criteria. Follows the syntax rules of the type
 attribute. If you pass a mixed-case entry in this attribute,
 the search is case-sensitive. If you pass all uppercase or
 all lowercase, the search is case-insensitive. Follow
 Verity syntax and delimiter character rules; see Using Verity Search Expressions in Developing CFML MX Applications. |
| maxrows | numeric | No | all | Maximum number of rows to return in query results.
 Default: all |
| startrow | numeric | No | 1 | First row number to get.
 Default: 1 |
| suggestions | string | No | never | Specifies whether Verity/SOLR returns spelling suggestions
 for possibly misspelled words. |
| contextPassages | numeric | No | 3 | The number of passages/sentences Verity returns in
 the context summary (that is, the context column of
 the results).
 Default: 3 |
| contextBytes | numeric | No | 300 | The maximum number of bytes Verity returns in the
 context summary.
 Default: 300 |
| contextHighlightBegin | string | No | <b> | The HTML to prepend to search terms in the context
 summary. Use this attribute in conjunction with
 contextHighlightEnd to highlight search terms in the
 context summary. |
| contextHighlightEnd | string | No | </b> | The HTML to prepend to search terms in the context
 summary. Use this attribute in conjunction with
 contextHighlightEnd to highlight search terms in the
 context summary. |
| previousCriteria | string | No |  | The name of a result set from an existing set of search
 results. Verity searches the result set for criteria
 without regard to the previous search score or rank.
 Use this attribute to implement searching within result
 sets. |
| language | string | No |  | Deprecated. This attribute is now ignored and the language of the collection is used to perform the search. |
