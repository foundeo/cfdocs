# getFunctionList

Returns a struct with keys of the names of functions that are available in CFML.

```javascript
getFunctionList()
```

```javascript
returns struct
```

## Check to see if a function exists

CF11+ Uses the member function of structKeyExists.

```javascript
getFunctionList().keyExists("reMatch")
```

### Expected Result: YES
