# structCount

 Counts the keys in a structure.

```javascript
structCount(structure)
```

```javascript
returns numeric
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| structure | struct | Yes |  | Structure to access |

## Using structCount as a function

Pass a structure as an argument to the function.

```javascript
user = {
    id = 1,
    firstname = "Han",
    lastname = "Solo",
    movie = "Star Wars"
};

writeDump( structCount( user ) );
```

### Expected Result: 4

## Using structCount as a Member Function

CF11+ Lucee4.5+ Having a reference of a structure as a variable, use the dot notation to get a key count on it using a member function.

```javascript
user = {
    id = 1,
    firstname = "Han",
    lastname = "Solo",
    movie = "Star Wars"
};

writeDump( user.count() );
```

### Expected Result: 4
