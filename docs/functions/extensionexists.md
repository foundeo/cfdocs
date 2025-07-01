# extensionExists

This function checks if a specific extension exists.

```javascript
extensionExists(id, version)
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| id | string | Yes |  | UUID of the Extension. |
| version | string | No |  | Version of the Extension. |

## Simple ExtensionExists() Example

This example shows a very basic usage of the function to determine if a function exists.

```javascript
dump(extensionExists("99A4EF8D-F2FD-40C8-8FB8C2E67A4EEEB6"));
```

## Example of ExtensionExists() Using Version Attribute

This example was created by Michael Born to verify that a specific version of an Extension exists.

```javascript
dump(extensionExists("99A4EF8D-F2FD-40C8-8FB8C2E67A4EEEB6","7.2.2.jre8"));
```
