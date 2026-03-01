# rJustify

 Right justifies characters of a string.

```javascript
rJustify(String, length)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| String | string | Yes |  |  |
| length | numeric | Yes |  |  |

## Tag Example

```javascript
<cfset length=10>
<cfset result = RJustify("abc",length)>
<cfoutput>
    <pre>~#result#~</pre>
</cfoutput>
```
