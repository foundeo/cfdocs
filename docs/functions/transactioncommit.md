# transactionCommit

Commit a pending transaction

```javascript
transactionCommit()
```

```javascript
returns void
```

## Script Syntax

In this code, transactionCommit() will commit the pending transaction, which is any database queries run in the transaction block.

```javascript
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
