# spanIncluding

 Gets characters from a string, from the beginning to a
 character that is not in a specified set of characters. The
 search is case-sensitive.

```javascript
spanIncluding(String, set)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  |  |
| set | string | Yes |  | A string or a variable that contains a set of characters.
 Must contain one or more characters |

## Tag Example

```javascript
<cfoutput> 
 #SpanIncluding('This is Great', 'p')# 
 </cfoutput>
```
