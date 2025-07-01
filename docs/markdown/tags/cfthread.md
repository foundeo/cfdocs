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
