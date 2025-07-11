# collectionMap

Maps values in a collection

```javascript
collectionMap(collection, closure [, parallel] [, maxThreads])
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| collection | any | Yes |  |  |
| closure | function | Yes |  |  |
| parallel | boolean | No |  |  |
| maxThreads | numeric | No | 20 |  |

## Return users which names are mapped to one value only

```javascript
coll = [{
    id: 0,
    firstname: 'Arthur',
    name: 'Dent'
},{
    id: 1,
    firstname: 'Harry',
    name: 'Potter'
},{
    id: 2,
    firstname: 'Peter',
    name: 'Jackson'
}];
users = collectionMap(coll,function(item) {
    return {
        id: item.id,
        fullname: item.firstname&' '&item.name
    };
});
for(user in users) {
    writeOutput(user.fullname&', ');
}
```

### Expected Result: Arthur Dent, Harry Potter, Peter Jackson,
