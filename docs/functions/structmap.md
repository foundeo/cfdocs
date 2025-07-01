# structMap

Iterates over every entry of the Struct and calls the closure function to work on the key value pair of the struct. The returned value will be set for the same key in a new struct and the new struct will be returned.

```javascript
structMap(struct, function(key, value [,struct]){} [, parallel] [, maxThreads])
```

```javascript
returns struct
```

## Member Function Syntax

```javascript
someStruct.map(function(key, value [,struct]){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| struct | struct | Yes |  | The input struct. |
| callback | any | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| parallel | boolean | No | false | Lucee4.5+ true if the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ the maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| key | string | No | The key for the current iteration |
| value | any | No | The value for the current iteration |
| struct | struct | No | A reference of the original struct |

## Script Syntax

```javascript
original = {
    "one": {
        1: "tahi"
    },
    "two": {
        2: "rua"
    },
    "three": {
        3: "toru"
    },
    "four": { 
        4: "wha"
    }
};
function mapOriginal(k,v) {
    return v[ListFirst(v.keyList())];
}
fixed = structMap(original,mapOriginal);
writeDump([original, fixed]);
```

## Using Member Function

CF11+ Lucee4.5+

```javascript
original = {
    "one": {
        1: "tahi"
    },
    "two": {
        2: "rua"
    },
    "three": {
        3: "toru"
    },
    "four": {
        4: "wha"
    }
};
fixed = original.map(function(k,v) {
    return v[ListFirst(v.keyList())];
});
writeDump([original, fixed]);
```
