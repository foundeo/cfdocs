# getTimeZone

Returns the time zone for the current request.

```javascript
getTimeZone()
```

```javascript
returns string
```

## What is the current time zone that's set?

Set the time zone, then retrieve it.

```javascript
setTimeZone("Etc/UTC");
writeOutput(getTimeZone().timezone);
```

### Expected Result: Etc/UTC
