# cfschedule

Provides a programmatic interface to the CFML scheduling engine. Can run a CFML page at scheduled intervals, with the option to write the page output to a static HTML page. This feature enables you to schedule pages that publish data, such as reports, without waiting while a database transaction is performed to populate the page.

### Syntax

```html
<cfschedule action="delete" task="">
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfschedule(action="delete", task="");
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | Yes |  | delete: deletes the specified task
 update: updates an existing task or creates a new task, if one with the name specified by the task attribute does not exist
 run: executes the specified task
 pause: Pauses the specified task.
 resume: Continues executing the specified task.
 list: Lists all the scheduled tasks.
 pauseall: CF10+ Pauses all scheduled tasks.
 resumeall: CF10+ Resume all scheduled tasks for a particular application.
 create: CF2018u2+ Create a fresh task. If a task already exists, an error is thrown.
 modify: CF2018u2+ Modifies an existing task while retaining its old values. |
| task | string | No |  | Name of the task. Not required if action attribute is set to list, otherwise it is required. |
| operation | string | No | HTTPRequest | Operation that the scheduler performs. Must be HTTPRequest. |
| file | string | No |  | Name of the file in which to store the published output of the scheduled task. |
| path | string | No |  | Path to the directory in which to put the published file.
NOTE: This is Required if `publish` is "Yes". |
| startdate | string | No |  | Date on which to first run the scheduled task. |
| starttime | string | No |  | Time at which to run the scheduled of task starts. |
| URL | string | No |  | URL of the page to execute. |
| port | numeric | No | 80 | Port to use on the server that is specified by the url parameter. If resolveURL = "yes", retrieved document URLs that specify a port number are automatically resolved, to preserve links in the retrieved document. A port value in the url attribute overrides this value. |
| publish | boolean | No | NO | Yes: save the result to a file
 No: does not |
| endDate | string | No |  | Date when scheduled task ends. |
| endTime | numeric | No |  | Time when scheduled task ends (seconds). |
| interval | string | No |  | Interval at which task is scheduled.
 * number of seconds (minimum is 60)
 * once
 * daily
 * weekly
 * monthly |
| requesttimeout | numeric | No |  | Deprecated as of CF11+, Removed in CF2018 Used to extend the default timeout period. |
| username | string | No |  | Username, if URL is protected. |
| password | string | No |  | Password, if URL is protected. |
| proxyserver | string | No |  | Host name or IP address of a proxy server. |
| proxyport | numeric | No | 80 | Port number to use on the proxy server. |
| proxyuser | string | No |  | User name to provide to the proxy server. |
| proxypassword | string | No |  | Password to provide to the proxy server. |
| resolveurl | boolean | No | NO | Yes: resolve links in the output page to absolute references
 No: does not |
| group | string | No | default | CF11+ The group to which the scheduled task belongs. |
| mode | string | No | server | CF10+ If the task is server-specific or application specific. |
| result (CF10+)/returnvariable (lucee) | query | No |  | Name for the query in which cfschedule returns the result variables.
NOTE: Required for `action`="list" |
| eventHandler | string | No |  | CF10+ A CFC file which implements CFIDE.scheduler.ITaskEventHandler and is invoked for events while running the task.
 Note: CF 2018 Enterprise Required; not supported in Standard Edition |
| onException | string | No | invokeHandler, if eventHandler is specified | CF10+ Specify the action to take if a task results in error.
 Note: CF 2018 Enterprise Required; not supported in Standard Edition |
| onComplete | string | No | invokeHandler | CF10+ The action or task to perform after completion of the current task. Can be used to chain dependent tasks by executing a task after this task completes.
 Note: CF 2018 Enterprise Required; not supported in Standard Edition |
| onMisfire | string | No | invokeHandler if eventHandler is specified | CF10+ Specify what to do if a task misfires. If unspecified, then no action is taken.
 Note: CF 2018 Enterprise Required; not supported in Standard Edition |
| cronTime | numeric | No |  | CF10+ Schedule the task time in quartz cron expression format (6 or 7 space-seperated values). Format is: second, minute, hour, day of month, month, day of week, year. Second value is required, as are the rest, but year is optional. |
| repeat | string | No | -1 | CF10+ Specify the number of times a given schedule has to repeat. |
| retryCount | numeric | No | 3 | CF10+ Specify the number of times to retry the task if the task fails. Must be between 0 and 3, inclusive. |
| priority | numeric | No | 5 | CF10+ Set the priority of this task. |
| exclude | string | No |  | CF10+ Comma-separated list of dates or date range on which to not execute the scheduled task. |
| cluster | boolean | No | no | CF10+ If yes, the task can be executed in a cluster setup.
 Note: CF 2018 Enterprise Required; not supported in Standard Edition |
| overwrite | boolean | No | true | CF10+ Specify whether to overwrite the output files on task execution (if true) or create new output files (if false). |
| unique | boolean | No | true | lucee4.5+ If true, the scheduled task is only executed once at time. If a task is still running from previous round no new task is started. |
| autodelete | boolean | No |  | lucee4.5+ If set to true, the scheduled task will be deleted when there is no possible future execution. |
| readonly | boolean | No |  | lucee4.5+ If true, the scheduled task can not be modified or deleted in the Lucee Administrator. |

## Create or update a task

Tell ColdFusion to run 'importData.cfm' daily at 7AM

```html
<cfschedule
 action="update"
 task="importMyCSVFileToDB"
 operation="HTTPRequest"
 startDate="5/12/2016"
 startTime="7:00 AM"
 url="http://www.mydomain.com/scheduled/importData.cfm"
 interval="daily" />
```

## Delete a scheduled task

Delete the task 'importMyCSVFileToDB' from the list of ColdFusion scheduled jobs

```html
<cfschedule
 action="delete"
 task="importMyCSVFileToDB" />
```

## Exclude a date from the task execution schedule

CF10+ Instruct ACF not to execute the task on the set date, date range, or list of dates

```html
<cfschedule
 action="update"
 task="sendClientReportEmail"
 exclude="12/24/2019 TO 1/2/2020" />
```

## Use cron time format to schedule a task

CF10+ Execute a task every 2 minutes from 3:00 AM to 10:00 AM and 9:00 PM to 11:58 PM daily

```html
<cfschedule
 action="update"
 task="myTaskName"
 cronTime="0 */2 3-10,21-23 * * ?" />
```

## List all scheduled tasks

List and dump all scheduled tasks running in ColdFusion instance

```html
<cfschedule
 action="list"
 result="scheduledList"
 />
<cfdump var="#scheduledList#" />
```
