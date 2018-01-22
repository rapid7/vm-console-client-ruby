# Rapid7VmConsole::PolicyOverrideScope

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset** | **Integer** | The identifier of the asset whose compliance results are to be overridden. Property is required if the property &#x60;scope&#x60; is set to either &#x60;\&quot;specific-asset\&quot;&#x60; or &#x60;\&quot;specific-asset-until-next-scan\&quot;&#x60;. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] 
**new_result** | **String** | The new policy rule result after the override is applied. | 
**original_result** | **String** | The original policy rule result before the override was applied. This property only applies to overrides with a scope of either &#x60;\&quot;specific-asset\&quot;&#x60; or &#x60;\&quot;specific-asset-until-next-scan\&quot;&#x60;. | [optional] 
**rule** | **Integer** | The identifier of the policy rule whose compliance results are to be overridden. | 
**type** | **String** | The scope of assets affected by the policy override. Can be one of the following values:  | Value                              | Description                                                                                                                                                 |  | ---------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |  | &#x60;\&quot;all-assets\&quot;&#x60;                     | Overrides the compliance result of all assets evaluated with the specified policy rule.                                                                     |  | &#x60;\&quot;specific-asset\&quot;&#x60;                 | Overrides the compliance result of a single asset evaluated with the specified policy rule.                                                                 |  | &#x60;\&quot;specific-asset-until-next-scan\&quot;&#x60; | Overrides the compliance result of a single asset evaluated with the specified policy rule until the next time asset is evaluated against that policy rule. |   | 


