# wsPublish

 Sends messages to a specific channel based on the filter criteria (which is a struct).

```javascript
wsPublish(String channel, Object message); wsPublish(channel,message [,filterCriteria]);
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| channel | string | Yes |  | Specific channel to which the server publishes its response. |
| message | any | Yes |  | Response sent by the server to all clients subscribed to a specific channel. |
| filterCriteria | struct | No |  | Conditions to filter eligible clients that need to be notified for a given channel. |

## Tag Syntax

Checking to see if the region is present in the cache

```javascript
<cfscript> 
 if(isDefined('form.publish')) 
 wsPublish(#form.channel#, #form.message#); 
 </cfscript> 
 <cfform method='post'> 
 <cfselect name='channel'> 
 <option> 
 stocks 
 </option> 
 <option> 
 news 
 </option> 
 <option> 
 products 
 </option> 
 </cfselect> 
 Message: 
 <input id='message' name='message' type='text'> 
 <cfinput id='publish' name='publish' value='publish' type='submit'> 
 </cfform>
```
