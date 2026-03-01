# collectionReduce

Sum amount of an item value for every item

```javascript
collectionReduce(collection, closure [, initialValue])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| collection | any | Yes |  |  |
| closure | function | Yes |  |  |
| initialValue | any | No |  |  |

## Sum amount of an item value for every item

```javascript
coll = [{
    id: 0,
    type: 'apples',
    amount: 25
},{
    id: 1,
    type: 'pinapples',
    amount: 2
},{
    id: 2,
    type: 'peaches',
    amount: 13
}];
fruits = collectionReduce(coll,function(a,b) {
    return a + b.amount;
},0);
writeOutput(fruits&' fruits');
```

### Expected Result: 40 fruits
