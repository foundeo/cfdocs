# ormSearch

Searches for given text in specific properties or entities.

```javascript
ormSearch('query_text', 'entityName')
ormSearch('query_text', 'entityName', fields)
ormSearch('query_text', 'entityName', fields, optionMap);
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query_text | string | Yes |  | The text to be searched for or a complete Lucene query.In the case of ORMSearch('query_text', 'entityName'), only Lucene query is supported. For details of Lucene query, see http://lucene.apache.org/core/old_versioned_docs/versions/3_0_0/queryparsersyntax.html |
| entityName | string | Yes |  | Name of the entity to be searched. |
| fields | array | Yes |  | Fields in which search has to be performed. This can be an array of strings. If you are performing a Lucene query, you need not specify this field. In other words, if you do not specify this value, a Lucene query is performed. Field name is case-sensitive. |
| optionMap | struct | Yes |  | Extra options that can be passed while executing Lucene query. The options are: Sort, Offset, maxResults |

## Tag Syntax

ORM search based on Lucene query.

```javascript
ormSearch('FirstName:ch*','Employee'); 
 ormSearch('ch*','Employee',['FirstName']); 
 objs = ormSearch('FirstName:ch*','Employee',[],{sort='salary',maxresults=5,offset=2});
```

## Tag Syntax

ORM search on multiple entities.

```javascript
ormSearch('john*','DeveloperEntity,UserEntity',['firstname']);
```

## Tag Syntax

ORM search on all subentities based on Lucene query

```javascript
ormSearch('john*','EmployeeEntity',['FirstName']);
```

## Tag Syntax

ORM search in relationships

```javascript
ormSearch('CategoryID.CategoryName:In*','cproducts',[]);
```
