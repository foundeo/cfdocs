# entitySave

Saves or updates data of the entity and all related entities to the database.

```javascript
entitySave(entity [, forceInsert])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| entity | variableName | Yes |  | Name of the entity that must be saved in the database. |
| forceInsert | boolean | No | false | If true, then ColdFusion always tries to insert the entity as a new record. |

## Save a new ORM entity

Use entitySave to save a newly created entity.

```javascript
var company = entityNew("Company");
company.setName(form.companyName);
company.setIndustry(form.industry);
company.setEmployees(form.employeeCount);
company.setWebsite(form.companyWebsite);
entitySave(company);
```
