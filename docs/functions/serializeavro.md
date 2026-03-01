# serializeAvro

Serializes data into an Avro binary format

```javascript
serializeAvro(data, writerSchema [, queryFormat, useCustomSerialization])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| data | any | Yes |  | The data to serialize |
| writerSchema | string | Yes |  | The Avro schema as a string or the absolute path to the schema |
| queryFormat | string | No |  | Indicates in which format a query will be serialized |
| useCustomSerialization | boolean | No | YES | Whether to use the customSerializer |

## Serialize a query into Avro (Script syntax)

Serializes a ColdFusion query into an array of Avro binary data

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
writeDump(serializeAvro(data, newsSchema));
```
