# arraySet

In a one-dimensional array, sets the elements in a specified
 index range to a value. Useful for initializing an array after
 a call to arrayNew.

```javascript
arraySet(array, start, end, value)
```

```javascript
returns boolean
```

## Member Function Syntax

```javascript
someArray.set(start, end, value)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  |  |
| start | numeric | Yes |  |  |
| end | numeric | Yes |  |  |
| value | any | Yes |  |  |

## Tag Syntax

```javascript
<cfset MyNewArray = arrayNew(1)> 
<!--- ArrayToList does not function properly if the Array has not been initialized with arraySet. ---> 
<cfset temp = arraySet(MyNewArray, 1,6, "Initial Value")> 
<cfoutput>#ArrayToList(myNewArray,', ')#</cfoutput>
```

### Expected Result: Initial Value, Initial Value, Initial Value, Initial Value, Initial Value, Initial Value
