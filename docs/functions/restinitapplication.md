# restInitApplication

Scans all the CFCs in dirPath, and places those that are REST enabled at the serviceMapping URL. Requires the web admin password under Lucee.

```javascript
restInitApplication(dirPath,serviceMapping,default,password)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| dirPath | string | Yes |  | The path to a folder of CFCs to scan. Should be a full file system path |
| serviceMapping | string | Yes |  | The root of the exposed API, minus the server-wide prefix. E.g. to expose at '/rest/api/' you should set this to 'api'. |
| default | string | No |  | If the mapping is a default mapping set this to true (Lucee only) |
| password | string | Yes |  | The password for the web admin (Lucee only) |

## Recreate the CFCs available at /rest/api (Lucee)

```javascript
restInitApplication( dirPath=expandPath('./cfcs/api/'),serviceMapping='api',password='password' )
```
