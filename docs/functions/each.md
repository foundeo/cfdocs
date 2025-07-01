# each

Function that will call the given UDF/Closure with every entry (key/value) in the given collection.

```javascript
each(collection, closure [, parallel] [, maxThreads])
```

```javascript
returns void
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| collection | any | Yes |  | Collection to take values from. |
| closure | function | Yes |  | UDF/Closure that is called with each entry from the collection. |
| parallel | boolean | No | false | Execute the closures in parallel. |
| maxThreads | numeric | No | 20 | Maximum number of threads executed. Ignored when `parallel` argument is set to `false`. |

## Iterate over collection and output a key from each item

```javascript
coll = [{
    id: 0,
    name: 'me'
},{
    id: 1,
    name: 'you'
}];
function outputCollection(item) {
    writeOutput(item.name);
    writeOutput(' - ');
}
each(coll,outputCollection,true);
```

### Expected Result: me - you -
