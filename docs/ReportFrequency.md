# Rapid7VmConsole::ReportFrequency

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_runtimes** | **Array&lt;String&gt;** | List the next 10 dates in the future the schedule will launch.  | [optional] 
**repeat** | [**RepeatSchedule**](RepeatSchedule.md) | Settings for repeating a scheduled task. | 
**start** | **String** | The scheduled start date and time. Date is represented in ISO 8601 format. Repeating schedules will determine the next schedule to begin based on this date and time. | 


