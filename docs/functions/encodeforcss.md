# encodeForCSS

Encodes the input string for safe output in CSS to prevent Cross Site Scripting attacks.

```javascript
encodeForCSS(string [,canonicalize]);
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| string | string | Yes |  | The string to encode. |
| canonicalize | boolean | No | false | If set to true, canonicalization happens before encoding. If set to false, the given input string will just be encoded. The default value for canonicalize is false. 
When this parameter is not specified, canonicalization will not happen. By default, when canonicalization is performed, both mixed and multiple encodings will be allowed. 
To use any other combinations you should canonicalize using canonicalize method and then do encoding. |

## Tag Syntax

Encoding CSS values.

```javascript
<cfif not isDefined ('form.bgcolor')> 
 <cfset form.bgcolor = 'red'> 
 </cfif> 
 <cfoutput> 
 <style> 
 .myDiv 
 { 
 background-color : #encodeForCSS(form.bgcolor)#; 
 /* Encode the input to avoid any malicious code execution.*/ 
 } 
 </style></cfoutput> 
 <hr/> 
 <cfoutput> 
 <div class='myDiv'> 
 This div element is styled!!!! 
 </div> 
 </cfoutput> 
 <hr/> 
 <cfform action='#cgi.SCRIPT_NAME#' method='post' > 
 Background Color : <cfinput name='bgcolor' type='text' value='#form.bgcolor#'> <br/> <cfinput name='submit' type='submit' value='Style the div!!!'>
</cfform>
```
