# onServerStart

Called upon startup of the server. Typically defined in server.cfc and placed at the webroot. In the ColdFusion Administrator > Setting check 'Component with onServerStart() method' and specify the file. The function is useful for application-independent tasks, and specifying the server specific environment variables and other general tasks.

```javascript
function onServerStart() { }
```

```javascript
returns void
```

## Specify environment variables

Setting server specific variables

```javascript
<cfcomponent>    <cffunction name="onServerStart">        <cfset server.environment = "Dev-Server">        <cfset server.tech_support = "joe.bloggs@example.com">    </cffunction></cfcomponent>
```
