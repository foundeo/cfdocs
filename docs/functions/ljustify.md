# lJustify

 Left justifies characters in a string of a specified length.

```javascript
lJustify(String, length)
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
<cfset result = LJustify("abc",length)>
<cfoutput>
    <pre>~#result#~</pre>
</cfoutput>
```
