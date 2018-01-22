# Rapid7VmConsole::Asset

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addresses** | [**Array&lt;Address&gt;**](Address.md) | All addresses discovered on the asset. | [optional] 
**assessed_for_policies** | **BOOLEAN** | Whether the asset has been assessed for policies at least once. | [optional] 
**assessed_for_vulnerabilities** | **BOOLEAN** | Whether the asset has been assessed for vulnerabilities at least once. | [optional] 
**configurations** | [**Array&lt;Configuration&gt;**](Configuration.md) | Configuration key-values pairs enumerated on the asset. | [optional] 
**databases** | [**Array&lt;Database&gt;**](Database.md) | The databases enumerated on the asset. | [optional] 
**files** | **Array&lt;File&gt;** | The files discovered with searching on the asset. | [optional] 
**history** | [**Array&lt;AssetHistory&gt;**](AssetHistory.md) | The history of changes to the asset over time. | [optional] 
**host_name** | **String** | The primary host name (local or FQDN) of the asset. | [optional] 
**host_names** | [**Array&lt;HostName&gt;**](HostName.md) | All host names or aliases discovered on the asset. | [optional] 
**id** | **Integer** | The identifier of the asset. | [optional] 
**ids** | [**Array&lt;UniqueId&gt;**](UniqueId.md) | Unique identifiers found on the asset, such as hardware or operating system identifiers. | [optional] 
**ip** | **String** | The primary IPv4 or IPv6 address of the asset. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**mac** | **String** | The primary Media Access Control (MAC) address of the asset. The format is six groups of two hexadecimal digits separated by colons. | [optional] 
**os** | **String** | The full description of the operating system of the asset. | [optional] 
**os_fingerprint** | [**OperatingSystem**](OperatingSystem.md) | The details of the operating system of the asset. | [optional] 
**raw_risk_score** | **Float** | The base risk score of the asset. | [optional] 
**risk_score** | **Float** | The risk score (with criticality adjustments) of the asset. | [optional] 
**services** | [**Array&lt;Service&gt;**](Service.md) | The services discovered on the asset. | [optional] 
**software** | [**Array&lt;Software&gt;**](Software.md) | The software discovered on the asset. | [optional] 
**type** | **String** | The type of asset. | [optional] 
**user_groups** | [**Array&lt;GroupAccount&gt;**](GroupAccount.md) | The group accounts enumerated on the asset. | [optional] 
**users** | [**Array&lt;UserAccount&gt;**](UserAccount.md) | The user accounts enumerated on the asset. | [optional] 
**vulnerabilities** | [**AssetVulnerabilities**](AssetVulnerabilities.md) | Summary information for vulnerabilities on the asset. | [optional] 


