# arrayNew

Creates an array of 1-3 dimensions. Index array elements with square brackets: [ ]. CFML arrays expand dynamically as data is added.

```javascript
arrayNew(dimension [, isSynchronized])
```

```javascript
returns array
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| dimension | numeric | Yes | 1 |  |
| isSynchronized | boolean | No | YES | CF2016+ Lucee5.1+ When true creates a synchronized array. Unsynchronized arrays are not thread safe so they should not be used within shared scopes (application, session, etc). According to the CF2016 Performance whitepaper: Unsynchronized arrays are about 93% faster due to lock avoidance. |

## Create the One dimensional array

Uses the arrayNew function to create the new array

```javascript
newArray = arrayNew(1);
someArray = arraySet(newArray, 1, 4, "All is well");
writeOutput( serializeJSON(newArray) );
```

### Expected Result: ["All is well", "All is well", "All is well", "All is well"]

## Create the Two dimensional array

Uses the arrayNew function to create the new array

```javascript
newArray = arrayNew(2);
newArray[1][1] = "First value";
newArray[1][1] = "First value";
newArray[1][2] = "First value";
newArray[2][1] = "Second value";
newArray[2][2] = "Second value";
writeOutput( serializeJSON(newArray) );
```

### Expected Result: [["First value", "First value"],["Second value", "Second value"]]

## Create unsynchronized array

CF2016+ Uses the arrayNew function to create the new unsynchronized array

```javascript
newArray = arrayNew(1, false);
newArray.append("one");
writeOutput( serializeJSON(newArray) );
```

### Expected Result: ["one"]

## Create an array using implicit notation

CF8+ Instead of using arrayNew you can also create an array using square brackets.

```javascript
newArray = ["one","two"];
writeOutput( serializeJSON(newArray) );
```

### Expected Result: ["one", "two"]

## Create an array with data type

CF2018+ When using data types on array creation, items are converted if possible, otherwise an error is thrown.

```javascript
typedArray = arrayNew['boolean'](1);
typedArray[1] = true;
typedArray[2] = 'true';
typedArray[3] = 1;
typedArray[4] = '1';
typedArray[5] = 'yes';

typelessArray = arrayNew(1);
typelessArray[1] = true;
typelessArray[2] = 'true';
typelessArray[3] = 1;
typelessArray[4] = '1';
typelessArray[5] = 'yes';
writeOutput(serializeJSON([typedArray,typelessArray]));
```

### Expected Result: [[true,true,true,true,null,true],[true,"true",1,"1",null,"yes"]]
