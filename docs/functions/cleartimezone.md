# clearTimeZone

Clears the timezone that was set.

```javascript
clearTimeZone()
```

```javascript
returns void
```

## Clear the timezone

Set the timezone and then clear it.

```javascript
setTimeZone("CET");
writeOutput(getTimezoneInfo().timezone & "→ ");
clearTimeZone();
writeOutput(getTimezoneInfo().timezone);
```

### Expected Result: CET→ Etc/UTC
