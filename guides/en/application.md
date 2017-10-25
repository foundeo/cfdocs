# Application.cfc

## Example: Full Application/Request Lifecycle Methods
This shows all of the built-in Application.cfc methods.
[Application variables](https://wikidocs.adobe.com/wiki/display/coldfusionen/Application+variables) are explained in Application.cfc doc.

```ColdFusion
	component {
		this.name = "YourAppName" & hash(getCurrentTemplatePath()); 
		this.applicationTimeout = createTimeSpan(1,0,0,0); 
		this.sessionTimeout = createTimeSpan(1,0,0,0); 
		this.sessionManagement = true; 
		this.setClientCookies = false; 

		public boolean function onApplicationStart() { 
			return true; 
		} 

		public void function onApplicationEnd(struct applicationScope={}) { 
			return; 
		} 

		public void function onSessionStart() { 
			return; 
		} 

		public void function onSessionEnd(required struct sessionScope, struct applicationScope={}) { 
			return; 
		} 

		public boolean function onRequestStart(required string targetPage) { 
			return true; 
		} 

		public void function onRequest(required string targetPage) { 
			include arguments.targetPage; 
			return; 
		} 

		public void function onCFCRequest(string cfcname, string method, struct args) { 
			return; 
		} 

		public void function onRequestEnd() { 
			return; 
		} 

		public void function onAbort(required string targetPage) { 
			return; 
		} 

		public void function onError(required any exception, required string eventName) { 
			return; 
		} 

		public boolean function onMissingTemplate(required string targetPage) { 
			return true; 
		} 
	}
```


	
## Lifecycle Methods explained
| Method             | Description                                                          |
|--------------------|----------------------------------------------------------------------|
| onApplicationStart | First function run when ColdFusion receives the first request for a page in the application.  |
| onApplicationEnd   | Last function run when Application times out or server is shut down. |
| onSessionStart     | Run when first setting up a session. |
| onSessionEnd       | Run when a session ends. |
| onRequestStart     | First page-processing function run when a page request starts. Return False to prevent ColdFusion from processing the request. |
| onRequest          | Runs when a request starts, after the onRequestStart event handler. This method is optional. If you implement this method, it must explicitly call the requested page to process it. |
| onCFCRequest       | Intercepts any HTTP or AMF calls to an application based on CFC request. Whereas onRequest handles only requests made to ColdFusion templates, this function controls Ajax, Web Service, and Flash Remoting requests. |
| onRequestEnd       | Runs at the end of a request, after all other CFML code. |
| onAbort            | Runs when you execute the CFML tag cfabort or cfscript "abort". If showError attribute is specified in cfabort, onError method is executed instead of onAbort. When using cfabort, cflocation, or cfcontent tags, the onAbort method is invoked instead on onRequestEnd. |
| onError            | Runs when an uncaught exception occurs in the application. This method overrides any error handlers that you set in the ColdFusion Administrator or in cferror tags. It does not override try/catch blocks. |
| onMissingTemplate  | Runs when a request specifies a non-existent CFML page. True, or no return value, specifies that the event has been processed. If the function returns false, ColdFusion invokes the standard error handler. |

## APPLICATION Scope

The `APPLICATION` scope is used for setting the information at application level, i.e. 

* Application variables are usually set when the application starts, for example with the onApplicationStart event. 
* Information stored in an application variable is available from anywhere within the application (any URI requested under the given Application.cfc or Application.cfm)
* The values of variables declared in `application` scope typically do not changes throughout the lifecycle of the application.
* The default timeout of an application scope is 2 days, but can be changed in the Administrator or by setting `this.applicationTimeout` in the Application.cfc file.


### Example using onApplicationStart:

	component {
		this.name = "myApplication";

		function onApplicationStart() {
			application.something = "otherthing";
		}
	}

### Locking Concerns

Since variables within the application scope can be accessed by multiple threads at once (simultaneous requests) you should consider if locking is necessary.

In very early versions of ColdFusion (pre CF6) locking was required when reading / writing to shared scope such as the application scope. In modern versions of ColdFusion or Lucee, in most cases locking is taken care of automatically and you do not need to use cflock. 

One case that does not require locking is if you set your `application` variables in `onApplicationStart` and do not modify them (they are only read, except for in onRequestStart).

You should take care not to lock unnecessairly as it may create a performance bottle neck.

One case where you should use locking is in the event that you are using the application scope on both sides of the assignment. For example:

	application.counter = application.counter + 1;

The above example requires locking to ensure that a concurrent thread does not corrupt the value of the counter.

	lock scope="application" timeout="1" type="exclusive" { {
		application.counter = application.counter + 1;
	}

Keep in mind that if the application scoped variable is written to at any time other than onApplicationStart then there is a possibility that the value of the application variable could change mid request. If this is a problem then consider using cflock to ensure a consistant value. 

