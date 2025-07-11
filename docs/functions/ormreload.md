# ormReload

Reinitializes ORM for the application. If you make any change to the persistent metadata of the CFCs, then you might want to reload the ORM.  Returns ORM session factory instance

```javascript
ormReload()
```

```javascript
returns void
```

## Reload ORM by calling ormReload onRequestStart

Reloads the ORM of an application when `?ormreload` is in the URL. This is recommended ONLY for development and should be removed from production.

```javascript
component {
	this.name = hash(getCurrentTemplatePath());
	this.datasource = "somedatasourceORM";
	// turn on ORM for this application
	this.ormenabled = true;
	public boolean function onRequestStart(required string targetPage) {
		// if ormreload is in the URL, then reload ORM
		if (structKeyExists(url,"ormreload")) {
			ormReload();
		}
		return true;
	}
}
```

### Expected Result: string
