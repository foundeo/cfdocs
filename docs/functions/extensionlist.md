# extensionList

This function returns a query object containing a list of installed extensions. It takes no arguments.

```javascript
extensionList()
```

```javascript
returns query
```

## Simple ExtensionList() Example

This example shows a very basic usage of the function to get a list of available extensions.

```javascript
dump(extensionList());
```

## Complex ExtensionList() Example

This example was created by Michael Born to check the version of an installed extension.

```javascript
var extension = extensionList().filter( ( extension ) => extension.name == "Hibernate ORM Engine" );
if ( !extension.recordCount ){
throw( "Hibernate extension is not installed; please install it now." );
} else {
var installedExtensionVersion = extension.version;
writeOutput( "You have the Hibernate extension version " & installedExtensionVersion & " installed." );
}
```
