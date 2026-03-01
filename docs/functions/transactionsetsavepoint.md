# transactionSetSavepoint

Set savepoint for transaction

```javascript
transactionSetSavepoint(savepoint)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| savepoint | string | Yes |  | Savepoint name to which can be rolled back |

## Roll back to a specified savepoint

This example runs multiple queries with a savepoint for each, and rolls back to the 'useradded' savepoint if the last query fails.

```javascript
transaction { 
  // insert user 
  transactionSetSavepoint('useradded'); 
  try { 
    // another query 
  } 
  catch(any e) { 
   transactionRollback(); 
  } 
}
```
