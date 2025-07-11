# queryConvertForGrid

 Converts query data to a structure that contains a paged subset of the query.

```javascript
queryConvertForGrid(query, page, pageSize)
```

```javascript
returns struct
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| query | string | Yes |  | No Help Available |
| page | numeric | Yes |  | No Help Available |
| pageSize | numeric | Yes |  | No Help Available |

## Tag Example

```javascript
<!--- cfm page ---> 
 <cfform> 
 <cfgrid format="html" name="grid01" pagesize=5 sort=true bind="cfc:places.getData({cfgridpage},{cfgridpagesize}, {cfgridsortcolumn},{cfgridsortdirection})" selectMode="row"> 
 <cfgridcolumn name="Emp_ID" display=true header="Employee ID"/> 
 <cfgridcolumn name="FirstName" display=true header="Name"/> 
 <cfgridcolumn name="Email" display=true header="Email"/> 
 </cfgrid> 
 </cfform> 
 
 <!--- cfc page ---> 
 <cffunction name="getData" access="remote" output="false"> 
 <cfargument name="page"> 
 <cfargument name="pageSize"> 
 <cfargument name="gridsortcolumn"> 
 <cfargument name="gridstartdirection"> 
 <cfset query = "SELECT Emp_ID, FirstName, EMail 
 FROM Employees" > 
 <cfif gridsortcolumn neq "" or gridstartdirection neq ""> 
 <cfset query=query & " order by #gridsortcolumn# #gridstartdirection#"> 
 </cfif> 
 <cfquery name="team" datasource="cfdocexamples"> 
 <cfoutput>#query#</cfoutput> 
 </cfquery> 
 <cfreturn queryConvertForGrid(team, page, pageSize)> 
 </cffunction>
```
