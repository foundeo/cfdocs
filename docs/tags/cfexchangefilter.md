# cfexchangefilter

Specifies the filter parameter for cfexchangemail, cfexchangecalendar, cfexchangetask, and cfexchangecontact, get operations.

### Syntax

```html
<cfexchangefilter name="allDayEvent">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfexchangefilter(name="allDayEvent");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | any | Yes |  | The type of filter to use. (required) |
| from | any | No |  | The start date or date/time combination of the range to use for filtering.<br /> Cannot be used with the value attribute.<br /> If you specify a from attribute without a to attribute, the filter selects for<br /> all entries on or after the specified date or time.<br /> The value can be in any date/time format recognized by ColdFusion, but must<br /> correspond to a value that is appropriate for the filter type. (optional) |
| to | any | No |  | The end date or date/time combination for the range used for filtering.<br /> Cannot be used with the value attribute.<br /> If you specify a to attribute without a from attribute, the filter selects for<br /> all entries on or before the specified date or time.<br /> The value can be in any date/time format recognized by ColdFusion, but must<br /> correspond to a value that is appropriate for the filter type. (optional) |
| value | any | No |  | The filter value for all filters that do not take a date or time range.<br /> Cannot be used with the from and to attributes.<br /> If the name attribute requires this attribute, ColdFusion generates an error<br /> if it has an empty or null value. (optional) |
