# ORM Settings Struct

The following settings can be set using the `this.ORMSettings` struct in the pseudo constructor of Application.cfc.
ColdFusion uses these settings to configure ORM. All settings are optional.

## Example

    this.ORMSettings = {
        datasource = "foo",
        dbcreate = "dropcreate"
    };

## Options

### `boolean autoGenMap`

Default: `true`

Specifies whether ColdFusion should automatically generate mapping for the persistent CFCs. If `false` the mappings should be provided in the form of `.hbmxml` files (see the Hibernate documentation at https://hibernate.org/orm/).

### `boolean autoManageSession`

Default: `true`

CF901+ Lets you specify how the ORM session is managed. If `true`, ColdFusion manages everything for you, if `false` you have to flush, open, clear and close the ORM session yourself.

ColdFusion closes the ORM session at the end of request irrespective of this setting.

### `string cacheConfig`

_This setting is used only when `secondarycacheenabled=true`._

Specifies the location of the configuration file that should be used by the secondary cache provider.

### `string cacheProvider`

_This setting is used only when `secondarycacheenabled=true`._

Specifies the cache provider that should be used by ORM as secondary cache. Fully qualified name of the class for any other cache provider. Possible values:

* Ehcache
* Hashtable
* JBossCache
* OSCache
* SwarmCache

### `string catalog`

Specifies the default catalog that should be used by ORM.

### `string|array CFCLocation`

Specifies the directory (or array of directories) that should be used by ColdFusion to search for persistent CFCs to generate the mapping. If CFCLocation is set, ColdFusion looks at only the paths specified in it. If it is not set, ColdFusion looks at the application directory, its sub-directories, and its mapped directories to search for persistent CFCs.

The specified paths can be: relative paths from the application root, mappings or absolute paths.

### `string datasource`

Specifies the data source that should be used by ORM. If it is not specified here, then the data source specified for the application is picked up.

### `string DBCreate`

Default: `none`

ColdFusion ORM can automatically create the tables for your application in the database when ORM is initialized for the application. This can be enabled by using this setting. It takes the following values:

* `dropcreate` Drops and recreates every table specified in the ORM. Does not drop other existing tables.
* `none` Does not touch the database.
* `update` Creates tables if they do not exist and updates tables if they do. Does not remove columns or tables.

### `string dialect`

Specifies the dialect. You can specify one of the following dialects, or provide your own using the fully qualified class name.

* DB2
* DB2AS400
* DB2OS390
* Derby
* Informix
* MicrosoftSQLServer
* MySQL
* MySQLwithInnoDB
* MySQLwithMyISAM
* Oracle10g
* Oracle8i
* Oracle9i
* PostgreSQL
* Sybase
* SybaseAnywhere

### `boolean eventHandling`

Default: `false`

ORM provides callbacks to the event listeners for all the persistence events like `load`, `insert`, `update`, `delete`

### `boolean flushAtRequestEnd`

Default: `true`

`true` (default) causes `ormFlush()` to be called automatically at request end.

### `boolean logSQL`

Default: `false`

Specifies whether the SQL queries that are executed by ORM will be logged. When `true` the SQL queries are logged to the console.

### `string namingStrategy`

Defines database standard and naming convention.

* default: This strategy uses the logical table or column name as it is.
* smart: This strategy changes the logical table or column name to uppercase. Also, if the logical table or column name is in camel case, this strategy breaks the camel cased name and separates the broken words using underscore. For example, for a CFC named "OrderProduct", this strategy changes the table name as "ORDER_PRODUCT".
* your own cfc : You can get complete control of the naming strategy by providing your own implementation. You need to specify the fully qualified name of the CFC as the value for naming strategy. This CFC must implement `cfide.orm.INamingStrategy` interface.

### `string ORMConfig`

A Hibernate configuration file, see https://www.tutorialspoint.com/hibernate/hibernate_configuration.htm

### `boolean saveMapping`

Default: `false`

_Can be overridden in the individual CFCs._
Specifies whether the generated Hibernate mapping files (.hbmxml) are saved to disc. If `true`, an .hbmxml file will be generated and saved in the same directory as the persistent CFC.

### `string schema`

Specifies the default database schema to be used by ORM.

### `boolean skipCFCWithError`

Default: `false`

CF901+ Lets you specify if ColdFusion must skip the CFCs that have errors. If `true`, ColdFusion ignores the CFCs that have errors.

### `string SQLScript`

_This setting is used only when `dbcreate="dropcreate"`_

Absolute file path to the SQL script file that gets executed after ORM is initialized. Useful for populating the database with test data before the application is accessed.

### `boolean useDBForMapping`

Default: `true`

Specifies whether the database has to be inspected to identify the missing information required to generate the Hibernate mapping. The database is inspected to get the column data type, primary key and foreign key information."

### `boolean secondaryCacheEnabled`

Default: `false`

Specifies whether secondary caching should be enabled.
