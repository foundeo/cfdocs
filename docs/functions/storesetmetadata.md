# storeSetMetadata

Sets the metadata on bucket or object.

```javascript
storeSetMetadata(url,Struct);
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| url | string | Yes |  | Amazon S3 URLs (bucket or object). |
| region | struct | Yes |  | Represents the metadata. See Standard keys for a list of standard keys in metadata. You can also have custom metadata apart from the standard ones. |

## Tag Syntax

```javascript
<cfscript>
	mydate = #now()#;
	hello = structNew();
	hello.color = 'grey';
</cfscript>
<cfset dir = 's3://mycfbucket'>
<cffile action='write' file='#dir#/hello5.txt' output='Sample s3 text'>
<cfset storeSetMetadata('#dir#/hello5.txt','#hello#')>
<cfset test = storeGetMetadata('#dir#/hello5.txt')>
<cfdump var='#test#'>
```
