# collectionFilter

Filters items from a collection passing the filter condition

```javascript
collectionFilter(collection, filter [, parallel] [, maxThreads])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| collection | any | Yes |  |  |
| filter | function | Yes |  |  |
| parallel | boolean | No |  |  |
| maxThreads | numeric | No | 20 |  |

## Return only items of type mail

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
onlyMails = collectionFilter(coll,function(item) {
    return item.type is 'mail';
});
for(mail in onlyMails) {
    writeOutput(mail.id&', ');
}
```

### Expected Result: 0, 1,
