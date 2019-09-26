# Server Scope

The `server` [scope](/scopes) can hold variables that exist, and are accessible to all applications on the server.

## Builtin Server Scope Variables

### `server.coldfusion`

A struct containing serveral keys such as `productversion` `productname` `rootdir` `updatelevel`

This is populated on both ACF and Lucee, `productname` is `Lucee` or `ColdFusion`.

### `server.os`

A struct containing info about the operating system:

* `server.os.name` - The OS Name, eg `UNIX` `Mac OS X` `Windows`
* `server.os.version` - The OS Version
* `server.os.arch` - The CPU architecture, eg `amd64`
* `server.os.additionalinformation` - Additional OS info, eg : `'Linux`


### `server.system.environment`

Lucee5+ CF2018+ A struct containing environment variables.

### `server.system.properties`

Lucee5+ CF2018+ A struct containing java system properties. 

### `server.lucee`

Lucee4.5+ Info specific to lucee, eg `server.lucee.version` - useful for checking if you are running on lucee:

```
if ( server.keyExists("lucee") ) {
	//you are on lucee
}
```

### `server.separator`

Lucee4.5+ a struct with keys `file` `line` and `path` for OS specific/preferred separators. 
