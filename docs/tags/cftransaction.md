# cftransaction

Instructs the database management system to treat multiple
 database operations as a single transaction. Provides database
 commit and rollback processing.
Note that distributed transactions (transactions across multiple datasources) are not supported - you must commit one transaction and begin a separate transaction to one database before writing a query to another (CFMX7 Manual)

### Syntax

```html
<cftransaction>
```

### Script Syntax

```javascript
transaction { }
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | No | begin | `begin`: the start of the block of code to execute
`commit`: commits a pending transaction
`rollback`: rolls back a pending transaction
`setsavepoint`: Marks a place within the transaction as a savepoint. |
| isolation | string | No |  | ODBC lock type. |
| savepoint | string | No |  | The name of the savepoint in the transaction. Used with `action="setsavepoint"` or `action="rollback"` |
| nested | boolean | No |  | specifies whether transaction is nested or not |

## Script Syntax

```html
transaction { 
 try { 
 // code to run 
 transaction action="commit"; 
 } 
 catch(any e) { 
  transaction action="rollback"; 
  } 
 }
```

## Tag Syntax

```html
<cftransaction> 
 <cftry> 
 <!--- code to run ---> 
   <cftransaction action="commit" /> 
 <cfcatch type="any"> 
 <cftransaction action="rollback" /> 
 </cfcatch> 
 </cftry> 
 </cftransaction>
```
