# quotedValueList

 Gets the values of each record returned from an executed query.
 CFML does not evaluate the arguments

```javascript
quotedValueList(column [, delimiter])
```

```javascript
returns string
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| column | query | Yes |  | Name of an executed query and column. Separate query name
 and column name with a period. |
| delimiter | string | No | , |  |

## Tag Example

```javascript
<cfquery name = "GetCourseList" datasource = "cfdocexamples"> 
 SELECT * 
 FROM CourseList 
 WHERE Dept_ID IN ('#GetDepartments.Dept_ID#') 
 </cfquery> 
 <cfoutput> 
 #quotedValueList(GetCourseList.CorNumber,";")# 
 </cfoutput>
```
