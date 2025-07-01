# decodeForHTML

 Decodes an HTML encoded string.

```javascript
decodeForHTML(string);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The encoded string to decode. |

## Tag Syntax

```javascript
<cfif isDefined('form.submit')> 
 <b> 
 Output:<cfoutput >#decodeForHTML(form.encodedUserName)#</cfoutput> 
 </b> 
 <cfelse> 
 <cfset form.username=''/> 
 </cfif> 
 <cfform> 
 <cfinput name='encodedUserName' type='text' value='#form.encodedUserName#'> 
 <cfinput name='submit' type='submit' value='Submit'> 
 </cfform>
```
