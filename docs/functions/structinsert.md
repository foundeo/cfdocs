# structInsert

 Inserts a key-value pair into a structure.

```javascript
structInsert(structure, key, value [, allowoverwrite])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure to contain the new key-value pair. |
| key | string | Yes |  | Key that contains the inserted value. |
| value | any | Yes |  | Value to add. |
| allowoverwrite | boolean | No | NO | Whether to allow overwriting a key. Default: False. |

## Simple Example

Inserts a new key/value into the structure

```javascript
map = {
    "hair" : "brown",
    "eyes" : "green"
};
structInsert(map, "lips", "red");
writeOutput(structKeyList(map));
```

### Expected Result: eyes,lips,hair

## Overwrite Example

Throws exception when you try to add a duplicate key, when allowoverwrite parameter is false.

```javascript
map = {
    "hair" : "brown",
    "eyes" : "green"
};
try {structInsert(map, "hair", "red", false);}
catch(any ex) {writeOutput("error!");}
```

### Expected Result: error!
