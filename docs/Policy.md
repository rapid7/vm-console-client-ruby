# Rapid7VmConsole::Policy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Array&lt;Integer&gt;** | The identifiers of the policies enabled to be checked during a scan. No policies are enabled by default. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**recursive_windows_fs_search** | **BOOLEAN** | Whether recursive windows file searches are enabled, if your internal security practices require this capability. Recursive file searches can increase scan times by several hours, depending on the number of files and other factors, so this setting is disabled for Windows systems by default. Defaults to &#x60;false&#x60;. | [optional] 
**store_scap** | **BOOLEAN** | Whether Asset Reporting Format (ARF) results are stored. If you are required to submit reports of your policy scan results to the U.S. government in ARF for SCAP certification, you will need to store SCAP data so that it can be exported in this format. Note that stored SCAP data can accumulate rapidly, which can have a significant impact on file storage. Defaults to &#x60;false&#x60;. | [optional] 


