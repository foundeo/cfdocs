# cfquery

Passes queries or SQL statements to a data source.
 It is recommended that you use the cfqueryparam tag within
 every cfquery tag, to help secure your databases from
 unauthorized users

### Syntax

```html
<cfquery>SQL</cfquery>
```

### Script Syntax

```javascript
queryExecute(sql, params, options);
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | No |  | Name of query. Used in page to reference query record set.<br /> Must begin with a letter. Can include letters, numbers,<br /> and underscores. |
| datasource | string | No |  | Name of data source from which query gets data. As of CF9+ you can specify a default datasource in Application.cfc using the variable this.datasource |
| timezone | string | No |  | Lucee4+ the timezone used to convert a date object to a timestamp (string), this value is needed when your database runs in another timezone and you are not using cfqueryparam to insert dates. |
| dbtype | string | No |  | Type of source query against which the SQL will be executed. Specify either dbtype or dataSource, not both.  Supports the following values: `query`: for querying an existing query object (i.e. Query of Queries); `hql`: for querying an ORM. NOTE: Supported SQL syntax varies depending on this value. |
| username | string | No |  | Overrides username in data source setup. |
| password | string | No |  | Overrides password in data source setup. |
| maxrows | numeric | No | -1 | Maximum number of rows to return in record set.<br /> -1 returns all records. |
| blockfactor | numeric | No |  | Maximum rows to get at a time from server. Range: 1 - 100.<br /> Might not be supported by some database systems. |
| timeout | numeric | No |  | Maximum number of seconds that each action of a query is<br /> permitted to execute before returning an error. The<br /> cumulative time may exceed this value.<br /><br /> For JDBC statements, CFML sets this attribute. For<br /> other drivers, check driver documentation. |
| cachedafter | date | No |  | Date value (for example, April 16, 1999, 4-16-99). If date<br /> of original query is after this date, CFML uses<br /> cached query data. To use cached data, current query must<br /> use same SQL statement, data source, query name, user name,<br /> password.<br /><br /> A date/time object is in the range 100 AD-9999 AD.<br /><br /> When specifying a date value as a string, you must enclose<br /> it in quotation marks. |
| cachedwithin | numeric | No |  | Timespan, using the CreateTimeSpan function. If original<br /> query date falls within the time span, cached query data is<br /> used. CreateTimeSpan defines a period from the present,<br /> back. Takes effect only if query caching is enabled in the<br /> Administrator.<br /><br /> To use cached data, the current query must use the same SQL<br /> statement, data source, query name, user name, and password. |
| debug | boolean | No | NO | Yes: If debugging is enabled, but the Administrator<br /> Database Activity option is not enabled, displays SQL<br /> submitted to datasource and number of records returned<br /> by query.<br /> No: If the Administrator Database Activity option is<br /> enabled, suppresses display. |
| result | string | No |  | CF8+ Specifies a name for the structure in which cfquery returns<br /> the result variables.<br /> * SQL: The SQL statement that was executed. (string)<br /> * Cached: If the query was cached. (boolean)<br /> * SqlParameters: An ordered Array of cfqueryparam values. (array)<br /> * RecordCount: Total number of records in the query. (numeric)<br /> * ColumnList: Column list, comma separated. (string)<br /> * ExecutionTime: Execution time for the SQL request. (numeric)<br /> * GENERATEDKEY: CF9+ If the query was an INSERT with an identity or auto-increment value the value of that ID is placed in this variable. |
| ormoptions | struct | No |  | CF9+ A structure of ORM Options when used for HQL queries (9.0.1+). |
| cacheID | string | No |  | CF10+ A value to serve as cache identifier when cachedWithin or cachedAfter are specified. |
| cacheRegion | string | No |  | CF10+ The name of the region  cachedWithin or cachedAfter are specified. |
| clientInfo | struct | No |  | CF10+ A structure containing properties to be set on the database connection. |
| fetchClientInfo | boolean | No | false | CF10+ When true returns a struct with the clientInfo argument value passed by the last query |
| lazy | boolean | No | false | Lucee4+ If "lazy" is set to true Lucee does not initially load all the data from the datasource.<br /><br />When "true" the data is only loaded when requested, this means the data is dependent on the datasource connection. If the datasource connection has been lost for some reason and the data has not yet been requested,Lucee throws an error if you try to access the data.<br /><br />The "lazy" attribute only works if the following attributes are not used:cachewithin,cacheafter and result. |
| psq | boolean | No | false | Lucee4+ When true preserve single quotes within the sql statement |
| returntype | string | No | query | Lucee5+ The return type of the query result. One of the following values is accepted:<br />- "query": returns a query object<br />- "array_of_entity": returns an array of ORM entities (requires dbtype to be "hql")<br />- "array": returns an array of structs<br />- "struct": returns a struct of structs (requires columnkey to be defined). |
| columnkey | string | No |  | Lucee5+ The struct key used for each result when returntype is "struct". |

## Example CFQuery with CFQueryParam

Shows how to use a cfqueryparam tag within cfquery.

```html
<cfquery name="news">
    SELECT id,title,story
    FROM news
    WHERE id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>
```

## Script Syntax using QueryExecute

CF11+ Also see the Tags Implemented as Components section for another method of using <cfquery> in script.

```html
myQuery = queryExecute(
 "SELECT myCol1, myCol2 FROM myTable 
  WHERE myCol1 = :myid 
  ORDER BY myCol1 ASC ", 
  {myid: 5}, 
  {datasource = "myDSN"} 
);
writeDump(myQuery);
```

## Simple Query of Query Example

A dummy query is first created from scratch using queryNew, then sorted. A query of query is performed by specifying dbtype="query" and then using a query object variable name as in the FROM statement.

```html
<!--- create a dummy query using queryNew --->
<cfset news = queryNew("id,title", "integer,varchar")>
<cfset queryAddRow(news)>
<cfset querySetCell(news, "id", "1")>
<cfset querySetCell(news, "title", "Dewey defeats Truman")>
<cfset queryAddRow(news)>
<cfset querySetCell(news, "id", "2")>
<cfset querySetCell(news, "title", "Men walk on Moon")>
<cfset writeDump(news)>

<!--- run QofQ (query of query) --->
<cfquery name="sortedNews" dbtype="query">
    SELECT id, title FROM news
    ORDER BY title DESC
</cfquery>
<cfset writeDump(sortedNews)>
```

## Script Syntax using new Query()

This syntax was implemented by script-based components in CF 9 & 10. Deprecated in ColdFusion 2018. Removed in ColdFusion 2025. It is superseded by queryExecute() in CF11.

```html
queryObj = new Query(
 name="qryDemo",
 datasource="mydatasourcename",
 sql = "SELECT col1, col2
 FROM myTable
 WHERE id=:id"
); 
queryObj.addParam(name="id",value=arguments.id, cfsqltype="cf_sql_integer");
resultset=queryObj.execute().getResult();
```

## Return Query as an Array of Structs

Lucee5+ Return a query object converted into an array of structs.

```html
<!--- create a dummy query using queryNew --->
<cfset users = queryNew("firstname", "varchar", [{"firstname":"Han"}])>
<cfset writeDump(users)>

<!--- run QofQ (query of query) --->
<cfquery name="subUsers" dbtype="query" returntype="array">
    SELECT * FROM users
</cfquery>
<cfset writeDump(subUsers)>
```

### Expected Result: [ { firstname: "Han" } ]

## Return Query as a Struct of Structs

Lucee5+ Return a query object converted into a struct of structs. (Struct key is based on the "columnkey" parameter)

```html
<!--- create a dummy query using queryNew --->
<cfset users = queryNew("id, firstname", "integer, varchar", [{"id":1, "firstname":"Han"}])>
<cfset writeDump(users)>

<!--- run QofQ (query of query) --->
<cfquery name="subUsers" dbtype="query" returntype="struct" columnkey="id">
    SELECT * FROM users
</cfquery>
<cfset writeDump(subUsers)>
```

### Expected Result: { 1: { id: 1, firstname: "Han" } }

## Insert a Record and Retrieve the Generated Key

Inserts a new record into a table called myTable. The "ID" column is an auto-incremented primary key column.

```html
<!--- insert the new record --->
<cfquery datasource="myDatasource" result="result">
INSERT INTO myTable ( name, email ) VALUES ( 'Joe', 'joe@domain.com' )
</cfquery>

<!--- output the new primary key --->
<cfdump var="#result.generatedKey#" />
```
