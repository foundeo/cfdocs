# cfindex

Populates a Verity search engine collection with an index of
 documents on a file system or of CFML query result sets.

 A collection must exist before it can be populated.

### Syntax

```html
<cfindex collection="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfindex(collection="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| collection | string | Yes |  | Name of a collection that is registered by CFML; for
 example, "personnel"
 Name and absolute path of a collection that is not
 registered by CFML; for example:
 "e:\collections\personnel" |
| action | string | No |  | - update: updates a collection and adds key to the index.
 - delete: removes collection documents as specified by
 the key attribute.
 - purge: deletes all of the documents in a collection.
 Causes the collection to be taken offline, preventing
 searches.
 - refresh: deletes all of the documents in a collection,
 and then performs an update. |
| type | string | No |  | file: using the key attribute value of the query result as
 input, applies action value to filenames or filepaths.
 path: using the key attribute value of the query result as
 input, applies action to filenames or filepaths that
 pass the extensions filter
 custom: If action = "update" or "delete": applies action to
 custom entities in query results. |
| title | string | No |  | * Title for collection
 * Query column name for type and a valid query name
 Permits searching collections by title or displaying a
 separate title from the key |
| key | string | No |  | * Absolute path and filename, if type = "file"
 * Absolute path, if type = "path"
 * A query column name (typically, the primary key column
 name), if type = "custom"
 * A query column name, if type = any other value

 This attribute is required for the actions listed, unless
 you intend for its value to be an empty string. |
| body | string | No |  | * ASCII text to index
 * Query column name(s), if name is specified in query

 You can specify columns in a delimited list. For example:
 "emp_name, dept_name, location" |
| custom1 | string | No |  | Custom field in which you can store data during an indexing
 operation. Specify a query column name for type, and a
 query name. |
| custom2 | string | No |  | Custom field in which you can store data during an indexing
 operation. Specify a query column name for type, and a
 query name. |
| custom3 | string | No |  | Custom field in which you can store data during an indexing
 operation. Specify a query column name for type, and a
 query name. (Added in ColdFusion 7) |
| custom4 | string | No |  | Custom field in which you can store data during an indexing
 operation. Specify a query column name for type, and a
 query name. (Added in ColdFusion 7) |
| category | string | No |  | A string value that specifies one or more search categories
 for which to index the data. You can define multiple
 categories, separated by commas, for a single index. |
| categoryTree | string | No |  | A string value that specifies a hierarchical category or
 category tree for searching. It is a series of categories
 separated by forward slashes ("/"). You can specify only
 one category tree. |
| urlpath | string | No |  | If type="file" or "path", specifies the URL path. When the
 collection is searched with cfsearch, this pathname is
 prefixed to filenames and returned as the url attribute. |
| extensions | string | No |  | Delimited list of file extensions that CFML uses to
 index files, if type = "Path".
 "*." returns files with no extension.

 For example: the following code returns files with a
 listed extension or no extension:
 extensions = ".htm, .html, .cfm, .cfml, "*." |
| query | query | No |  | Query against which collection is generated |
| recurse | boolean | No | NO | Yes: if type = "path", directories below the path
 specified in key are included in indexing operation |
| language | string | No | english | For options, see cfcollection. Requires the appropriate
 Verity Locales language pack (Western Europe, Asia,
 Multilanguage, Eastern Europe/Middle Eastern). |
| status | string | No |  | The name of the structure into which ColdFusion MX
 returns status information. |
| prefix | string | No |  | Specifies the location of files to index when the computer that contains the K2 Search Service is not the computer on which you installed ColdFusion, and when you index files with the type attribute set to path. |
