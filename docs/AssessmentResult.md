# Rapid7VmConsole::AssessmentResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check_id** | **String** | The identifier of the vulnerability check. | [optional] 
**exceptions** | **Array&lt;Integer&gt;** | If the result is vulnerable with exceptions applied, the identifier(s) of the exceptions actively applied to the result. | [optional] 
**key** | **String** | An additional discriminating key used to uniquely identify between multiple instances of results on the same finding. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**port** | **Integer** | The port of the service the result was discovered on. | [optional] 
**proof** | **String** | The proof explaining why the result was found vulnerable. The proof may container embedded HTML formatting markup. | [optional] 
**protocol** | **String** | The protocol of the service the result was discovered on. | [optional] 
**status** | **String** | The status of the vulnerability check result. | 


