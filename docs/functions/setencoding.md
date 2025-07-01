# setEncoding

 Sets the character encoding (character set) of Form and URL
 scope variable values; used when the character encoding of
 the input to a form, or the character encoding of a URL, is
 not in UTF-8 encoding.

```javascript
setEncoding(scope_name, charset)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| scope_name | string | Yes |  |  |  |
| charset | string | Yes |  | The character encoding in which text in the scope
 variables is encoded. | /Users/garethedwards/development/github/cfdocs/docs/functions/setencoding.md|utf-16 |

## Script Example

```javascript
<!--- This example sends and interprets the contents of two fields as big5 encoded text. Note that the form fields are received as URL variables because the form uses the GET method. ---> 
 <cfcontent type="text/html; charset=big5"> 
 <form action='#cgi.script_name#' method='get'> 
 <input name='xxx' type='text'> 
 <input name='yyy' type='text'> 
 <input type="Submit" value="Submit"> 
 </form> 
 <cfif isDefined("URL.xxx")> 
 <cfscript> 
 setEncoding("url", "big5"); 
 writeOutput("URL.XXX is " & URL.xxx & "<br>"); 
 writeOutput("URL.YYY is " & URL.yyy & "<br>"); 
 theEncoding = getEncoding("URL"); 
 writeOutput("The URL variables were decoded using '" & theEncoding & "' encoding."); 
 writeOutput("The encoding is " & theEncoding); 
 </cfscript> 
 </cfif>
```
