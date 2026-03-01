# isinthread

Determines whether the executing code is inside a cfthread or not.

```javascript
isinthread()
```

```javascript
returns boolean
```

## isinthread Example

Check if the code is running inside a cfthread.

```javascript
request.inthread = false;
writeOutput(isInThread());
thread action="run" name="inThread" {
 request.inthread = isInThread();
}
sleep(1000);
writeOutput(request.inthread)
```

### Expected Result: falsetrue
