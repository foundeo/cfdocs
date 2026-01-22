# cfstoredproc

Executes a stored procedure in a server database. It
 specifies database connection information and identifies
 the stored procedure.

### Syntax

```html
<cfstoredproc procedure="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfstoredproc(procedure="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| procedure | string | Yes |  | Name of stored procedure on database server. |
| datasource | string | No |  | Name of data source that points to database that contains<br /> stored procedure. |
| username | string | No |  | Overrides username in data source setup. |
| password | string | No |  | Overrides password in data source setup. |
| blockfactor | numeric | No |  | Maximum number of rows to get at a time from server.<br /> Range is 1 to 100. |
| debug | boolean | No | NO | Yes: Lists debug information on each statement<br /> No: does not |
| returncode | boolean | No | NO | Yes: Tag populates cfstoredproc.statusCode with status<br /> code returned by stored procedure.<br /> No: does not |
| result | variableName | No |  | Specifies a name for the structure in which cfstoredproc<br /> returns the statusCode and ExecutionTime variables. If<br /> set, this value replaces cfstoredproc as the prefix to<br /> use when accessing those variables. |

## Tag Syntax

Basic example of calling a stored procedure, passing a parameter, and getting a result set.

```html
<cfstoredproc procedure="spu_my_storedproc" datasource="myDSN">
	<cfprocparam cfsqltype="cf_sql_integer" value="#myParameterValue#">
	<cfprocresult name="qResults">
</cfstoredproc>
```

## Script Syntax

Call stored procedure and get back multiple result sets.

```html
cfstoredproc( procedure="spu_my_storedproc",datasource="myDSN" ) {
	cfprocparam( cfsqltype="cf_sql_date", value=myDateParam );
	cfprocresult( name="qSummary", resultset=1 );
	cfprocresult( name="qDetails", resultset=2 );
}
```

## Scripted Tag Syntax (for Lucee)

Call stored procedure and get back multiple result sets.

```html
cfstoredproc( procedure="spu_my_storedproc",datasource="myDSN" ) {
	procparam( cfsqltype="cf_sql_date", value=myDateParam );
	procresult( name="qSummary", resultset=1 );
	procresult( name="qDetails", resultset=2 );
}
```
