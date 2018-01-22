# Rapid7VmConsole::SyslogAlert

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **BOOLEAN** | Flag indicating the alert is enabled. | 
**enabled_scan_events** | [**ScanEvents**](ScanEvents.md) | Allows the user to specify which scan events generate an alert. Default values will be chosen if property is not specified as apart of the request. The default values are documented in the properties of &#x60;enabledScanEvents&#x60;. | [optional] 
**enabled_vulnerability_events** | [**VulnerabilityEvents**](VulnerabilityEvents.md) | Allows the user to specify which vulnerability result events generate an alert. Default values will be chosen if property is not specified as apart of the request. The default values are documented in the properties of &#x60;enabledVulnerabilityEvents&#x60;. | [optional] 
**id** | **Integer** | The identifier of the alert. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] 
**maximum_alerts** | **Integer** | The maximum number of alerts that will be issued. To disable maximum alerts, omit the property in the request or specify the property with a value of &#x60;null&#x60;. | [optional] 
**name** | **String** | The name of the alert. | 
**notification** | **String** | The type of alert. | 
**server** | **String** | The Syslog server to send messages to. | 


