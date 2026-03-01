# configImport

Imports a configuration based on the CFConfig format.

```javascript
configImport(path path, [, type] [, password], [, params], [, charset])
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| path | any | Yes | false | Path to the .CFConfig.json file or the data itself as a Struct. |
| type | string | No | server | Config Context to manipulate, server or web context. |
| password | string | No | false | password to access the configuration, depending on the value set for the attribute type. |
| params | struct | No | false | placeholder parameters to use as actual data for the placeholders inside the configuration. |
| charset | string | No | false | charset to use to read the .CFConfig file, if not defined, Lucee will use the default resource charset. |

## Example for importing a configuration

Imports a configuration based on the CFConfig format from a file using a password stored in an environment variable.

```javascript
configImport(
	path: expandPath('/config/config.json'),
	type: 'server',
	password: SERVER.system.environment.PASSWORD
);
```
