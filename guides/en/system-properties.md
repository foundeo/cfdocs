# ColdFusion Java System Properties

There are several ColdFusion Java System properties that have been created for various reasons. Usually they exist to work around bugs that were fixed but then cause a backwards compatibility change.

## `-Dcoldfusion.udf.reuseTagInstances`

This setting was added in CF2016+ to address issues:

* Premature termination of the loop when invoking a UDF recursively while using `cfloop` to loop over a query that is defined as a var function local variable
* Incorrect struct modification issue when the `cfhttp` tag is using a struct that has been passed to it via the `cfthread` tag

The ColdFusion 2016 [release notes](https://helpx.adobe.com/coldfusion/release-note/coldfusion-2016-release-notes.html) instruct you to set `-Dcoldfusion.udf.reuseTagInstances=false` if you see those issues.

## `-Dhttps.protocols`

Set this to restrict the SSL and or TLS protocols that will be used by tags such as `cfhttp`. The possible values are: SSLv3, TLSv1, TLSv1.1, TLSv1.2 and can be combined as a comma separated list.

For CF10 update 18 and CF11+ [Read more](https://web.archive.org/web/20200927173340/www.trunkful.com/index.cfm/2014/12/8/Preventing-SSLv3-Fallback-in-ColdFusion)

## `-Dcoldfusion.disablejsafe`

Set this to `true` if you want to disable the RSA BSafe CryptoJ JCE (enterprise edition only), and use the default Oracle JCE (or another provider).

## `-Dcoldfusion.jsafe.defaultalgo`

The setting controls the default algorithm for random number generation in CF8+ Enterprise. It is set to `FIPS186Random`

## `-Dcoldfusion.enablefipscrypto`

Set this to `true` to disable algorithms that are not FIPS approved, such as DESX, RC5, and MD5PRNG.

## `-Dcoldfusion.sessioncookie.httponly`

Applies to CF9.0.1 only. When this setting is set to true your `CFID` and `CFTOKEN` cookies will have the `httponly` flag set. Does not apply to `JSESSIONID` cookies.

For CF10+ Use `this.sessioncookie.httponly` setting in Application.cfc or ColdFusion Administrator.

## `-Dcoldfusion.session.protectfixation`

ColdFusion security hotfix APSB11-04 added protection from session fixation. When you set this setting to `false` it disables the session fixation protection. Please [read about session fixation](https://www.petefreitag.com/item/815.cfm) before changing this setting.

## `-Dcoldfusion.fckupload`

ColdFusion 8 security hotfix hf801-77218 added this setting to block any request to `/fckeditor/editor/filemanager/` unless this setting is set to `true`. [Read more](https://www.petefreitag.com/item/718.cfm).

## `-Dcoldfusion.ignoredbvarname`

Introduced with ColdFusion 11 Update 4. Used to disable the `dbvarname` attribute in the `cfprocparam` tag. This attribute was deprecated with ColdFusion MX and subsequently reintroduced with ColdFusion 11 Update 3. See [bug 3919479](https://tracker.adobe.com/#/view/CF-3919479) for further details.

## `-Dcoldfusion.application.recur_resolve.include`

Introduced with ColdFusion 2018. When set to `true`, `cfinclude` inside Application.cfc will correctly resolve paths relative from the included file. By default, Application.cfc is unable to resolve nested `cfinclude`s from outside the directory where the file resides.

## `-Dcoldfusion.query.filter.mutateinputquery`

Introduced with ColdFusion 2021. It defaults to `false` but when set to `true` the `queryFilter` function will mutate the input query as it did in ColdFusion 2016 and 2018. See [bug 4203366](https://tracker.adobe.com/#/view/CF-4203366) for further details.

## `-Dcoldfusion.datemask.useDasdayofmonth`

Introduced with ColdFusion 2021 Update 1. It defaults to `false` but when set to `true` and the mask contains `D` (uppercase D), the mask treats the value as `d` (lowercase d), day of the month. Hence, `dateformat(now(), "mm-D-yyyy")` is the same as `dateformat(now(), "mm-d-yyyy")` when flag is set to `true`. See [Adobe article](https://helpx.adobe.com/coldfusion/kb/dateformat-function-coldfusion-2021.html) for more details.

## `-Dcoldfusion.searchimplicitscopes`

Introduced in March 2024 via ColdFusion 2021 Update 13 and ColdFusion 2023 Update 7, and on these versions defaults to `false`. When set to `true` unscoped variable resolution will traverse through all the implicit scopes such as `form`, `url`, `cgi`, `cookie`, when `false` the scope needs to be specified. This change was introduced as part of a security hotfix: [APSB24-14](https://helpx.adobe.com/security/products/coldfusion/apsb24-14.html) and Adobe recommends keeping it to `false`. More [info about searchImplicitScopes here](https://www.petefreitag.com/blog/cf-searchimplicitscopes/)

## `-Dcoldfusion.encryption.useCFMX_COMPATAsDefault`

Added in June 2024 via ColdFusion 2021 Update 14 and CF2023 update 8. Defaults to `false`, when `true` it uses `CFMX_COMPAT` as the default algorithm for the `encrypt()` `decrypt()` and `hash()` (uses MD5) functions.

## Standard Java System Properties

The following system properties apply to the java runtime:

* [Java Networking System Properties](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/net/doc-files/net-properties.html)
* [Java Crypto Related System and Security Properties](https://www.java.com/en/configure_crypto.html)
* [Java System Property Reference Guide](https://system-properties.com/)
