# Application.cfc

## Example: Full Application/Request Lifecycle Methods
This shows all of the built-in Application.cfc methods.

	component { 
		/* 
			Application variables 
			https://wikidocs.adobe.com/wiki/display/coldfusionen/Application+variables 
		*/ 
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
	
## Lifecycle Methods explained
| Method                  | Description                                                                                                                                                                                                                                                              |
|-------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [onApplicationStart][1] | First function run when ColdFusion receives the first request for a page in the application.                                                                                                                                                                             |
| [onApplicationEnd][2]   | Last function run when Application times out or server is shut down.                                                                                                                                                                                                     |
| [onSessionStart][3]     | Run when first setting up a session.                                                                                                                                                                                                                                     |
| [onSessionEnd][4]       | Run when a session ends.                                                                                                                                                                                                                                                 |
| [onRequestStart][5]     | First page-processing function run when a page request starts. Return False to prevent ColdFusion from processing the request.                                                                                                                                           |
| [onRequest][6]          | Runs when a request starts, after the onRequestStart event handler. This method is optional. If you implement this method, it must explicitly call the requested page to process it.                                                                                     |
| [onCFCRequest][7]       | Intercepts any HTTP or AMF calls to an application based on CFC request. Whereas onRequest handles only requests made to ColdFusion templates, this function controls Ajax, Web Service, and Flash Remoting requests.                                                    |
| [onRequestEnd][8]       | Runs at the end of a request, after all other CFML code.                                                                                                                                                                                                                 |
| [onAbort][9]            | Runs when you execute the CFML tag cfabort or cfscript "abort". If showError attribute is specified in cfabort, onError method is executed instead of onAbort. When using cfabort, cflocation, or cfcontent tags, the onAbort method is invoked instead on onRequestEnd. |
| [onError][10]           | Runs when an uncaught exception occurs in the application. This method overrides any error handlers that you set in the ColdFusion Administrator or in cferror tags. It does not override try/catch blocks.                                                              |
| [onMissingTemplate][11] | Runs when a request specifies a non-existent CFML page. True, or no return value, specifies that the event has been processed. If the function returns false, ColdFusion invokes the standard error handler.                                                             |

[1]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onApplicationStart
[2]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onApplicationEnd
[3]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onSessionStart
[4]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onSessionEnd
[5]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onRequestStart
[6]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onRequest
[7]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onCFCRequest
[8]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onRequestEnd
[9]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onAbort
[10]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onError
[11]: https://wikidocs.adobe.com/wiki/display/coldfusionen/onMissingTemplate
