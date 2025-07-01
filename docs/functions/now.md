# now

 Gets the current date and time of the computer running
 the CFML server.

```javascript
now()
```

```javascript
returns date
```

## Using now() in Script

Let's display the current server datetime using script.

```javascript
writeOutput( 'The current date and time is: ' & now() );
```

### Expected Result: The current date and time is: {ts '2014-03-19 15:27:42'}

## Using now() in Tagged CFML

Let's display the current server datetime using tagged CFML.

```javascript
<p>The current date and time is: <cfoutput>#now()#</cfoutput></p>
```

### Expected Result: The current date and time is: {ts '2014-03-19 15:27:42'}
