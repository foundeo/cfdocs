# collectionSome

Similar to collectionEvery, except it returns true if at least one item returns true

```javascript
collectionSome(collection, closure [, parallel] [, maxThreads])
```

```javascript
returns boolean
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| collection | any | Yes |  |  |
| closure | function | Yes |  |  |
| parallel | boolean | No |  |  |
| maxThreads | numeric | No | 20 |  |

## Check if at least one item is of type mail

When only mail items are provided

```javascript
coll = [{
    id: 0,
    type: 'mail'
},{
    id: 1,
    type: 'mail'
}];
onlyMails = collectionSome(coll,function(item) {
    return item.type is 'comment';
});
writeOutput(onlyMails);
```

### Expected Result: NO

## Check if at least one item is of type mail

When comment items are provided besides mail items as well

```javascript
coll = [{
    id: 0,
    type: 'mail'
},{
    id: 1,
    type: 'mail'
},{
    id: 2,
    type: 'comment'
}];
onlyMails = collectionSome(coll,function(item) {
    return item.type is 'comment';
});
writeOutput(onlyMails);
```

### Expected Result: YES
