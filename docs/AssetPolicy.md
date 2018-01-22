# Rapid7VmConsole::AssetPolicy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**benchmark_name** | **String** | The name of the policy&#39;s benchmark. | [optional] 
**benchmark_version** | **String** | The version number of the benchmark that includes the policy. | [optional] 
**category** | **String** | A grouping of similar benchmarks based on their source, purpose, or other criteria. Examples include FDCC, USGCB, and CIS. | [optional] 
**description** | **String** | The description of the policy. | [optional] 
**failed_assets_count** | **Integer** | The number of assets that are not compliant with the policy. The assets considered in the calculation are based on the user&#39;s list of accessible assets. | [optional] 
**failed_rules_count** | **Integer** | The number of rules in the policy that are not compliant with any scanned assets. The assets considered in the calculation are based on the user&#39;s list of accessible assets. | [optional] 
**id** | **String** | The textual representation of the policy identifier. | [optional] 
**is_custom** | **BOOLEAN** | A flag indicating whether the policy is custom. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**not_applicable_assets_count** | **Integer** | The number of assets that were attempted to be scanned, but are not applicable to the policy. The assets considered in the calculation are based on the user&#39;s list of accessible assets. | [optional] 
**not_applicable_rules_count** | **Integer** | The number of rules in the policy that are not applicable with any scanned assets. The assets considered in the calculation are based on the user&#39;s list of accessible assets. | [optional] 
**passed_assets_count** | **Integer** | The number of assets that are compliant with the policy. The assets considered in the calculation are based on the user&#39;s list of accessible assets. | [optional] 
**passed_rules_count** | **Integer** | The number of rules in the policy that are compliant with all scanned assets. The assets considered in the calculation are based on the user&#39;s list of accessible assets. | [optional] 
**policy_name** | **String** | The name of the policy. | [optional] 
**rule_compliance** | **Float** | The ratio of PASS results for the rules to the total number of rules in each policy. | [optional] 
**rule_compliance_delta** | **Float** | The change in rule compliance between the last two scans of all assets. The list of scanned policies is based on the user&#39;s list of accessible assets. | [optional] 
**scope** | **String** | The textual representation of the policy scope. Policies that are automatically available have &#x60;\&quot;Built-in\&quot;&#x60; scope, whereas policies created by users have scope as &#x60;\&quot;Custom\&quot;&#x60;. | [optional] 
**status** | **String** | The overall compliance status of the policy. | [optional] 
**surrogate_id** | **Integer** | The identifier of the policy | [optional] 
**title** | **String** | The title of the policy as visible to the user. | [optional] 
**unscored_rules** | **Integer** | The number of rules defined in the policy with a role of \&quot;unscored\&quot;. These rules will not affect rule compliance scoring for the policy. | [optional] 


