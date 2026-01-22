# getSafeHTML

Sanitizes HTML using antisamy policy rules. 

```javascript
getSafeHTML(inputString [, PolicyFile, throwOnError])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| inputString | string | Yes |  | String to be sanitized |
| PolicyFile | string | No |  | File path for custom antisamy policy file. Can be defined in the application scope or if not defined will use ColdFusion server default |
| throwOnError | boolean | No |  | If true will throw error else empty string will be returned |

## application setting demo

AntiSamy parameter can be set in the application scope

```javascript
<cfcomponent>
  <cfset this.security.antisamypolicy = "antisamy.xml">
</cfcomponent>
```

## Usage

demonstrates usage

```javascript
<cfset  SafeHTML = getSafeHTML(inputHTML, "", true)>
```
