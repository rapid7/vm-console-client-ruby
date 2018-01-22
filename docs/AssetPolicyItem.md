# Rapid7VmConsole::AssetPolicyItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assets** | [**AssetPolicyAssessment**](AssetPolicyAssessment.md) | A summary of asset compliance. | [optional] 
**description** | **String** | A description of the policy rule or group. | [optional] 
**has_override** | **BOOLEAN** | A flag indicating whether the policy rule has an active override applied to it. This field only applies to resources representing policy rules.  | [optional] 
**id** | **Integer** | The identifier of the policy rule or group. | [optional] 
**is_unscored** | **BOOLEAN** | A flag indicating whether the policy rule has a role of &#x60;\&quot;unscored\&quot;&#x60;. This field only applies to resources representing policy rules. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**name** | **String** | The name of the policy rule or group. | [optional] 
**policy** | [**PolicyMetadataResource**](PolicyMetadataResource.md) | Information about the policy. | [optional] 
**rules** | [**PolicyRuleAssessmentResource**](PolicyRuleAssessmentResource.md) | A summary of rule compliance for multiple policy rules. This field only applies to resources representing policy groups. | [optional] 
**scope** | **String** | The textual representation of the policy rule/group scope. Policy rules or groups that are automatically available have &#x60;\&quot;Built-in\&quot;&#x60; scope, whereas policy rules or groups created by users have scope as &#x60;\&quot;Custom\&quot;&#x60;. | [optional] 
**status** | **String** | The asset&#39;s rule compliance status. | [optional] 
**title** | **String** | The title of the policy rule, or group, as visible to the user. | [optional] 
**type** | **String** | Indicates whether the resource represents either a policy rule or group. | [optional] 


