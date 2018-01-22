# Rapid7VmConsole::Settings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_linking** | **BOOLEAN** | Whether asset linking is enabled. | [optional] 
**authentication** | [**AuthenticationSettings**](AuthenticationSettings.md) | Details the authentication settings. | [optional] 
**database** | [**DatabaseSettings**](DatabaseSettings.md) | Details the database settings. | [optional] 
**directory** | **String** | The root directory of the console. | [optional] 
**insight_platform** | **BOOLEAN** | Whether the usage of the Insight Platform is enabled. | [optional] 
**insight_platform_region** | **String** | The region used for the Insight Platform, if enabled. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**risk** | [**RiskSettings**](RiskSettings.md) | Details risk configuration and settings. | [optional] 
**scan** | [**ScanSettings**](ScanSettings.md) | Details the global settings for scanning. | [optional] 
**serial_number** | **String** | The console serial number. | [optional] 
**smtp** | [**SmtpSettings**](SmtpSettings.md) | Global SMTP distribution settings. | [optional] 
**updates** | [**UpdateSettings**](UpdateSettings.md) | Details the update settings. | [optional] 
**uuid** | **String** | The universally unique identifier (UUID) of the console. | [optional] 
**web** | [**WebSettings**](WebSettings.md) | Details the web server settings. | [optional] 


