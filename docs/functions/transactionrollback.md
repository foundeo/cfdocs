# transactionRollback

Rollback current transaction

```javascript
transactionRollback([savepoint])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| savepoint | string | No |  | Name of the savepoint to roll back to |

## Script Syntax

In this code, any error triggered will cause transactionRollback() to run and roll back the pending transaction

```javascript
transaction { 
 try { 
 // code to run 
 transactionCommit(); 
 } 
 catch(any e) { 
  transactionRollback(); 
  } 
 }
```
