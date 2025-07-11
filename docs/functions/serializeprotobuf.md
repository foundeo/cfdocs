# serializeProtobuf

Serializes data into the Protobuf format

```javascript
serializeProtobuf(data, schema [, messageType, queryFormat, useCustomSerialization, protoPath])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| data | any | Yes |  | The data to serialize |
| schema | string | Yes |  | The Protobuf schema as a string or the absolute path to the schema |
| messageType | string | No |  | A message type from given schema as string. This is optional if schema contains one and only one message type. |
| queryFormat | string | No | struct | Indicates in which format a query will be serialized |
| useCustomSerialization | boolean | No | YES | Whether to use the customSerializer |
| protoPath | string | No |  | Specifies a directory in which the compiler looks for imported files defined in the schema. By default, it will be the current schema's parent path. |

## Serialize a query into Protobuf (Script syntax)

Serializes a ColdFusion query into an array of Protobuf binary data

```javascript
news = queryNew("id,title",
    "integer,varchar",
    [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
newsSchema = 'syntax = "proto3";
message News { int32 id = 1; string title = 2; }';
writeDump(serializeProtobuf(news, newsSchema));
```
