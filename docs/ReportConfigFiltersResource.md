# Rapid7VmConsole::ReportConfigFiltersResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**categories** | [**ReportConfigCategoryFilters**](ReportConfigCategoryFilters.md) | Vulnerability categories to include or exclude. Only &#x60;included&#x60; or &#x60;excluded&#x60; may be specified, but not both. | [optional] 
**severity** | **String** | The vulnerability severities to include. Defaults to &#x60;all&#x60;. | [optional] 
**statuses** | **Array&lt;String&gt;** | The vulnerability statuses to include. Defaults to [ &#x60;vulnerable&#x60;, &#x60;vulnerable-version&#x60;, &#x60;potentially-vulnerable&#x60; ]. | [optional] 


