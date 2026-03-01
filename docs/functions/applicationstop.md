# applicationStop

Stops current application

```javascript
applicationStop()
```

```javascript
returns void
```

## Basic applicationStop usage.

Halt the application.

```javascript
var applicationRequiresHalt = true;
if(applicationRequiresHalt) applicationStop();
writeOutput("Still Running");
```

### Expected Result: // We don't expect anything to happen after the application has been stopped.
