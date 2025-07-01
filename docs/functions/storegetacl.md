# storeGetACL

 Gets the ACL object or bucket.

```javascript
storeGetACL(url, ACLObject);
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| ulr | string | Yes |  | Amazon S3 URLs (content or object) |
| ACLObject | array | Yes |  | An array of struct where each struct represents a permission or grant as discussed in ACLObject. |

## Tag Syntax

```javascript
<cfset dir = 's3://bucket_Name'> 
     <cfif NOT directoryExists(dir)> 
          <cfset directoryCreate(dir)> 
 </cfif> 
     <cfset test = storeGetACL('#dir#')> 
     <cfdump var='#test#'>
```
