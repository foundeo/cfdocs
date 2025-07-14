# getToken

 Determines whether a token of the list in the delimiters
 parameter is present in a string.
 Returns the token found at position index of the string, as a
 string. If index is greater than the number of tokens in the
 string, returns an empty string.

```javascript
getToken(string, index [, delimiters])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  |  |
| index | numeric | Yes |  |  |
| delimiters | string | No | , |  |

## Tag Syntax

In the following example, the function call requests element number 2 from the string, using the delimiter '[:;".'

```javascript
<cfoutput>
<cfset mystring = "four," & #chr(32)# & #chr(9)# & #chr(10)# & ",five, nine,zero:;" & #chr(10)# & "nine,ten:, eleven:;twelve:;thirteen," & #chr(32)# & #chr(9)# & #chr(10)# & ",four">
getToken(mystring, 3) is : #getToken(mystring, 3)#
</cfoutput>
```
