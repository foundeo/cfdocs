# ormSearchOffline

 Performs search on the indexed properties but returns only the stored fields. For this function to work, specify indexStore=true on the properties on which you want to perform the search.

```javascript
ormSearchOffline(query_text, entityName, fields_to_be_selected)
ormSearchOffline(query_text, entityName, fields_to_be_selected, fields)
ormSearchOffline(query_text, entityName, fields_to_be_selected, fields, optionMap);
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query_text | string | Yes |  | The text to be searched for or a complete Lucene query. For details of Lucene query, see http://lucene.apache.org/core/old_versioned_docs/versions/. |
| entityName | string | Yes |  | Name of the entity to be searched. |
| fields_to_be_selected | array | Yes |  | Fields to be returned as keys in the resultant struct. |
| fields | array | Yes |  | Fields in which search has to be performed. |
| optionMap | struct | No |  |  |
| extra options | struct | No |  | can be passed while executing Lucene query. The options can be: sort, offset, maxResults |

## Tag Syntax

```javascript
ormSearchOffline('FirstName:'ch*','Employee',['id','firstname']);
```

## Tag Syntax

In the following example, offline search is performed on the property FirstName and first name and last name are returned as keys in the resultant struct.

```javascript
ormSearchOffline('ch*','Employee',['FirstName','LastName'],['FirstName'],{sort='salary',maxresults=5,offset=2});
```

## Tag Syntax

In this example, the resultObj in the query is an array of structs. The individual structs contain all the selected fields (passed as third parameter).

```javascript
<cfset resultObj = ormSearchOffline('Java Rocks', 'Book', [bookId, summary, Author.name, title],[title, short_summary])>
```
