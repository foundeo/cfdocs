# cfthread

The cfthread tag enables multithreaded programming in ColdFusion.
 Threads are independent streams of execution, and multiple threads
 on a page can execute simultaneously and asynchronously, letting you
 perform asynchronous processing in CFML. CFML code within the cfthread
 tag body executes on a separate thread while the page request thread
 continues processing without waiting for the cfthread body to finish.
 You use this tag to run or end a thread, temporarily stop thread execution,
 or join together multiple threads.

### Syntax

```html
<cfthread>
```

### Script Syntax

```javascript
thread action="" name="";
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The name of the thread to which the action applies:<br /> terminate The name of the thread to stop.<br /> join The name of the thread or threads to join to the current thread.<br /> To specify multiple threads, use a comma-delimited list.<br /> run The name to use to identify the thread being created. (required) |
| action | string | No |  | The action to take, one of the following values:<br /> join Makes the current thread wait until the thread or threads<br /> specified in the name attribute complete processing, or until the<br /> period specified in the timeout attribute passes, before continuing<br /> processing. If you don't specify a timeout and thread you are joining<br /> to doesn't finish, the current thread also cannot finish processing.<br /><br /> run Creates a thread and starts it processing.<br /><br /> sleep Suspends the current threads processing for the time specified<br /> by the duration attribute. This action is useful if one thread must wait<br /> for another thread to do processing without joining the threads.<br /><br /> terminate Stops processing of the thread specified in the name attribute.<br /> If you terminate a thread, the thread scope includes an ERROR metadata<br /> structure with information about the termination. (optional, default=run) |
| duration | string | No |  | (sleep) The number of milliseconds for which to suspend thread processing. (required) |
| priority | string | No |  | The priority level at which to run the thread.<br /> The following values are valid:<br /> HIGH, LOW, NORMAL<br /> Higher priority threads get more processing time than lower priority<br /> threads. Page-level code, the code that is outside of cfthread tags,<br /> always has NORMAL priority. (optional, default=NORMAL) |
| timeout | numeric | No |  | The number of milliseconds that the current thread waits for<br /> the thread or threads being joined to finish. If any thread does not<br /> finish by the specified time, the current thread proceeds.<br /> If the attribute value is 0, the default, the current thread continues<br /> waiting until all joining threads finish. If the current thread is the<br /> page thread, the page continues waiting until the threads are joined,<br /> even if you specify a page timeout. (optional, default=0) |

## Script Syntax

CF9+

```html
thread action="run" name="myThread" {
 // do single thread stuff 
} 
thread action="join" name="myThread,myOtherThread";
```

## Tag Syntax

```html
<cfthread action="run" name="myThread">
 <!--- Do single thread stuff ---> 
 </cfthread> 
 <cfthread action="join" name="myThread,myOtherThread" />
```
