# getTickCount

 Returns the current value of an internal millisecond timer.

```javascript
getTickCount()
```

```javascript
returns numeric
```

## Script Syntax

Outputs the current value of the internal millisecond timer

```javascript
writeOutput( getTickCount() )
```

## A simple timer

Outputs the millisecond difference between a starting point and end point

```javascript
start = getTickCount(); 
 sleep( 1000 ); 
 writeOutput( getTickCount() - start );
```

### Expected Result: 1000 (note: may be off by a few ms depending on the environment)
