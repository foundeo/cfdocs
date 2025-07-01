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
