# collectionEvery

Checks if every item passes the truth test of an expression given in the closure

```javascript
collectionEvery(collection, closure [, parallel] [, maxThreads])
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

## Check if every item is of type mail

When only mail items are provided

```javascript
coll = [{
    id: 0,
    type: 'mail'
},{
    id: 1,
    type: 'mail'
}];
onlyMails = collectionEvery(coll,function(item) {
    return item.type is 'mail';
});
writeOutput(onlyMails);
```

### Expected Result: YES

## Check if every item is of type mail

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
onlyMails = collectionEvery(coll,function(item) {
    return item.type is 'mail';
});
writeOutput(onlyMails);
```

### Expected Result: NO
