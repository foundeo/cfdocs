# cfimapfilter

Specifies filter parameters that control the actions of cfimap, get operations.

Two ways to use this tag: [name, value pair attributes] or [name, from, to ].


 name = "filter type"
 value = "filter value"

OR 
 

 name = "filter type"
 from = "date/time"
 to = "date/time"

### Syntax

```html
<cfimapfilter name="filter type" ... >
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfimapfilter(name="filter type", ...);
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | type of imap filter to use. TimeReceived and TimeSent must be used with the from/to attributes |
| from | date | No |  | The start date or date/time combination of the range to use for filtering. Cannot be used with the value attribute. If you specify a from attribute without a to attribute, the filter selects for all entries on or after the specified date or time.<br />The value can be in any date/time format recognized by ColdFusion, but must correspond to a value that is appropriate for the filter type. |
| to | date | No |  | The end date or date/time combination for the range used for filtering. Cannot be used with the value attribute. If you specify a to attribute without a from attribute, the filter selects for all entries on or before the specified date or time.<br />The value can be in any date/time format recognized by ColdFusion, but must correspond to a value that is appropriate for the filter type. |
| value | string | No |  | Filter Value |

## Adobe Example

```html
<cfimap action="getall" 
 connection = "#REQUEST.connectionname#" 
 name = "queryname" 
 stoponerror = "#REQUEST.stoponerror#" >
 
 <cfimapfilter name="subject" value="filter">
 
</cfimap>
```
