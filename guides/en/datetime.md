# Date Time Cheatsheet
## Formatting

| Format | Notes                                                              |
|--------|--------------------------------------------------------------------|
| d      | Day of the month as digits; no leading zero for single-digit days. |
| dd     | Day of the month as digits; leading zero for single-digit days.    |
| EEE    | Day of the week as a three-letter abbreviation.                    |
| EEEE   | Day of the week as its full name.                                  |
| m      | Month as digits; no leading zero for single-digit months. **CAUTION:** In `timeFormat()` "m" means "minutes"  |
| mm     | Month as digits; leading zero for single-digit months.             |
| mmm    | Month as a three-letter abbreviation.                              |
| mmmm   | Month as its full name.                                            |
| yy     | Year as last two digits; leading zero for years less than 10.      |
| yyyy   | Year represented by four digits.                                   |
| Y YY   | Week Year                                                          |
| G      | Period/era string.                                                 |
| h      | hours; no leading zero for single-digit hours (12-hour clock)      |
| hh     | hours; leading zero for single-digit hours (12-hour clock)         |
| H      | hours; no leading zero for single-digit hours (24-hour clock)      |
| HH     | hours; leading zero for single-digit hours (24-hour clock)         |
| n      | minutes; no leading zero for single-digit minutes                  |
| nn     | minutes; a leading zero for single-digit minutes                   |
| s      | seconds; no leading zero for single-digit seconds                  |
| ss     | seconds; leading zero for single-digit seconds                     |
| l or L | milliseconds, with no leading zeros                                |
| t      | one-character time marker string, such as A or P                   |
| tt     | multiple-character time marker string, such as AM or PM            |

### Shortcuts

| Shortcut | Format                              |
|----------|-------------------------------------|
| short    | m/d/yy h:nn tt                      |
| medium   | mmm d, yyyy h:nn:ss tt              |
| long     | mmmm dd, yyyy h:nn:ss tt UTC        |
| full     | EEEE, mmmm dd, yyyy h:nn:ss tt UTC  |

## Date functions

* dateTimeFormat
* lsDateTimeFormat
* date-and-time-functions
