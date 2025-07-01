# listSort

Sorts list elements according to a sort type and sort order. Returns a sorted copy of the list.
 [sortType - description]
 numeric: sorts numbers
 text: sorts text alphabetically, taking case into account
 - aabzABZ, if sort_order = "asc"
 - ZBAzbaa, if sort_order = "desc"
 textnocase: sorts text alphabetically, without regard to case
 - aAaBbBzzZ, in an asc sort;
 - ZzzBbBaAa, in a desc sort;

```javascript
listSort(list, sortType [, sortOrder] [, delimiters] [, includeEmptyFields] [, localeSensitive])
or
listSort(list, callback)
```

```javascript
returns string
```
### Member Function Syntax

```javascript
list.listSort(sortType [, sortOrder])
```
