# restSetResponse

 Sets the custom responses.

```javascript
restSetResponse(response);
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| response | struct | Yes |  | A struct that contains the response details. |

## Tag Syntax

restSetResponse() can only be used on function with a return type of void. It will cause errors if it is used on functions that have any other return type.

```javascript
<cffunction name='create' httpMethod='POST' produces='application/xml'> 
 <cfargument name='id' type='numeric'> 
 <cfargument name='name' type='String'> 
 <cfset var response={ 
 status=201, 
 content='<customer id='&id&'><name>'&name&'</name>
 </customer>'>, 
 headers={ 
 location='http://localhost:8500/rest/CustomerService/customers/123', 
 } 
 }> 
 <cfset restSetResponse(response)> 
 <cffunction>
```
