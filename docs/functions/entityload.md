# entityLoad

Loads and returns an array of entities of the specified entityname or an entity if unique=true or if a primary key id is passed in to filterCriteria.

```javascript
entityLoad(entityName [,id | Filter ,unique | Order ,options])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| entityName | string | Yes |  | Name of CFC / Entity to be loaded. |  |
| id | any | No |  | THIS PARAMETER IS MUTUALLY EXCLUSIVE WITH `Filter`.<br /><br />The primary key value of the entity to be loaded. Or if the entity has a composite key, then this is specified as a ColdFusion struct (key-value pair). |  |
| Filter | any | No |  | THIS PARAMETER IS MUTUALLY EXCLUSIVE WITH `id`.<br /><br />This is a ColdFusion struct (key-value pair) of property names and values. If there is more than one key-value pair, then use the `AND` keyword. |  |
| unique | boolean | No |  | THIS PARAMETER IS MUTUALLY EXCLUSIVE WITH `Order`.<br /><br />When true a single entity is returned, otherwise an array is returned.<br />If you are sure only one record exists for the `Filter`, then you can specify `unique=true` to return a single entity instead of an array. If you set `unique=true` and multiple records are returned, then an exception occurs. |  |
| Order | string | No |  | THIS PARAMETER IS MUTUALLY EXCLUSIVE WITH `unique`.<br /><br />String used to specify the sort order of the entities that are returned.<br />If this is specified, the function returns an array of entities that satisfy the `Filter` and is sorted as specified by `Order`.<br /><br />Usage example: LastName ASC, FirstName ASC |  |
| options | struct | No |  | A struct with possible keys:<br />ignorecase : Ignores the case of sort order when set to true. Use only if you've specified the `Order` parameter.<br />offset : Specifies the position from which to retrieve the objects.<br />maxResults : Specifies the maximum number of objects to be retrieved.<br />cacheable : Whether the result has to be cached in secondary cache. Default is `false`.<br />cachename : Name of the cache in secondary cache.<br />timeout : Specified the timeout value (in seconds) for the query | /Users/garethedwards/development/github/cfdocs/docs/functions/entityload.md|timeout |

## Load by PK

Loads an entity by primary key value

```javascript
entityLoad("Employee", url.employee_id)
```

### Expected Result: An Employee CFC Instance

## Get multiple entities

Returns an array of Employee instances with last name Smith

```javascript
entityLoad("Employee", {LastName="Smith"})
```

### Expected Result: array
