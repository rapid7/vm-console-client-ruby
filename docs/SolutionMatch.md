# Rapid7VmConsole::SolutionMatch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check** | **String** | The identifier of the vulnerability check used to match the solution, if type is &#x60;check&#x60;. | [optional] 
**confidence** | **String** | The confidence of the matching process for the solution. | [optional] 
**fingerprint** | [**Fingerprint**](Fingerprint.md) | The fingerprint used to perform solution matching, if type is &#x60;operating-system&#x60;, &#x60;service&#x60;, or &#x60;software&#x60;. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**solution** | **String** | The identifier of the matched solution. | [optional] 
**type** | **String** | The means by which a solution was matched. | [optional] 


