# Rapid7VmConsole::ScanTemplateDiscoveryPerformanceTimeout

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**initial** | **String** | The initial timeout to wait between retry attempts. The value is specified as a ISO8601 duration and can range from &#x60;PT0.5S&#x60; (500ms) to &#x60;P30S&#x60; (30s). Defaults to &#x60;PT0.5S&#x60;. | [optional] 
**maximum** | **String** | The maximum time to wait between retries. The value is specified as a ISO8601 duration and can range from &#x60;PT0.5S&#x60; (500ms) to &#x60;P30S&#x60; (30s). Defaults to &#x60;PT3S&#x60;. | [optional] 
**minimum** | **String** | The minimum time to wait between retries. The value is specified as a ISO8601 duration and can range from &#x60;PT0.5S&#x60; (500ms) to &#x60;P30S&#x60; (30s). Defaults to &#x60;PT0.5S&#x60;. | [optional] 


