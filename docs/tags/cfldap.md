# cfldap

Provides an interface to a Lightweight Directory Access Protocol
 (LDAP) directory server, such as the Netscape Directory Server.

### Syntax

```html
<cfldap server="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfldap(server="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| server | string | Yes |  | Host name or IP address of LDAP server. |
| port | numeric | No | 389 | Port of the LDAP server (default 389). |
| username | string | No |  | The User ID. Required if secure = "CFSSL_BASIC" |
| password | string | No |  | Password that corresponds to user name.<br /> If secure = "CFSSL_BASIC", V2 encrypts the password before<br /> transmission. |
| action | string | No | query | * query: returns LDAP entry information only. Requires name,<br /> start, and attributes attributes.<br /> * add: adds LDAP entries to LDAP server. Requires attributes<br /> attribute.<br /> * modify: modifies LDAP entries, except distinguished name dn<br /> attribute, on LDAP server. Requires dn. See modifyType attribute.<br /> * modifyDN: modifies distinguished name attribute for LDAP<br /> entries on LDAP server. Requires dn.<br /> * delete: deletes LDAP entries on an LDAP server. Requires dn. |
| name | string | No |  | Required if action = "Query"<br /> Name of LDAP query. The tag validates the value. |
| timeout | numeric | No | 60000 | Maximum length of time, in milliseconds, to wait for LDAP processing.<br /> Default 60000 |
| maxrows | numeric | No |  | Maximum number of entries for LDAP queries. |
| start | numeric | No |  | Required if action = "Query"<br /> Distinguished name of entry to be used to start a search. |
| scope | string | No | onelevel | Scope of search, from entry specified in start attribute for<br /> action = "Query".<br /> * oneLevel: entries one level below entry.<br /> * base: only the entry.<br /> * subtree: entry and all levels below it. |
| attributes | string | No |  | Required if action = "Query", "Add", "ModifyDN", or "Modify"<br /> For queries: comma-delimited list of attributes to return. For<br /> queries, to get all attributes, specify "*".<br /> <br /> If action = "add" or "modify", you can specify a list of update<br /> columns. Separate attributes with a semicolon.<br /> <br /> If action = "ModifyDN", CFML passes attributes to the<br /> LDAP server without syntax checking. |
| returnasbinary | string | No |  | CF7+ A comma-delimited list of columns that are to<br /> be returned as binary values. |
| filter | string | No |  | Search criteria for action = "Query".<br /> List attributes in the form:<br /> "(attribute operator value)" Example: "(sn = Smith)" |
| sort | string | No |  | Attribute(s) by which to sort query results. Use a comma<br /> delimiter. |
| sortcontrol | string | No | asc | Default asc<br /> * nocase: case-insensitive sort<br /> * asc: ascending (a to z) case-sensitive sort<br /> * desc: descending (z to a) case-sensitive sort<br /><br /> You can enter a combination of sort types; for example,<br /> sortControl = "nocase, asc". |
| dn | string | No |  | Distinguished name, for update action. Example:<br /> "cn = Bob Jensen, o = Ace Industry, c = US" |
| startrow | numeric | No |  | Used with action = "query". First row of LDAP query to insert<br /> into a CFML query. |
| modifytype | string | No | replace | Default replace<br /><br /> How to process an attribute in a multi-value list.<br /> * add: appends it to any attributes<br /> * delete: deletes it from the set of attributes<br /> * replace: replaces it with specified attributes<br /><br /> You cannot add an attribute that is already present or that is<br /> empty. |
| rebind | boolean | No | NO | * Yes: attempt to rebind referral callback and reissue query by<br /> referred address using original credentials.<br /> * No: referred connections are anonymous |
| referral | numeric | No |  | Number of hops allowed in a referral. A value of 0 disables<br /> referred addresses for LDAP; no data is returned. |
| secure | string | No |  | Security to employ, and required information. One option:<br /> * CFSSL_BASIC<br /><br /> "CFSSL_BASIC" provides V2 SSL encryption<br /> and server authentication. |
| separator | string | No | , | Default , (a comma)<br /> Delimiter to separate attribute values of multi-value<br /> attributes. Used by query, add, and modify actions, and by<br /> cfldap to output multi-value attributes.<br /><br /> For example, if $ (dollar sign), the attributes attribute could<br /> be "objectclass = top$person", where the first value of<br /> objectclass is top, and the second value is person. This avoids<br /> confusion if values include commas. |
| delimiter | string | No | ; | Separator between attribute name-value pairs. Use this<br /> attribute if:<br /><br /> * the attributes attribute specifies more than one item, or<br /> * an attribute contains the default delimiter (semicolon). For<br /> example: mgrpmsgrejecttext;lang-en<br /><br /> Used by query, add, and modify actions, and by cfldap to output<br /> multi-value attributes.<br /><br /> For example, if $ (dollar sign), you could specify<br /> "cn = Double Tree Inn$street = 1111 Elm; Suite 100 where the<br /> semicolon is part of the street value. |
| clientcert | string | No |  | CF11+ A file path to a client certificate. |
| clientcertpassword | string | No |  | CF11+ The password for the client certificate file. |
| usetls | boolean | No | false | CF11+ Indicates that the connection should be made using transport layer security. |

## Runnable LDAP Query Example

Queries the debian developer LDAP server and returns users with a surname of Smith

```html
<cfldap server="db.debian.org" 
       action="query"
       name="results"
       start="dc=debian,dc=org"
       filter="sn=Smith"
       attributes="cn,sn,givenName,mail,st,l,ou">
	   
<cfdump var="#results#">
```

## Lookup a User in Active Directory Example

This example gets the user's data from active directory and displays a thumbnail image stored in active directory.

```html
<cfldap
	server="ServerName"
	port=636
	action="QUERY"
	name="qLDAP"
	secure="CFSSL_BASIC"
	username="mydomain\#encodeForLDAP(ldapUsername)#"
	password="#ldapPassword#"
	start="dc=MYDOMAIN,dc=MYTLD"
	attributes="cn,userPrincipalName,title,mail,thumbnailPhoto"
	filter="(sAMAccountName=#encodeForLDAP(username)#)"> 

<cfoutput><img src="data:image/jpeg;base64,#binaryEncode(qLDAP.thumbnailPhoto,"Base64")#" /></cfoutput>
```

## Script Syntax to Authenticate a User via Active Directory

This is an example of using `cfldap` to authenticate a user against an Active Directory server.  The server or domain CA certificate must be imported into the cacerts java keystore for `security="CFSSL_BASIC"` to work.

```html
cfldap(
	server = "ServerName",
	port = 636,
	action = "QUERY",
	name = "qLDAPLookup",
	secure = "CFSSL_BASIC",
	username = "MYDOMAIN\#encodeForLDAP(arguments.username)#",
	password = arguments.password,
	start = "dc=MYDOMAIN,dc=MYTLD",
	attributes = "cn,userPrincipalName,title,mail",
	timeout = "10",
	filter = "(sAMAccountName=#encodeForLDAP(arguments.username)#)"
);

if (qLDAPLookup.recordCount) {
	userAuthenticated = true;
}
```
