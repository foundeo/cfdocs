# getProfileSections

Gets all the sections of an initialization file.
Returns a struct whose format is as follows:
- Each initialization file section name is a key in the struct
- Each list of entries in a section of an initialization file is a value in the struct

```javascript
getProfileSections(path [,encoding])
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| path | string | Yes |  | Absolute path of initialization file |  |
| encoding | string | No |  | CF11+ Encoding of the initialization (ini) file | /Users/garethedwards/development/github/cfdocs/docs/functions/getprofilesections.md|utf-16 |
