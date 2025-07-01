# structEach

Used to loop over elements in a structure by accessing key-value pairs.

```javascript
structEach(struct,function(key, value [, struct]){} [, parallel] [, maxThreads])
```

```javascript
returns void
```

## Member Function Syntax

```javascript
someStruct.each(function(key, value [, struct]){} [, parallel] [, maxThreads])
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| struct | string | Yes |  | Structure or a variable that contains one. |
| callback | any | Yes |  | Closure or a function reference that will be called for each of the iteration. |
| parallel | boolean | No | false | Lucee4.5+ true if the items can be executed in parallel |
| maxThreads | numeric | No | 20 | Lucee4.5+ the maximum number of threads to use when parallel = true |

### callback ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| key | string | No | The key for the current iteration |
| value | any | No | The value for the current iteration |
| struct | struct | No | A reference of the original struct |

## structEach() with an inline function (closure)

Use a function to write out the keys in a structure to the screen

```javascript
someStruct = {a=1,b=2,c=3};

structEach(someStruct,function(key,value) {
     writeOutput('Key ' & key & ' is ' & value & '; ');
});
```

### Expected Result: Key a is 1; Key b is 2; Key c is 3;

## Using a function reference

```javascript
favs = {color: 'blue', food: 'pizza', sport: 'basketball'}; 
 // named function 
 // notice that the function takes two arguments, the key and value pair of the current iteration of the structure's key-value pairs 
 function getFavorites(key, value) { 
 writeOutput('My favorite ' & key & ' is ' & value); 
 } 
 // run structEach() with a named function 
 structEach(favs,getFavorites); 
 // run structEach() with an inline function 
 structEach(favs, function(key,value) { 
 writeOutput('My favorite ' & key & ' is ' & value); 
 });
```

## Using the member function

CF11+ Lucee4.5+

```javascript
statusCodes = {
    OK = 200,
    CREATED = 201,
    NOT_MODIFIED = 304,
    BAD_REQUEST = 400,
    NOT_FOUND = 404
};

statusCodes.each(function(key, value) {
    writeOutput("#key# => #value#<br />");
});
```

### Expected Result: NOT_FOUND => 404
BAD_REQUEST => 400
CREATED => 201
OK => 200
NOT_MODIFIED => 304

## Accessing a reference to the looping struct in the callback

Lucee4.5+

```javascript
statusCodes = {
    OK = 200,
    CREATED = 201,
    NOT_MODIFIED = 304,
    BAD_REQUEST = 400,
    NOT_FOUND = 404
};

statusCodes.each(function(key, value, struct) {
    writeDump(struct);
});
```
