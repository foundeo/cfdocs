# listMap

Iterates over every entry of the List and calls the closure function to work on the item of the list. The returned value will be set at the same index in a new list and the new list will be returned.

```javascript
 listMap(list, function(item [,index, list]) [,delimiter, includeEmptyFields)
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| list | string | Yes |  | The input list. |
| function | any | Yes |  | Closure or a function reference that will be called for each of the iteration. The arguments passed to the callback are

item: value
index : current index for the iteration
list : reference of the original list |
| intialValue | any | No |  | Initial value which will be used for the reduce operation. |
| delimiter | string | No | , | The list delimiter. |
| includeEmptyFields | boolean | No | false | Include empty values |

### function ( callback arguments )
| Name | Type | Required | Description |
| --- | --- | --- | --- |
| item | string | No | value
| index | numeric | No | current index for the iteration
| list | string | No | reference of the original list

## Script Syntax

```javascript
Rainbow = "Whero, Karaka, Kowhai, Kakariki, Kikorangi, Tawatawa, Mawhero";
externalList = "";
reverseRainbow = listMap( rainbow, function(v,i,l) {
	var newValue = "#i#:#v.reverse()#";
	externalList = externalList.listAppend(newValue);
	return newValue;
});
writeDump([{rainbow=rainbow},{reverseRainbow=reverseRainbow},{externalList=externalList}]);
```
