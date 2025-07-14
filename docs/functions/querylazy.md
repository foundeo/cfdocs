# querylazy

Executes a SQL query without loading the data entirely to memory. Instead it calls the given Function with every single row

```javascript
querylazy()
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| sql | string | Yes |  | SQL to execute |
| listener | function | Yes |  | listener function that will be called with the data of every single row. if returns false, execution is stopped. |
| params | any | No |  | Array or Struct of parameter values. <br />    			When passing an array use ? as place holders. <br />    			When passing a struct use :keyName where keyName is the name of the key in the structure corresponding to<br />    			the parameter. <br />    			The struct or array can be a struct with keys such as the following: cfsqltype, list |
| options | struct | No |  | Struct containing query options, all cfquery tag attributes are supported except the name attribute. |

## QueryLazy Example

This example demonstrates how to use the querylazy function to execute a query without loading the data entirely to memory.

```javascript
records = 0
 queryLazy(
 sql="SELECT * FROM users;",
 listener=function(row){
 // Do something with a query row
 records++;
 },
 options={
 datasource:"MyDatasource"
 }
 );
 echo("Records: #records#");
```

### Expected Result: Records: 10
