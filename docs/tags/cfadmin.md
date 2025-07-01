# cfadmin

Used internally by Lucee (and Railo) in the administrator to apply settings. This tag is considered undocumented / subject to change.

### Syntax

```html
<cfadmin>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfadmin();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | The administrative action to perform. |
| type | string | Yes |  | The admin context: `web` or `server` |
| password | string | Yes |  | The admin password. |

## Create an admin collection

```html
<cfadmin
 action="collection"
 type="web|server"
 password="password"
 collectionAction="create"
 collection="#form.collName#"
 path="#form.collPath#"
 language="#form.collLanguage#"
 remoteClients="arrayOfClients">
```

## Delete an admin collection

```html
<cfadmin
 action="collection"
 type="web|server"
 password="password"
 collectionAction="delete"
 collection="#form.name[key]#"
 remoteClients="arrayOfClients">
```

## Optimize an admin collection

```html
<cfadmin
 action="collection"
 type="web|server"
 password="password"
 collectionAction="optimize"
 collection="#form.name[key]#"
 remoteClients="arrayOfClients">
```

## Repair an admin collection

```html
<cfadmin
 action="collection"
 type="web|server"
 password="password"
 collectionAction="repair"
 collection="#form.name[key]#"
 remoteClients="arrayOfClients">
```

## Compile an admin collection

```html
<cfadmin
 action="compileMapping"
 type="web|server"
 password="password"
 virtual="#data.virtuals[idx]#"
 stoponerror="#data.stoponerrors[idx]#"
 remoteClients="arrayOfClients">
```

## Connect to admin

```html
<cfadmin
 action="connect"
 type="web|server"
 password="password">
```

## Create an archive

```html
<cfadmin
 action="createArchive"
 type="web|server"
 password="password"
 file="#target#"
 virtual="#data.virtuals[idx]#"
 secure="#data.secure[idx]#"
 append="#notdoDownload#"
 remoteClients="arrayOfClients">
```

## Create a security manager connection

```html
<cfadmin
 action="createSecurityManager"
 type="web|server"
 password="password"
 id="#form.id#">
```

## Set the default Security Manager

```html
<cfadmin
 action="defaultSecurityManager"
 type="web|server"
 password="password"
 returnVariable="access">
```

## Execute the spooler task

```html
<cfadmin
 action="executeSpoolerTask"
 type="web|server"
 password="password"
 id="#data.ids[idx]#">
```

## Get the application listener

```html
<cfadmin
 action="getApplicationListener"
 type="web|server"
 password="password"
 returnVariable="listener">
```

## Get the application settings

```html
<cfadmin
 action="getApplicationSetting"
 type="web|server"
 password="password"
 returnVariable="appSettings">
```

## Get the admin char set

```html
<cfadmin
 action="getCharset"
 type="web|server"
 password="password"
 returnVariable="charset">
```

## Get the Component admin

```html
<cfadmin
 action="getComponent"
 type="web|server"
 password="password"
 returnVariable="component">
```

## Get an admin contextes

```html
<cfadmin
 action="getContextes"
 type="web|server"
 password="password"
 returnVariable="contextes">
```

## Get the custom tag mappings

```html
<cfadmin
 action="getCustomTagMappings"
 type="web|server"
 password="password"
 returnVariable="mappings">
```

## Get the custom tag setting

```html
<cfadmin
 action="getCustomtagSetting"
 type="web|server"
 password="password"
 returnVariable="setting">
```

## Get the datasource

```html
<cfadmin
 action="getDatasource"
 type="web|server"
 password="password"
 name="#form.name#"
 returnVariable="existing">
```

## Get the datasource drivers available

```html
<cfadmin
 action="getDatasourceDriverList"
 type="web|server"
 password="password"
 returnVariable="dbdriver">
```

## Get the datasource settings

```html
<cfadmin
 action="getDatasourceSetting"
 type="web|server"
 password="password"
 returnVariable="dbSetting">
```

## Get Debug

```html
<cfadmin
 action="getDebug"
 type="web|server"
 password="password"
 returnVariable="debug">
```

## Get Debug Data

```html
<cfadmin
 action="getDebugData"
 returnVariable="debugging">
```

## Get Debugging List

```html
<cfadmin
 action="getDebuggingList"
 type="web|server"
 password="password"
 returnVariable="debug_templates">
```

## Get the admin Default Password

```html
<cfadmin
 action="getDefaultPassword"
 type="web|server"
 password="password"
 returnVariable="defaultPassword">
```

## Get the admin default security manager

```html
<cfadmin
 action="getDefaultSecurityManager"
 type="web|server"
 password="password"
 returnVariable="access">
```

## Get Error

```html
<cfadmin
 action="getError"
 type="web|server"
 password="password"
 returnVariable="err">
```

## Get list of errors

```html
<cfadmin
 action="getErrorList"
 type="web|server"
 password="password"
 returnVariable="err_templates">
```

## Get the extension information

```html
<cfadmin
 action="getExtensionInfo"
 type="web|server"
 password="password"
 returnVariable="info">
```

## Get the exention providers

```html
<cfadmin
 action="getExtensionProviders"
 type="web|server"
 password="password"
 returnVariable="providers">
```

## Get extensions

```html
<cfadmin
 action="getExtensions"
 type="web|server"
 password="password"
 returnVariable="extensions">
```

## Get FLDs

```html
<cfadmin
 action="getFLDs"
 type="web|server"
 password="password"
 returnVariable="flds">
```

## Get JavaCFXTags

```html
<cfadmin
 action="getJavaCFXTags"
 type="web|server"
 password="password"
 returnVariable="jtags">
```

## Get the admin locales

```html
<cfadmin
 action="getLocales"
 locale="#stText.locale#"
 returnVariable="locales">
```

## Get mail Servers

```html
<cfadmin
 action="getMailServers"
 type="web|server"
 password="password"
 returnVariable="ms">
```

## Get mail settings

```html
<cfadmin
 action="getMailSetting"
 type="web|server"
 password="password"
 returnVariable="mail">
```

## Get the mappings

```html
<cfadmin
 action="getMappings"
 type="web|server"
 password="password"
 returnVariable="mappings">
```

## Get the output settings

```html
<cfadmin
 action="getOutputSetting"
 type="web|server"
 password="password"
 returnVariable="setting">
```

## Get the plugin directory

```html
<cfadmin
 action="getPluginDirectory"
 type="web|server"
 password="password"
 returnVariable="pluginDir">
```

## Get the proxy

```html
<cfadmin
 action="getProxy"
 type="web|server"
 password="password"
 returnVariable="proxy">
```

## Get regional

```html
<cfadmin
 action="getRegional"
 type="web|server"
 password="password"
 returnVariable="regional">
```

## Get remote crunlient

```html
<cfadmin
 action="getRemoteClient"
 type="web|server"
 password="password"
 url="#data.urls[idx]#"
 returnVariable="rclient">
```

## Get remote clients

```html
<cfadmin
 action="getRemoteClients"
 type="web|server"
 password="password"
 returnVariable="clients">
```

## Get remote client usage

```html
<cfadmin
 action="getRemoteClientUsage"
 type="web|server"
 password="password"
 returnVariable="usage">
```

## Get scope information

```html
<cfadmin
 action="getScope"
 type="web|server"
 password="password"
 returnVariable="scope">
```

## Get the security manager

```html
<cfadmin
 action="getSecurityManager"
 type="web|server"
 password="password"
 id="#url.id#"
 returnVariable="access">
```

## Get the current spooler tasks

```html
<cfadmin
 action="getSpoolerTasks"
 type="web|server"
 password="password"
 returnVariable="tasks">
```

## Get the server time zones

```html
<cfadmin
 action="getTimeZones"
 locale="#stText.locale#"
 returnVariable="timezones">
```

## Get the TLDs

```html
<cfadmin
 action="getTLDs"
 type="web|server"
 password="password"
 returnVariable="tlds">
```

## Get any current updates

```html
<cfadmin
 action="getUpdate"
 type="web|server"
 password="password"
 returnvariable="update">
```

## Return if the context has a password

```html
<cfadmin
 action="hasPassword"
 type="web|server"
 returnVariable="hasPassword">
```

## Purge the index

```html
<cfadmin
 action="index"
 type="web|server"
 password="password"
 indexAction="purge"
 collection="#form.name[key]#"
 remoteClients="arrayOfClients">
```

## Update the index

```html
<cfadmin
 action="index"
 type="web|server"
 password="password"
 indexAction="update"
 indexType="path"
 collection="#url.collection#"
 key="#form.path#"
 urlpath="#form.url#"
 extensions="#form.extensions#"
 recurse="#structKeyExists(form,"recurse")andform.recurse#"
 language="#form.language#"
 remoteClients="arrayOfClients">
```

## Remove CFX extension

```html
<cfadmin
 action="removeCFX"
 type="web|server"
 password="password"
 name="#data.names[idx]#"
 remoteClients="arrayOfClients">
```

## Remove a custom tag

```html
<cfadmin
 action="removeCustomTag"
 type="web|server"
 password="password"
 virtual="#data.virtuals[idx]#"
 remoteClients="arrayOfClients">
```

## Remove a datasource

```html
<cfadmin
 action="removeDatasource"
 type="web|server"
 password="password"
 name="#data.names[idx]#"
 remoteClients="arrayOfClients">
```

## Remove a default password

```html
<cfadmin
 action="removeDefaultPassword"
 type="web|server"
 password="password">
```

## Remove an extension

```html
<cfadmin
 action="removeExtension"
 type="web|server"
 password="password"
 provider="#detail.installed.provider#"
 id="#detail.installed.id#">
```

## Remove a mapping

```html
<cfadmin
 action="removeMapping"
 type="web|server"
 password="password"
 virtual="#data.virtuals[idx]#"
 remoteClients="arrayOfClients">
```

## Remove a proxy

```html
<cfadmin
 action="removeProxy"
 type="web|server"
 password="password"
 >
```

## Remove a remote client

```html
<cfadmin
 action="removeRemoteClient"
 type="web|server"
 password="password"
 url="#data.urls[idx]#">
```

## Remove a security manager

```html
<cfadmin
 action="removeSecurityManager"
 type="web|server"
 password="password"
 id="#data.ids[idx]#">
```

## Remove a spooler task

```html
<cfadmin
 action="removeSpoolerTask"
 type="web|server"
 password="password"
 id="#data.ids[idx]#">
```

## Remove an update

```html
<cfadmin
 action="removeUpdate"
 type="web|server"
 password="password"
 remoteClients="arrayOfClients">
```

## Reset an ID

```html
<cfadmin
 action="resetId"
 type="web|server"
 password="password">
```

## Reset a password

```html
<cfadmin
 action="resetPassword"
 type="web|server"
 password="password"
 contextPath="#form.contextPath#">
```

## Restart the server

```html
<cfadmin
 action="restart"
 type="web|server"
 password="password"
 remoteClients="arrayOfClients">
```

## Run an update

```html
<cfadmin
 action="runUpdate"
 type="web|server"
 password="password">
```

## Delete a scheduled task

```html
<cfadmin
 action="schedule"
 type="web|server"
 password="password"
 scheduleAction="delete"
 task="#data.names[idx]#"
 remoteClients="arrayOfClients">
```

## Pause a scheduled task

```html
<cfadmin
 action="schedule"
 type="web|server"
 password="password"
 scheduleAction="pause"
 task="#data.names[idx]#"
 remoteClients="arrayOfClients">
```

## Resume a scheduled task

```html
<cfadmin
 action="schedule"
 type="web|server"
 password="password"
 scheduleAction="resume"
 task="#data.names[idx]#"
 remoteClients="arrayOfClients">
```

## Run a scheduled task

```html
<cfadmin
 action="schedule"
 type="web|server"
 password="password"
 scheduleAction="run"
 task="#data.names[idx]#"
 remoteClients="arrayOfClients">
```

## Update a scheduled task

```html
<cfadmin
 action="schedule"
 type="web|server"
 password="password"
 scheduleAction="update"
 task="#form.name#"
 url="#form.url#"
 port="#form.port#"
 requesttimeout="#form.timeout#"
 username="#nullIfEmpty(form.username)#"
 schedulePassword="#nullIfEmpty(form.password)#"
 proxyserver="#nullIfEmpty(form.proxyserver)#"
 proxyport="#form.proxyport#"
 proxyuser="#nullIfEmpty(form.proxyuser)#"
 proxypassword="#nullIfEmpty(form.proxypassword)#"
 publish="#formBool('publish')#"
 resolveurl="#formBool('resolveurl')#"
 startdate="#nullIfNoDate('start')#"
 starttime="#nullIfNoTime('start')#"
 enddate="#nullIfNoDate('end')#"
 endtime="#nullIfNoTime('end')#"
 interval="#nullIfEmpty(form.interval)#"
 file="#nullIfEmpty(form.file)#"
 serverpassword="#variables.passwordserver#"
 remoteClients="arrayOfClients">
```

## Security Manager access

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="access"
 secType="datasource">
```

## Security Manager setting

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="has.cfx_setting"
 secType="cfx_setting"
 secValue="yes">
```

## Security Manager usage

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="has.cfx_usage"
 secType="cfx_usage"
 secValue="yes">
```

## Security Manager has access to custom tag

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="hasAccess"
 secType="custom_tag"
 secValue="yes">
```

## Security Manager has access to debugging

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="hasAccess"
 secType="debugging"
 secValue="yes">
```

## Security Manager has access to mail

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="hasAccess"
 secType="mail"
 secValue="yes">
```

## Security Manager has access to mapping

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="hasAccess"
 secType="mapping"
 secValue="yes">
```

## Security Manager has access to remote

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="hasAccess"
 secType="remote"
 secValue="yes">
```

## Security Manager has access to search

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="hasAccess"
 secType="search"
 secValue="yes">
```

## Security Manager has access to settings

```html
<cfadmin
 action="securityManager"
 type="web|server"
 password="password"
 returnVariable="hasAccess"
 secType="setting"
 secValue="yes">
```

## Get storage

```html
<cfadmin
 action="storageGet"
 type="web|server"
 password="password"
 key="#url.plugin#"
 returnVariable="data">
```

## Set storage

```html
<cfadmin
 action="storageSet"
 type="web|server"
 password="password"
 key="#url.plugin#"
 value="#data#">
```

## Update the application listener

```html
<cfadmin
 action="updateApplicationListener"
 type="web|server"
 password="password"
 listenerType="#form.type#"
 listenerMode="#form.mode#"
 remoteClients="arrayOfClients">
```

## Update an application setting

```html
<cfadmin
 action="updateApplicationSetting"
 type="web|server"
 password="password"
 scriptProtect="#form.scriptProtect#"
 AllowURLRequestTimeout="#structKeyExists(form,'AllowURLRequestTimeout')andform.AllowURLRequestTimeout#"
 requestTimeout="#CreateTimeSpan(form.request_days,form.request_hours,form.request_minutes,form.request_seconds)#"
 remoteClients="arrayOfClients">
```

## Update a char set

```html
<cfadmin
 action="updateCharset"
 type="web|server"
 password="password"
 templateCharset="#form.templateCharset#"
 webCharset="#form.webCharset#"
 resourceCharset="#form.resourceCharset#"
 remoteClients="arrayOfClients">
```

## Update a component

```html
<cfadmin
 action="updateComponent"
 type="web|server"
 password="password"
 baseComponentTemplate="#form.baseComponentTemplate#"
 componentDumpTemplate="#form.componentDumpTemplate#"
 componentDataMemberDefaultAccess="#form.componentDataMemberDefaultAccess#"
 triggerDataMember="#isDefined('form.triggerDataMember')#"
 useShadow="#isDefined('form.useShadow')#"
 remoteClients="arrayOfClients">
```

## Update the custom tag info

```html
<cfadmin
 action="updateCustomTag"
 type="web|server"
 password="password"
 virtual="#data.virtuals[idx]#"
 physical="#data.physicals[idx]#"
 archive="#data.archives[idx]#"
 primary="#data.primaries[idx]#"
 trusted="#data.trusteds[idx]#"
 remoteClients="arrayOfClients">
```

## Update the custom tag settings

```html
<cfadmin
 action="updateCustomTagSetting"
 type="web|server"
 password="password"
 deepSearch="#isDefined('form.customTagDeepSearchDesc')andform.customTagDeepSearchDescEQtrue#"
 localSearch="#isDefined('form.customTagLocalSearchDesc')andform.customTagLocalSearchDescEQtrue#"
 extensions="#form.extensions#"
 remoteClients="arrayOfClients">
```

## Update the datasource

```html
<cfadmin
 action="updateDatasource"
 type="web|server"
 password="password"
 classname="#driver.getClass()#"
 dsn="#driver.getDSN()#"
 name="#form.name#"
 host="#form.host#"
 database="#form.database#"
 port="#form.port#"
 dbusername="#form.username#"
 dbpassword="#form.password#"
 connectionLimit="#form.connectionLimit#"
 connectionTimeout="#form.connectionTimeout#"
 blob="#getForm('blob',false)#"
 clob="#getForm('clob',false)#"
 allowed_select="#getForm('allowed_select',false)#"
 allowed_insert="#getForm('allowed_insert',false)#"
 allowed_update="#getForm('allowed_update',false)#"
 allowed_delete="#getForm('allowed_delete',false)#"
 allowed_alter="#getForm('allowed_alter',false)#"
 allowed_drop="#getForm('allowed_drop',false)#"
 allowed_revoke="#getForm('allowed_revoke',false)#"
 allowed_create="#getForm('allowed_create',false)#"
 allowed_grant="#getForm('allowed_grant',false)#"
 custom="#custom#"
 remoteClients="arrayOfClients">
```

## Update the debug settings

```html
<cfadmin
 action="updateDebug"
 type="web|server"
 password="password"
 debug="#form.debug#"
 debugTemplate="#form["debugTemplate_"&amp;form.debugtype]#"
 remoteClients="arrayOfClients">
```

## Update the default password

```html
<cfadmin
 action="updateDefaultPassword"
 type="web|server"
 password="password"
 newPassword="#form._new_password#">
```

## Update default security

```html
<cfadmin
 action="updateDefaultSecurity"
 type="web|server"
 password="password"
 setting="#fb('defaultSetting')#"
 file="#form.defaultFile#"
 direct_java_access="#fb('defaultDirectJavaAccess')#"
 mail="#fb('defaultMail')#"
 datasource="#fb('defaultDatasource')#"
 mapping="#fb('defaultMapping')#"
 custom_tag="#fb('defaultCustomTag')#"
 cfx_setting="#fb('defaultCfxSetting')#"
 cfx_usage="#fb('defaultCfxUsage')#"
 debugging="#fb('defaultDebugging')#"
 tag_execute="#fb('defaultTagExecute')#"
 tag_import="#fb('defaultTagImport')#"
 tag_object="#fb('defaultTagObject')#"
 tag_registry="#fb('defaultTagRegistry')#">
```

## Update default security manager

```html
<cfadmin
 action="updateDefaultSecurityManager"
 type="web|server"
 password="password"
 setting="#fb('defaultSetting')#"
 file="#form.defaultFile#"
 direct_java_access="#fb('defaultDirectJavaAccess')#"
 mail="#fb('defaultMail')#"
 datasource="#form.defaultDatasource#"
 mapping="#fb('defaultMapping')#"
 remote="#fb('defaultRemote')#"
 custom_tag="#fb('defaultCustomTag')#"
 cfx_setting="#fb('defaultCfxSetting')#"
 cfx_usage="#fb('defaultCfxUsage')#"
 debugging="#fb('defaultDebugging')#"
 search="#fb('defaultSearch')#"
 scheduled_task="#fb('defaultScheduledTask')#"
 tag_execute="#fb('defaultTagExecute')#"
 tag_import="#fb('defaultTagImport')#"
 tag_object="#fb('defaultTagObject')#"
 tag_registry="#fb('defaultTagRegistry')#"
 access_read="#form.defaultaccess_read#"
 access_write="#form.defaultaccess_write#"
 remoteClients="arrayOfClients">
```

## Update an error

```html
<cfadmin
 action="updateError"
 type="web|server"
 password="password"
 template500="#form["errorTemplate_"&amp;form.errtype500&amp;500]#"
 template404="#form["errorTemplate_"&amp;form.errtype404&amp;404]#"
 statuscode="#isDefined('form.doStatusCode')#"
 remoteClients="arrayOfClients">
```

## Update an extension

```html
<cfadmin
 action="updateExtension"
 type="web|server"
 password="password"
 config="#config#"
 provider="#detail.url#"
 id="#detail.app.id#"
 version="#detail.app.version#"
 name="#detail.app.name#"
 label="#detail.app.label#"
 description="#detail.app.description#"
 category="#detail.app.category#"
 image="#detail.app.image#"
 author="#detail.app.author#"
 codename="#detail.app.codename#"
 video="#detail.app.video#"
 support="#detail.app.support#"
 documentation="#detail.app.documentation#"
 forum="#detail.app.forum#"
 mailinglist="#detail.app.mailinglist#"
 network="#detail.app.network#"
 created="#detail.app.created#">
```

## Update JavaCFX

```html
<cfadmin action="updateJavaCFX"
 type="web|server"
 password="password"
 name="#data.names[idx]#"
 class="#data.classes[idx]#"
 remoteClients="arrayOfClients">
```

## Update mail settings

```html
<cfadmin
 action="updateMailSetting"
 type="web|server"
 password="password"
 logfile="#form.logFile#"
 loglevel="#form.loglevel#"
 spoolEnable="#isDefined("form.spoolenable")andform.spoolenable#"
 spoolInterval="#form.spoolInterval#"
 timeout="#form.timeout#"
 defaultEncoding="#form.defaultEncoding#"
 remoteClients="arrayOfClients">
```

## Update a mapping

```html
<cfadmin
 action="updateMapping"
 type="web|server"
 password="password"
 virtual="#data.virtuals[idx]#"
 physical="#data.physicals[idx]#"
 archive="#data.archives[idx]#"
 primary="#data.primaries[idx]#"
 trusted="#data.trusteds[idx]#"
 toplevel="#data.toplevels[idx]#"
 remoteClients="arrayOfClients">
```

## Update output settings

```html
<cfadmin
 action="updateOutputSetting"
 type="web|server"
 password="password"
 supressWhiteSpace="#isDefined('form.supressWhitespace')andform.supressWhitespace#"
 showVersion="#isDefined('form.showVersion')andform.showVersion#"
 remoteClients="arrayOfClients">
```

## Update Password

```html
<cfadmin
 action="updatePassword"
 type="web|server"
 newPassword="#form.new_password#">
```

## Update Proxy

```html
<cfadmin
 action="updateProxy"
 type="web|server"
 password="password"
 proxyEnabled="true"
 proxyServer="#proxy.server#"
 proxyPort="#proxy.port#"
 proxyUsername="#proxy.username#"
 proxyPassword="#proxy.password#">
```

## Update PSQ

```html
<cfadmin
 action="updatePSQ"
 type="web|server"
 password="password"
 psq="#structKeyExists(form,"psq")andform.psq#">
```

## Update regional settings

```html
<cfadmin
 action="updateRegional"
 type="web|server"
 password="password"
 timezone="#form.timezone#"
 locale="#form.locale#"
 timeserver="#form.timeserver#"
 remoteClients="arrayOfClients">
```

## Update remote client

```html
<cfadmin
 action="updateRemoteClient"
 type="web|server"
 remotetype="web|server"
 password="password"
 attributeCollection="#attrColl#">
```

## Update scope settings

```html
<cfadmin
 action="updateScope"
 type="web|server"
 password="password"
 sessionType="#form.sessionType#"
 localMode="#form.localMode#"
 scopeCascadingType="#form.scopeCascadingType#"
 allowImplicidQueryCall="#isDefined("form.allowImplicidQueryCall")andform.allowImplicidQueryCall#"
 mergeFormAndUrl="#isDefined("form.mergeFormAndUrl")andform.mergeFormAndUrl#"
 sessionTimeout="#CreateTimeSpan(form.session_days,form.session_hours,form.session_minutes,form.session_seconds)#"
 applicationTimeout="#CreateTimeSpan(form.application_days,form.application_hours,form.application_minutes,form.application_seconds)#"
 sessionManagement="#isDefined("form.sessionManagement")andform.sessionManagement#"
 clientManagement="#isDefined("form.clientManagement")andform.clientManagement#"
 clientCookies="#isDefined("form.clientCookies")andform.clientCookies#"
 domaincookies="#isDefined("form.domaincookies")andform.domaincookies#"
 remoteClients="arrayOfClients">
```

## Update updater settings

```html
<cfadmin
 action="UpdateUpdate"
 type="web|server"
 password="password"
 updateType="#form.type#"
 updateLocation="#form.location#"
 remoteClients="arrayOfClients">
```

## Verify a datasource

```html
<cfadmin
 action="verifyDatasource"
 type="web|server"
 password="password"
 name="#data.names[idx]#"
 dbusername="#data.usernames[idx]#"
 dbpassword="#data.passwords[idx]#">
```

## Verify a JavaCFX

```html
<cfadmin
 action="verifyJavaCFX"
 type="web|server"
 password="password"
 name="#data.names[idx]#"
 class="#data.classes[idx]#">
```

## Verify a mail server

```html
<cfadmin
 action="verifyMailServer"
 type="web|server"
 password="password"
 hostname="#data.hosts[idx]#"
 port="#data.ports[idx]#"
 mailusername="#data.usernames[idx]#"
 mailpassword="#data.passwords[idx]#">
```

## Verify a remote client

```html
<cfadmin
 action="verifyRemoteClient"
 type="web|server"
 password="password"
 attributeCollection="#rclient#">
```
