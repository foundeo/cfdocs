# APPLICATION Scope

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

Adobe `APPLICATION` scope Documentation: http://help.adobe.com/en_US/ColdFusion/9.0/Developing/WSc3ff6d0ea77859461172e0811cbec0c35c-7fec.html
