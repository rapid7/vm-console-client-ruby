# Rapid7VmConsole::AdhocScan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_group_ids** | **Array&lt;Integer&gt;** | The asset groups that should be included as a part of the scan. Only asset groups assigned to the site can be specified for a scan. This value should be an array of integers representing the unique identifiers of the asset groups. | [optional] 
**engine_id** | **Integer** | The identifier of the scan engine. | [optional] 
**hosts** | **Array&lt;String&gt;** | The hosts that should be included as a part of the scan. This should be a mixture of IP Addresses and Hostnames as a String array. | [optional] 
**name** | **String** | The user-driven scan name for the scan. | [optional] 
**template_id** | **String** | The identifier of the scan template | [optional] 


