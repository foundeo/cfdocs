# deserializeAvro

Converts an Avro data representation into CFML data.

```javascript
deserializeAvro(data, readerSchema [, strictMapping, useCustomSerialization])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| data | any | Yes |  | Avro serialized data |
| readerSchema | string | Yes |  | The Avro schema as a string or the absolute path to the schema |
| strictMapping | boolean | No | YES | Specifies whether to convert the Avro strictly. If true, converts the Avro binary to matching ColdFusion data types. |
| useCustomSerialization | boolean | No | YES | Whether to use the customSerializer |

## Deserialize an Avro serialized query (Script syntax)

```javascript
news = queryNew("id,title",
    "integer,varchar",
    [ {"id":1,"title":"Dewey defeats Truman"}, {"id":2,"title":"Man walks on Moon"} ]);
newsSchema = '{  
    "namespace": "my.example",
    "type": "record",
    "name": "News",
    "fields": [ {"name":"id","type":"int"}, {"name":"title","type":"string"} ]
}';
avro = serializeAvro(news, newsSchema);
writeDump(deserializeAvro(avro, newsSchema));
```
