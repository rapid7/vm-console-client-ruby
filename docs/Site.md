# Rapid7VmConsole::Site

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assets** | **Integer** | The number of assets that belong to the site. | [optional] 
**connection_type** | **String** | The type of discovery connection configured for the site. This property only applies to dynamic sites. | [optional] 
**description** | **String** | The site description. | [optional] 
**id** | **Integer** | The identifier of the site. | [optional] 
**importance** | **String** | The site importance. | [optional] 
**last_scan_time** | **String** | The date and time of the site&#39;s last scan. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**name** | **String** | The site name. | [optional] 
**risk_score** | **Float** | The risk score (with criticality adjustments) of the site. | [optional] 
**scan_engine** | **Integer** | The identifier of the scan engine configured in the site. | [optional] 
**scan_template** | **String** | The identifier of the scan template configured in the site. | [optional] 
**type** | **String** | The type of the site. | [optional] 
**vulnerabilities** | [**Vulnerabilities**](Vulnerabilities.md) | Summary information for distinct vulnerabilities found on the assets. | [optional] 


