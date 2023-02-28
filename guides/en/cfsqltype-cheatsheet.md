# CFSqlType Cheatsheet

Table sourced from [the Adobe Documentation][docs]

[docs]: https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-tags/tags-p-q/cfqueryparam.html

| `CF_SQL_*`             | JDBC          | DB2                       | Oracle              | SQL Server          |
| ---------------------- | ------------- | ------------------------- | ------------------- | ------------------- |
| `CF_SQL_ARRAY`         | ARRAY         | N/A                       | N/A                 | N/A                 |
| `CF_SQL_BIGINT`        | BIGINT        | BigInt                    | N/A                 | bigint              |
| `CF_SQL_BINARY`        | BINARY        | Char for Bit Data         | N/A                 | binary, timestamp   |
| `CF_SQL_BIT`           | BIT           | N/A                       | N/A                 | bit                 |
| `CF_SQL_BLOB`          | BLOB          | Blob                      | blob, bfile         | longvarbinary       |
| `CF_SQL_CHAR`          | CHAR          | Char                      | char, nchar         | char, nchar, uniqueidentifier |
| `CF_SQL_CLOB`          | CLOB          | Clob                      | clob, nclob         | N/A                 |
| `CF_SQL_DATE`          | DATE          | Date                      | N/A/                | date                |
| `CF_SQL_DECIMAL`*      | DECIMAL       | Decimal                   | number              | decimal, money, smallmoney |
| `CF_SQL_DISTINCT`      | DISTINCT      | N/A                       | N/A                 | N/A                 |
| `CF_SQL_DOUBLE`        | DOUBLE        | Double                    | N/A                 | float               |
| `CF_SQL_FLOAT`         | FLOAT         | Float                     | number              | real                |
| `CF_SQL_IDSTAMP`       | CHAR          | Char                      | char, nchar         | char, nchar, uniqueidentifier |
| `CF_SQL_INTEGER`       | INTEGER       | Integer                   | N/A                 | int                 |
| `CF_SQL_LONGVARBINARY` | LONGVARBINARY | Long Varchar for Bit Data | long raw            | image               |
| `CF_SQL_LONGNVARCHAR`  | LONGNVARCHAR  | LONGVARGRAPHIC            | NVARCHAR2           | ntext, xml          |
| `CF_SQL_LONGVARCHAR`   | LONGVARCHAR   | Long Varchar              | long                | text, ntext, xml    |
| `CF_SQL_MONEY`         | DOUBLE        | Double                    | N/A                 | float, money        |
| `CF_SQL_MONEY4`        | DOUBLE        | Double                    | N/A                 | float, money        |
| `CF_SQL_NCHAR`         | NCHAR         | NCHAR                     | NCHAR               | nchar               |
| `CF_SQL_NCLOB`         | CLOB          | NCLOB                     | NCLOB               | nvarchar            |
| `CF_SQL_NULL`          | NULL          | N/A                       | N/A                 | N/A                 |
| `CF_SQL_NUMERIC`*      | NUMERIC       | Numeric                   | N/A                 | numeric             |
| `CF_SQL_NVARCHAR`      | NVARCHAR      | NVARCHAR                  | NVARCHAR2           | nvarchar            |
| `CF_SQL_OTHER`         | OTHER         | N/A                       | N/A                 | N/A                 |
| `CF_SQL_REAL`          | REAL          | Real                      | N/A                 | real                |
| `CF_SQL_REFCURSOR`     | REF           | N/A                       | N/A                 | N/A                 |
| `CF_SQL_SMALLINT`      | SMALLINT      | Smallint                  | N/A                 | smallint            |
| `CF_SQL_STRUCT`        | STRUCT        | N/A                       | N/A                 | N/A                 |
| `CF_SQL_SQLXML`        | N/A           | N/A                       | N/A                 | xml                 |
| `CF_SQL_TIME`          | TIME          | Time                      | N/A                 | time                |
| `CF_SQL_TIMESTAMP`     | TIMESTAMP     | Timestamp                 | date                | datetime, datetime2, smalldatetime |
| `CF_SQL_TINYINT`       | TINYINT       | N/A                       | N/A                 | tinyint             |
| `CF_SQL_VARBINARY`     | VARBINARY     | Rowid                     | raw                 | varbinary, geometry, geography, udt |
| `CF_SQL_VARCHAR`       | VARCHAR       | Varchar                   | varchar2, nvarchar2 | varchar, nvarchar   |

* Scale param option applies to decimal and numeric types. See docs for [cfqueryparam](https://cfdocs.org/cfqueryparam).

## See also

- [SQL Server JDBC data type mappings](https://docs.microsoft.com/en-us/sql/connect/jdbc/using-basic-data-types)
