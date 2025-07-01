# cfcalendar

Puts an interactive Macromedia Flash format calendar in an HTML
 or Flash form. Not supported in XML format forms. The calendar
 lets a user select a date for submission as a form variable.

### Syntax

```html
<cfcalendar name="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfcalendar(name="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| name | string | Yes |  | The name of the calendar. |
| height | numeric | No |  | The vertical dimension of the calendar specified in pixels. |
| width | numeric | No |  | The horizontal dimension of the calendar specified in pixels. |
| selecteddate | string | No |  | The date that is initially selected. It is highlighted in a
 color determined by the form skin. Must be in mm/dd/yyyy
 or dd/mm/yyyy format, depending on the current locale.
 (Use the setlocale tag to set the locale, if necessary.) |
| startrange | string | No |  | The start of a range of dates that are disabled. Users
 cannot select dates from this date through the date
 specified by the endRange attribute. |
| endrange | string | No |  | The end of a range of dates that are disabled. Users
 cannot select dates from the date specified by the
 startRange attribute through this date. |
| disabled | boolean | No |  | Disables all user input, making the control read only.
 To disable input, specify disabled without an attribute
 or disabled="true". To enable input, omit the attribute
 or specify disabled="false".
 Default is: false |
| mask | string | No | MM/DD/YYYY | A pattern that specifies the format of the submitted date.
 Mask characters are:
 - D = day, can use 0-2 mask characters
 - M = month, can use 0-4 mask characters
 - Y = year, can use 0, 2, or 4 characters
 - E = day in week, can use 0-4 characters
 - Any other character = put the character in the specified location
 Default is: MM/DD/YYYY |
| firstdayofweek | numeric | No | 0 | Integer in the range 0-6 specifying the first day of the
 week in the calendar, 0 indicates Sunday, 6 indicates Saturday.
 Default is: 0 |
| daynames | string | No | S,M,T,W,Th,F,S | A comma-delimited list that sets the names of the
 weekdays displayed in the calendar. Sunday is the
 first day and the rest of the weekday names follow in
 the normal order.
 Default is: S,M,T,W,Th,F,S |
| monthnames | string | No | January,February,March,April,May,June,July,August,September,October,November,December | A comma-delimited list of the month names that are
 displayed at the top of the calendar. |
| enabled | boolean | No | YES | Flash only: Specifying whether the control is enabled. A
 disabled control appears in light gray. This is the inverse
 of the disabled attribute. |
| visible | boolean | No | YES | Flash only: Specifying whether to show the control. Space
 that would be occupied by an invisible control is blank. |
| tooltip | string | No |  | Flash only: Text to display when the mouse pointer hovers
 over the control. |
| style | string | No |  | Flash only: Actionscript style or styles to apply to the calendar.
 Default is: haloGreen |
| onchange | string | No |  | Flash only: ActionScript that runs when the user selects a
 date. |
| onblur | string | No |  | Flash only: ActionScript that runs when the user selects a
 date. |
| onfocus | string | No |  | Flash only: ActionScript that runs when the user selects a
 date. |
