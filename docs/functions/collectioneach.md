# collectionEach

Iterate over each item contained in the collection given

```javascript
collectionEach(collection, closure)
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| collection | any | Yes |  |  |
| closure | function | Yes |  |  |

## Iterate over collection and output a key from each item

```javascript
coll = [{
    id: 0,
    name: 'me'
},{
    id: 1,
    name: 'you'
}];
collectionEach(coll,function(item) {
    writeOutput(item.name);
    writeOutput(' - ');
});
```

### Expected Result: me - you -
