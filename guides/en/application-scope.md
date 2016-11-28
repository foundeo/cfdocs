# `APPLICATION` Scope

The `APPLICATION` scope is used for setting the information at application level, i.e. 

* Application variables are set when the application starts.  
* Information is set in the variables with application scope, mostly in the application.cfc
* Information stored in an application variable is available from anywhere within the application
* The values of variables declared in `application` scope never changes throughout the lifecycle of the application
* Information like datasource for connecting the database, email server information, etc. is stored in the application scope since this information remains the same throughout the application.

### EXAMPLE : 
`<cfset application.myEmailServer = "127.0.0.1" />`

### CF Script EXAMPLE : 
`<cfscript>`
`application myEmailServer = "127.0.0.1";`
`</cfscript>`


Adobe `APPLICATION` scope Documentation: http://help.adobe.com/en_US/ColdFusion/9.0/Developing/WSc3ff6d0ea77859461172e0811cbec0c35c-7fec.html
