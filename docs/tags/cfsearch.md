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
| collection | string | Yes |  | One or more collection names. You can specify more<br /> than one collection unless you are performing a<br /> category search (that is, specifying category or<br /> categoryTree).<br /><br /> One or more collection names. You can specify more<br /> than one collection unless you are performing a category search (that is, specifying category or categoryTree). |
| category | string | No |  | A list of categories, separated by commas, to which<br /> the search is limited. If specified, and the collection<br /> does not have categories enabled, ColdFusion<br /><br /> throws an exception. |
| categorytree | string | No |  | The location in a hierarchical category tree at which<br /> to start the search. ColdFusion searches at and<br /> below this level. If specified, and the collection does<br /> not have categories enabled, ColdFusion throws an<br /> exception. Can be used in addition to category<br /> attribute. |
| status | string | No |  | Specifies the name of the structure variable into<br /> which ColdFusion places search information, including<br /> alternative criteria suggestions (spelling corrections). |
| type | string | No | simple | Used to specify the parser that Verity/SOLR uses to process<br /> the criteria. |
| criteria | string | No |  | Search criteria. Follows the syntax rules of the type<br /> attribute. If you pass a mixed-case entry in this attribute,<br /> the search is case-sensitive. If you pass all uppercase or<br /> all lowercase, the search is case-insensitive. Follow<br /> Verity syntax and delimiter character rules; see Using Verity Search Expressions in Developing CFML MX Applications. |
| maxrows | numeric | No | all | Maximum number of rows to return in query results.<br /> Default: all |
| startrow | numeric | No | 1 | First row number to get.<br /> Default: 1 |
| suggestions | string | No | never | Specifies whether Verity/SOLR returns spelling suggestions<br /> for possibly misspelled words. |
| contextPassages | numeric | No | 3 | The number of passages/sentences Verity returns in<br /> the context summary (that is, the context column of<br /> the results).<br /> Default: 3 |
| contextBytes | numeric | No | 300 | The maximum number of bytes Verity returns in the<br /> context summary.<br /> Default: 300 |
| contextHighlightBegin | string | No | <b> | The HTML to prepend to search terms in the context<br /> summary. Use this attribute in conjunction with<br /> contextHighlightEnd to highlight search terms in the<br /> context summary. |
| contextHighlightEnd | string | No | </b> | The HTML to prepend to search terms in the context<br /> summary. Use this attribute in conjunction with<br /> contextHighlightEnd to highlight search terms in the<br /> context summary. |
| previousCriteria | string | No |  | The name of a result set from an existing set of search<br /> results. Verity searches the result set for criteria<br /> without regard to the previous search score or rank.<br /> Use this attribute to implement searching within result<br /> sets. |
| language | string | No |  | Deprecated. This attribute is now ignored and the language of the collection is used to perform the search. |
