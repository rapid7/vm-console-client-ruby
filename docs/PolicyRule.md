# Rapid7VmConsole::PolicyRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assets** | [**AssetPolicyAssessment**](AssetPolicyAssessment.md) | A summary of asset compliance. | [optional] 
**benchmark** | [**PolicyBenchmark**](PolicyBenchmark.md) | Information about the policy benchmark. | [optional] 
**description** | **String** | A description of the rule. | [optional] 
**id** | **String** | The textual representation of the policy rule identifier. | [optional] 
**is_custom** | **BOOLEAN** | A flag indicating whether the policy rule is custom. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**name** | **String** | The name of the rule. | [optional] 
**role** | **String** | The role of the policy rule. It&#39;s value determines how it&#39;s results affect compliance. | [optional] 
**scope** | **String** | The textual representation of the policy rule scope. Policy rules that are automatically available have &#x60;\&quot;Built-in\&quot;&#x60; scope, whereas policy rules created by users have scope as &#x60;\&quot;Custom\&quot;&#x60;. | [optional] 
**status** | **String** | The overall compliance status of the policy rule. | [optional] 
**surrogate_id** | **Integer** | The identifier of the policy rule. | [optional] 
**title** | **String** | The title of the policy rule as visible to the user. | [optional] 


