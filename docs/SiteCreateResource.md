# Rapid7VmConsole::SiteCreateResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | The site&#39;s description. | [optional] 
**engine_id** | **Integer** | The identifier of a scan engine. Default scan engine is selected when not specified. | [optional] 
**importance** | **String** | The site importance. Defaults to &#x60;\&quot;normal\&quot;&#x60; if not specified. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] 
**name** | **String** | The site name. Name must be unique. | 
**scan** | [**ScanScope**](ScanScope.md) | Defines the scope of scan targets for the site, which can be addresses, or asset groups, for static sites and a discovery configuration for dynamic sites. Only one property must be set by the user when saving a site. | [optional] 
**scan_template_id** | **String** | The identifier of a scan template. Default scan template is selected when not specified. | [optional] 


