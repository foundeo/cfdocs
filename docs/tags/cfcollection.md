# cfcollection

Creates, registers, and administers Verity search engine
 collections.

 A collection that is created with the cfcollection tag is
 internal. A collection created any other way is external.

 A collection that is registered with CFML using the
 cfcollection tag or registered with the K2 Server by editing
 the k2server.ini file is registered. Other collections are
 unregistered.

### Syntax

```html
<cfcollection action="categorylist">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfcollection(action="categorylist");
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| action | string | Yes | list | categorylist: retrieves categories from the collection and<br /> indicates how many documents are in each one. Returns<br /> a structure of structures in which the category<br /> representing each substructure is associated with a<br /> number of documents. For a category in a category tree,<br /> the number of documents is the number at or below that<br /> level in the tree.<br /> create: registers the collection with CFML.<br /> - If the collection is present: creates a map to it<br /> - If the collection is not present: creates it<br /> delete: unregisters a collection.<br /> - If the collection was registered with action = create:<br /> deletes its directories<br /> - If the collection was registered and mapped: does not<br /> delete collection directories<br /> optimize: optimizes the structure and contents of the<br /> collection for searching; recovers space.<br /> list: returns a query result set, named from the name<br /> attribute value, of the attributes of the collections<br /> that are registered by CFML and K2 Server.<br /> map: creates a map to the collection. It is not necessary<br /> to specify this value. Deprecated in CF7.<br /> repair: fixes data corruption in a collection. Deprecated in CF7. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfcollection.md|repair |
| collection | string | No |  | A collection name. The name can include spaces |  |
| path | string | No |  | Absolute path to a Verity/Lucene/SOLR collection. |  |
| language | string | No | english | Options are listed in Usage section. Requires the<br /> appropriate (European or Asian) Verity Locales language<br /> pack. |  |
| name | string | No |  | Name for the query results returned by the list action. |  |
| categories | boolean | No | NO | Used only for creating a collection:<br /> - true: This collection includes support for categories.<br /> - false: This collection does not support categories. Default. |  |
| engine | string | No | verity | Search engine | /Users/garethedwards/development/github/cfdocs/docs/tags/cfcollection.md|solr |

## Example of using the cfcollection function to create a collection

In this example we demonstrate using the cfcollection function to build a function which first checks if a collection already exists (and has records), and if not, creates the collection.

```html
public boolean function createCollection( required string collectionName ) {
	// var scope a variable to check if the collection already exists
	var collectionExists = '';

	// use cfcollection to get a list of documents from the passed in collection
	cfcollection( action = 'list', collection = arguments.collectionName, name = 'collectionExists' );

	// see if the collection has any records
	if( !collectionExists.recordCount ) {
		// it does not, but wrap create in a try in case it exists but is merely empty
		try {
			// use cfcollection to create a new collection
			cfcollection( action = 'create', collection = arguments.collectionName );
		// catch if this collection already exists
		} catch (any e) {
			// it does, return false
			return false;
		}
	// otherwise
	} else {
		// collection already has records (and thus exists), return false
		return false;
	}

	// the collection was successfully created, return true
	return true;
}
```

### Expected Result: True, if the collection was created; False, if the collection already exists

## Example of using the <cfcollection> tag to create a collection

In this example we demonstrate using the &lt;cfcollection&gt; tag to build a function which first checks if a collection already exists (and has records), and if not, creates the collection.

```html
<cffunction access="public" returntype="boolean" name="createCollection">
	<cfargument name="collectionName" type="string" required="true" />

	<!--- var scope a variable to check if the collection already exists --->
	<cfset var collectionExists = ""; />

	<!--- use cfcollection to get a list of documents from the passed in collection --->
	<cfcollection action="list" collection="#arguments.collectionName#" name="collectionExists" />

	<!--- see if the collection has any records --->
	<cfif NOT collectionExists.recordCount>
		<!--- it doesn't, but wrap create in a try in case it exists but is merely empty --->
		<cftry>
			<!--- use cfcollection to create a new collection --->
			<cfcollection action="create" collection="#arguments.collectionName#" />
		<!--- catch if this collection already exists --->
		<cfcatch type="any">
			<!--- it does, return false --->
			<cfreturn false />
		</cfcatch>
		</cftry>
	<!--- otherwise --->
	<cfelse>
		<!--- collection already has records (and thus exists), return false --->
		<cfreturn false />
	</cfif>

	<!--- the collection was successfully created, return true --->
	<cfreturn true />
</cffunction>
```

### Expected Result: True, if the collection was created; False, if the collection already exists
