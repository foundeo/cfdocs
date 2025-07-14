# storeAddACL

Adds ACL to existing ACL for object or bucket.

```javascript
storeAddACL(url, ACLObject);
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| url | string | Yes |  | Amazon S3 URLs (content or object). |
| ACLObject | array | Yes |  | An array of struct where each struct represents a permission or grant as discussed in ACLObject. |

## Tag Syntax

Use this function to add permissions to the existing ones.

```javascript
<cftry> 
 <cfset dir = 's3://bucket_name/'> 
 
     <cfset perm = structNew()> 
     <cfset perm.group = 'authenticated'> 
     <cfset perm.permission = 'READ'> 
     <cfset perm1 = structNew()> 
     <cfset perm1.email = 'email_ID'> 
     <cfset perm1.permission = 'READ_ACP'> 
     <cfset myarrray = [perm,perm1]> 
     <cfif NOT directoryExists(dir)> 
         <cfset directoryCreate(dir)> 
     </cfif> 
     <cfset fileWrite('#dir#/Sample.txt','This is to test storeAddACL')> 
     <cfset storeAddACL('#dir#','#myarrray#')> 
     <cfset test = storeGetACL(dirkey)> 
         <cfdump var='#test#'> 
     <cfcatch> 
         <cfdump var='#cfcatch#'> 
     </cfcatch> 
 </cftry>
```
