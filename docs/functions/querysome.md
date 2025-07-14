# querySome

This function calls a given closure/function with every element in a given query and returns true, if one of the closure calls returns true

```javascript
querySome(query, function(row [, currentRow] [, query] ){} [, parallel] [, maxThreads])
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
query.some(function(row [, currentRow] [, query] ){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | query | Yes |  | query to filter entries from |
| callback | boolean | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| parallel | boolean | No | false | Lucee4.5+ true if the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ the maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| row | struct | No | A struct with all of the columns for the current iteration
| currentRow | numeric | No | The value for the current iteration
| query | query | No | A reference of the original struct

## The simple Querysome example

Here,we've example to check whether the 75 is exists or not in myquery mark column value.

```javascript
<cfscript>
myQuery = queryNew("id,name,mark","integer,varchar,integer",[[1,"Rahu",75],[2,"Ravi",80]]);
 result = querySome(myQuery , function(details){
	 return details.mark IS 75;
 });
 writeOutput((result ? "Some" : "No") & " matches  Record found!");
</cfscript>
```

### Expected Result: Some matches Record found!

## The Query Member Function example

Here,we've example to check whether the 85 is exists or not in myquery mark column value using query member function.

```javascript
<cfscript>
myQuery = queryNew("id,name,mark","integer,varchar,integer",[[1,"Rahu",75],[2,"Ravi",80]]);
 result = myQuery.Some(function(details){
	 return details.mark IS 85;
 });
 writeOutput((result ? "Some" : "No") & " matches  Record found!");
</cfscript>
```

### Expected Result: No matches Record found!
