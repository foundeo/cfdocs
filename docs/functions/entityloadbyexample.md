# entityLoadByExample

Loads and returns an array of objects that match the `sampleEntity`.

```javascript
entityLoadByExample(sampleEntity [, unique, matchCriteria])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| sampleEntity | string | Yes |  | No Help Available |
| unique | boolean | No |  | When true a single entity is returned, otherwise an array is returned.<br />If you are sure only one record exists for the `Filter`, then you can specify `unique=true` to return a single entity instead of an array. If you set `unique=true` and multiple records are returned, then an exception occurs. |
| matchCriteria | any | No |  | No Help Available |

## Tag Syntax

```javascript
<cfset employee= createObject("component", "employee")>
<cfset employee.setDepartment("ColdFusion")>
<cfset employee.setCountry("USA")>
<cfset employee=entityLoadByExample(employee)>
```
