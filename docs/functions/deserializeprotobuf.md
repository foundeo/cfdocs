# deserializeProtobuf

Converts a Protobuf data representation into CFML data.

```javascript
serializeProtobuf(data, schema [, messageType, queryFormat, useCustomSerialization, protoPath])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| data | any | Yes |  | Protobuf serialized data |
| schema | string | Yes |  | The Protobuf schema as a string or the absolute path to the schema |
| messageType | string | No |  | A message type from given schema as string. This is optional if schema contains one and only one message type. |
| strictMapping | boolean | No | YES | Specifies whether to convert the Protobuf strictly. If true, converts the Protobuf binary to matching ColdFusion data types. |
| useCustomSerialization | boolean | No | YES | Whether to use the customSerializer |
| protoPath | string | No |  | Specifies a directory in which the compiler looks for imported files defined in the schema. By default, it will be the current schema's parent path. |

## Deserialize a Protobuf serialized query (Script syntax)

```javascript
news = queryNew("id,title",
    "integer,varchar",
    [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
newsSchema = 'syntax = "proto3";
message News { int32 id = 1; string title = 2; }';
protobuf = serializeProtobuf(news, newsSchema);
writeDump(deserializeProtobuf(protobuf, newsSchema));
```
