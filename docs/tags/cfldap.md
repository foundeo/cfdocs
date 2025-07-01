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
| password | string | No |  | Password that corresponds to user name.
 If secure = "CFSSL_BASIC", V2 encrypts the password before
 transmission. |
| action | string | No | query | * query: returns LDAP entry information only. Requires name,
 start, and attributes attributes.
 * add: adds LDAP entries to LDAP server. Requires attributes
 attribute.
 * modify: modifies LDAP entries, except distinguished name dn
 attribute, on LDAP server. Requires dn. See modifyType attribute.
 * modifyDN: modifies distinguished name attribute for LDAP
 entries on LDAP server. Requires dn.
 * delete: deletes LDAP entries on an LDAP server. Requires dn. |
| name | string | No |  | Required if action = "Query"
 Name of LDAP query. The tag validates the value. |
| timeout | numeric | No | 60000 | Maximum length of time, in milliseconds, to wait for LDAP processing.
 Default 60000 |
| maxrows | numeric | No |  | Maximum number of entries for LDAP queries. |
| start | numeric | No |  | Required if action = "Query"
 Distinguished name of entry to be used to start a search. |
| scope | string | No | onelevel | Scope of search, from entry specified in start attribute for
 action = "Query".
 * oneLevel: entries one level below entry.
 * base: only the entry.
 * subtree: entry and all levels below it. |
| attributes | string | No |  | Required if action = "Query", "Add", "ModifyDN", or "Modify"
 For queries: comma-delimited list of attributes to return. For
 queries, to get all attributes, specify "*".
 
 If action = "add" or "modify", you can specify a list of update
 columns. Separate attributes with a semicolon.
 
 If action = "ModifyDN", CFML passes attributes to the
 LDAP server without syntax checking. |
| returnasbinary | string | No |  | CF7+ A comma-delimited list of columns that are to
 be returned as binary values. |
| filter | string | No |  | Search criteria for action = "Query".
 List attributes in the form:
 "(attribute operator value)" Example: "(sn = Smith)" |
| sort | string | No |  | Attribute(s) by which to sort query results. Use a comma
 delimiter. |
| sortcontrol | string | No | asc | Default asc
 * nocase: case-insensitive sort
 * asc: ascending (a to z) case-sensitive sort
 * desc: descending (z to a) case-sensitive sort

 You can enter a combination of sort types; for example,
 sortControl = "nocase, asc". |
| dn | string | No |  | Distinguished name, for update action. Example:
 "cn = Bob Jensen, o = Ace Industry, c = US" |
| startrow | numeric | No |  | Used with action = "query". First row of LDAP query to insert
 into a CFML query. |
| modifytype | string | No | replace | Default replace

 How to process an attribute in a multi-value list.
 * add: appends it to any attributes
 * delete: deletes it from the set of attributes
 * replace: replaces it with specified attributes

 You cannot add an attribute that is already present or that is
 empty. |
| rebind | boolean | No | NO | * Yes: attempt to rebind referral callback and reissue query by
 referred address using original credentials.
 * No: referred connections are anonymous |
| referral | numeric | No |  | Number of hops allowed in a referral. A value of 0 disables
 referred addresses for LDAP; no data is returned. |
| secure | string | No |  | Security to employ, and required information. One option:
 * CFSSL_BASIC

 "CFSSL_BASIC" provides V2 SSL encryption
 and server authentication. |
| separator | string | No | , | Default , (a comma)
 Delimiter to separate attribute values of multi-value
 attributes. Used by query, add, and modify actions, and by
 cfldap to output multi-value attributes.

 For example, if $ (dollar sign), the attributes attribute could
 be "objectclass = top$person", where the first value of
 objectclass is top, and the second value is person. This avoids
 confusion if values include commas. |
| delimiter | string | No | ; | Separator between attribute name-value pairs. Use this
 attribute if:

 * the attributes attribute specifies more than one item, or
 * an attribute contains the default delimiter (semicolon). For
 example: mgrpmsgrejecttext;lang-en

 Used by query, add, and modify actions, and by cfldap to output
 multi-value attributes.

 For example, if $ (dollar sign), you could specify
 "cn = Double Tree Inn$street = 1111 Elm; Suite 100 where the
 semicolon is part of the street value. |
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
