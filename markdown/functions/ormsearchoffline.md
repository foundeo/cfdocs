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
