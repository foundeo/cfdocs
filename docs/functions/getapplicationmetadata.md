# getApplicationMetadata

Returns the application settings that you have specified in the application, either in the Application.cfc or Application.cfm. Contains application settings such as name, sessionManagement, or invokeImplicitAccessor.

```javascript
getApplicationMetadata()
```

```javascript
returns struct
```

## Simple Example

Prints the statements using application meta data.

```javascript
// Fetch application meta data
data = getApplicationMetadata();

// Print application name
writeOutput("Application name is " & (data.name.length() ? data.name : "unspecified") & "<br>");

// Print session timeout
writeOutput("Session timeout is " & data.sessionTimeout & "<br>");

// Print session management
writeOutput("Session management is " & (data.sessionManagement ? "enabled" : "disabled"));
```
