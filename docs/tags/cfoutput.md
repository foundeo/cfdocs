# cfoutput

Displays output that can contain the results of processing CFML variables and functions. You can use the `query` attribute to loop over the result set of a database query.

### Syntax

```html
<cfoutput>
```

### Script Syntax

```javascript
writeOutput()
```

## Attribute Reference

| Name | Type | Required | Default | Description | Values |
| --- | --- | --- | --- | --- | --- |
| query | query | No |  | Name of cfquery from which to draw data for output section. |  |
| group | string | No |  | Query column to use to group sets of records. Eliminates<br /> adjacent duplicate rows when data is sorted. Use if you<br /> retrieved a record set ordered on one or more a query<br /> columns. For example, if a record set is ordered on<br /> "Customer_ID" in the cfquery tag, you can group the output<br /> on "Customer_ID." |  |
| groupcasesensitive | boolean | No |  | Whether to consider the case in grouping rows. |  |
| startrow | numeric | No |  | Row from which to start output. Only considered when the query attribute is set.<br />This attribute in combination with maxrows can be used to create some paging. |  |
| maxrows | numeric | No |  | Maximum number of rows to display. Only considered when the query attribute is set. |  |
| encodefor | string | No |  | CF2016+ Lucee5.1+ When set applies an encoder to all variables to prevent XSS. For example if you specify `html` each variable will be wrapped by a call to the `encodeForHTML` function. | /Users/garethedwards/development/github/cfdocs/docs/tags/cfoutput.md|dn |

## Simple Tag Example

```html
<cfoutput>Some text and a #encodeForHTML(variable)#</cfoutput>
```

## Loop over a query

Loops over each row of the query specified and outputs the result.

```html
<cfoutput query="news">
    <h2>#encodeForHTML(news.headline)#</h2>
    <p>#encodeForHTML(news.byline)#</p>
</cfoutput>
```

## Loop over a range of rows of a query

Loops over 10 rows of the query specified starting from row 5 and outputs the result.

```html
<cfoutput query="news" startrow="5" maxrows="10">
    <h2>#encodeForHTML(news.headline)#</h2>
    <p>#encodeForHTML(news.byline)#</p>
</cfoutput>
```

## Using the encodeFor attribute

CF2016+ Lucee5.1+ By specifying `encodefor="html"` each variable is encoded using the `encodeForHTML` function before it is output.

```html
<cfoutput query="news" encodefor="html">
    <h2>#news.headline#</h2>
    <p>#news.byline#</p>
</cfoutput>
```

## Using the group attribute

Creates a dummy query `food`, with columns `name` and `type`. Then outputs the food by grouping by the type.

```html
<cfset food = queryNew("name,type",
    "varchar,varchar",
    [ {name:"Apple",type:"Fruit"}, 
      {name:"Orange",type:"Fruit"}, 
      {name:"Chicken",type:"Meat"} ])>
<cfoutput query="food" group="type">
    <h2>#type#</h2>
    <ul>
      <cfoutput><li>#name#</li></cfoutput>
    </ul>
</cfoutput>
```
