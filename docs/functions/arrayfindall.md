# arrayFindAll

Searches an array for all positions of a specified value. The function searches for simple values such as strings and numbers or for complex objects such as structures. When the second parameter is a simple value, string searches are case-sensitive

```javascript
arrayFindAll(array, value or callback)
```

```javascript
returns array
```

## Member Function Syntax

```javascript
someArray.findAll(value or callback)
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| array | array | Yes |  | The source array to search through |
| value or callback | any | No |  | If string, case-sensitive value to search for; if callback, use signature function (item, index, array) : boolean |

## List all courses with participants

```javascript
courses = [{
    name: "Getting started with ColdFusion",
    participants: []
},{
    name: "Caching in ColdFusion",
    participants: [{
        name: "John Doe",
        age: 45
    },{
        name: "Jane Doe",
        age: 46
    }]
},{
    name: "Changeover to Lucee",
    participants: []
},{
    name: "Update ColdFusion",
    participants: [{
        name: "Arthur Dent",
        age: 42
    }]
}];

chosenCourses = arrayFindAll(courses,function(course) {
    return arrayLen(course.participants);
});

writeOutput(ArrayToList(chosenCourses));
```

### Expected Result: 2,4
