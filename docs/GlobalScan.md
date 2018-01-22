# Rapid7VmConsole::GlobalScan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assets** | **Integer** | The number of assets found in the scan. | [optional] 
**duration** | **String** | The duration of the scan in ISO8601 format. | [optional] 
**end_time** | **String** | The end time of the scan in ISO8601 format. | [optional] 
**engine_id** | **Integer** | The identifier of the scan engine. | [optional] 
**engine_name** | **String** | The name of the scan engine. | [optional] 
**id** | **Integer** | The identifier of the scan. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**message** | **String** | The reason for the scan status. | [optional] 
**scan_name** | **String** | The user-driven scan name for the scan. | [optional] 
**scan_type** | **String** | The scan type (automated, manual, scheduled).  | [optional] 
**site_id** | **Integer** |  | [optional] 
**site_name** | **String** |  | [optional] 
**start_time** | **String** | The start time of the scan in ISO8601 format. | [optional] 
**started_by** | **String** | The name of the user that started the scan. | [optional] 
**status** | **String** | The scan status. | [optional] 
**vulnerabilities** | [**Vulnerabilities**](Vulnerabilities.md) | The vulnerability synopsis of the scan. | [optional] 


