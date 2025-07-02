# ColdFusion Versions

Historical information about ColdFusion Versions and releases.

## Allaire Cold Fusion 1.0 - July 1995

* Database Connectivity
* Tag-based programming templates (DBML)

## Allaire Cold Fusion 1.5 - February 1996

* Email DBMAIL
* CFX Tags C/C++

## Allaire Cold Fusion 2 - November 1996

* CFML (tags were switched from `dbif` to `cfif`)
* Significantly expanded language capabilities
* Advanced function library
* File Upload and Management
* Application Framework (Application.cfm)
* Client Management

## Allaire Cold Fusion 3 - June 1997

* Full text searching and indexing (Verity)
* COM integration
* Template Encryption
* Multidimensional Arrays
* Custom Tags
* Java Form Controls
* Server Scope Added
* Operator short cuts: `GTE` `LTE` `LT` `GT`
* Version 3.1 released November 1997 added RDS and Solaris Support

## Allaire ColdFusion 4.0 - November 1998

* Added cfscript
* [ColdFusion 4 New Tags and Functions](/cf4)

## Allaire ColdFusion 4.5 - November 1999

* `url`, `cgi`, `form`, and `cookie` scopes are now structures
* Added lots of Java Integration features (CFX, `createObject`, `cfservlet`)
* [ColdFusion 4.5 New Tags and Functions](/cf45)

## Macromedia ColdFusion 5 - June 2001

* [ColdFusion 5 Release Notes](https://web.archive.org/web/20151001110848/www.adobe.com/support/coldfusion/releasenotes/5/server/releasenotes_5.htm)
* [ColdFusion 5 Language Reference](https://download.macromedia.com/pub/documentation/en/coldfusion/5/cf5_cfml_ref.pdf)
* UDF's / cfscript `function`
* [ColdFusion 5 New Tags and Functions](/cf5)

## Macromedia ColdFusion 6 - June 2002 (_aka ColdFusion MX or Neo_)

* Rewritten in Java
* Added Components / CFCs
* SOAP Web Services
* [ColdFusion 6 New Tags and Functions](/cf6)

## Macromedia ColdFusion 7 - February 2005 (_Merrimack_)

* Enhanced Crypto
* [ColdFusion 7 New Tags and Functions](/cf7)

## Adobe ColdFusion 8 - July 2007 (_Scorpio_)

* Implicit array and structs, e.g. `x = [1,2,3]`
* [ColdFusion 8 New Tags and Functions](/cf8)
* EOL: Core Support Ended 7/31/2012, Extended Support Ended 7/31/2014

## Adobe ColdFusion 9 - October 2009 (_Centaur_)

* Added Script Components
* Added `local` scope and `var` no longer needs to be at top of function
* Added ORM via Hibernate
* [ColdFusion 9 New Tags and Functions](/cf9)
* EOL: Core Support Ended 12/31/2014, Extended Support Ended 12/31/2016

## Adobe ColdFusion 10 - May 2012 (_Zeus_)

* Ditched JRun, Moved to Tomcat
* [ColdFusion 10 Updates & Hotfixes](https://helpx.adobe.com/coldfusion/kb/coldfusion-10-updates.html)
* [ColdFusion 10 New Tags and Functions](/cf10)
* EOL: Core Support Ended 5/16/2017, Extended Support Ended 5/16/2019

## Adobe ColdFusion 11 - April 2014 (_Splendor_)

* Member functions e.g. `structName.keyExists("k")` instead of `structKeyExists(structName, "k")`
* Full script support for all tags e.g. `cftagName(attribute=value)`
* [ColdFusion 11 Updates & Hotfixes](https://helpx.adobe.com/coldfusion/kb/coldfusion-11-updates.html)
* [ColdFusion 11 New Tags and Functions](/cf11)
* EOL: Core Support Ended 4/30/2019, Extended Support Ended 4/30/2021

## Adobe ColdFusion 2016 - February 2016 (_Raijin_)

* Security Analyzer
* API Manager
* [ColdFusion 2016 Updates & Hotfixes](https://helpx.adobe.com/coldfusion/kb/coldfusion-2016-updates.html)
* [ColdFusion 2016 New Tags and Functions](/cf2016)
* EOL: Core Support Ended 2/17/2021, Extended Support Ended 2/17/2022

## Adobe ColdFusion 2018 - July 2018 (_Aether_)

* Semicolons optional
* Asynchronous Programming [runAsync()](/runasync)
* Typed Arrays `[type][element1,element2,etc]`
* Array Negative Indices `lastItem = a[-1]`
* Array Slices
* Member Functions on String Literals `"string".len()`
* Component Enhancements: Abstract, Final, Default Functions, Covariance
* Performance Monitoring Toolset
* Lockdown Installer
* [ColdFusion 2018 Updates & Hotfixes](https://helpx.adobe.com/coldfusion/kb/coldfusion-2018-updates.html)
* [ColdFusion 2018 New Tags and Functions](/cf2018)
* EOL: Core Support Ended 7/13/2023, Extended Support Ends 7/13/2024

## Adobe ColdFusion 2021 - November 2020 (_Stratus_)

* Added Package Manager (cfpm)
* Cloud Abstraction Functions for Azure and AWS
* NoSQL Support - DynamoDB and MongoDB
* [ColdFusion 2021 Updates & Hotfixes](https://helpx.adobe.com/coldfusion/kb/coldfusion-2021-updates.html)
* [ColdFusion 2021 What's New](https://community.adobe.com/t5/coldfusion/introducing-adobe-coldfusion-2021-release/m-p/11585468)
* [ColdFusion 2021 New Tags and Functions](/cf2021)

## Adobe ColdFusion 2023 - May 2023 (_Fortuna_)

* Google Cloud Platform (GCP) - Storage, Pub/Sub, FireStore
* Central Configuration Server (CCS)
* SSO CF Admin Integration (SAML/LDAP) including CF Admin API updates
* JSON Web Tokens
* Avro & Protocal Buffer Serialization
* New PDF Engine
* Library Updates (Java, Solr, Hibernate)
* Native GraphQL Query support
* [ColdFusion 2023 Updates & Hotfixes](https://helpx.adobe.com/coldfusion/kb/coldfusion-2023-updates.html)
* [ColdFusion 2023 What's New](https://community.adobe.com/t5/coldfusion-discussions/live-introducing-the-2023-release-of-adobe-coldfusion/td-p/13797706)
* [ColdFusion 2023 New Tags and Functions](/cf2023)

## Adobe ColdFusion 2025 - February 2025 (_Project CFNext_)

* New licensing and activation changes (requires annual subscription)
* New spreadsheet and CSV functions
* [Language enhancements](https://helpx.adobe.com/coldfusion/using/whats-new.html#other-language)
* [Charting enhancements](https://helpx.adobe.com/coldfusion/using/whats-new.html#other-language)
* [Deprecations and removals](https://helpx.adobe.com/coldfusion/deprecated-features.html)
* [Release Notes](https://helpx.adobe.com/coldfusion/release-note/coldfusion-2025-release-notes.html)
* Destructuring changes
* Support for final static methods
* Bitwise Operator Support in Query of Queries
* Modulus operator in Query of Queries
* Case-sensitive deserialization
* Changes in Hash function
* Support for compound assignment operators in expressions
* Support for multi-dimensional arrays in JavaCast function
* ArrayInsertAt enhancements
* Password protection in cfspreadsheet
* Changes to scriptProtect property
* Changes to JEE configuration deployment
* Thread management enhancements
* cfthread tag "action" changes
* New attribute cacheMaxIdleTime in cfquery
* FileUpload changes (continueOnError)
* Spreadsheet visibility
* Support for Content-Security-Policy (CSP) in ColdFusion tags
* DirectoryList function enhancements
* getTimeZoneInfo enhancements
* Null coalescing operator
* Multiple exception handling in catch statements
* Trailing comma on last element in arrays
* Deepcopy parameter in the duplicate function
* ListSort function changes
* Additional information on cfdump output of a Java class
* Deserialize JSON to query
* Changes to createObject function and cfobject tag
* Default value of cfproperty can be valid CFML expressions
* cfoauth changes
* cfexchangeconnection changes
* Microsoft Graph: User Store in ColdFusion

Lots of additional historical and version information can be found on the [ColdFusion Wikipedia Page](https://en.wikipedia.org/wiki/Adobe_ColdFusion)
