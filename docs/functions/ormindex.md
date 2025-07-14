# ormIndex

 Performs offline indexing - using this function without specifying parameters, all persistent entities of a given application are indexed.

```javascript
ormIndex(); ormIndex('entity_name'); ormIndex('entity_list'); ormIndex('entityObject');
```

```javascript
returns void
```

## Script Syntax

```javascript
EmpOBJs = entityLoad('employee', {lastname='Bond'}); 
 for(EmpObj in EmpObjs) 
 { 
 ormIndex(empObj); ]r]n }
```
