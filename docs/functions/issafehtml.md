# isSafeHTML

Checks a HTML string against antisamy policy file to determine if it may be vulnerable to XSS / Cross Site Scripting.

```javascript
isSafeHTML(inputString [, PolicyFile])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| inputString | string | Yes |  | String to be validated |
| PolicyFile | string | No |  | File path for custom AntiSamy policy file. Can be defined in the application scope or if not defined will use ColdFusion server default |

## Unsafe HTML Example

Example with HTML that causes isSafeHTML to return false.

```javascript
<cfsavecontent variable="html">
    <div onmouseover=alert(1)>
</cfsavecontent>
<cfoutput>#isSafeHTML(html)#</cfoutput>
```

### Expected Result: no

## Safe HTML Example

Example with HTML that is safe on the default policy.

```javascript
<cfsavecontent variable="html">
    <a href="https://foundeo.com/" title="ColdFusion Consulting &amp; Security">Foundeo Inc.</a>
</cfsavecontent>
<cfoutput>#isSafeHTML(html)#</cfoutput>
```

### Expected Result: yes
