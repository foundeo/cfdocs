# storeSetACL

 Sets the ACL for object or bucket.

```javascript
storeSetACL(url, ACLObject);
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

Use this function to set full permission. The function overwrites all existing permissions. Only the ones you set in the current context exist.

```javascript
<cftry> 
     <cfset dir = 's3://bucket_name'> 
     <cfif !directoryExists(dir)> 
         <cfset directoryCreate(dir)>     
     </cfif>     
     <cfset perm = structNew()> 
     <cfset perm.group = 'all'> 
     <cfset perm.permission = 'read'> 
     <cfset perm1 = structNew()> 
     <cfset perm1.email = 'email ID'> 
     <cfset perm1.permission = 'FULL_CONTROL'> 
     <cfset myarrray = arrayNew(1)> 
     <cfset myarrray = [perm,perm1]> 
     <cfset fileWrite('#dir#/test.txt','This is to test all users permission')> 
     <cfset storeSetACL('#dir#/textl.txt','#myarrray#')> 
     <cfset test = storeGetACL ('#dirkey#/test.txt') > 
     <cfdump var= 'test'> 
     <cfcatch> 
         <cfdump var='#cfcatch#'> 
     </cfcatch> 
 </cftry>
```
