# Rapid7VmConsole::PolicyApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_asset_policy_children**](PolicyApi.md#get_asset_policy_children) | **GET** /api/3/assets/{assetId}/policies/{policyId}/children | Policy Rules or Groups Directly Under Policy For Asset
[**get_asset_policy_group_children**](PolicyApi.md#get_asset_policy_group_children) | **GET** /api/3/assets/{assetId}/policies/{policyId}/groups/{groupId}/children | Policy Rules or Groups Directly Under Policy Group For Asset
[**get_asset_policy_rules_summary**](PolicyApi.md#get_asset_policy_rules_summary) | **GET** /api/3/assets/{assetId}/policies/{policyId}/rules | Policy Rules For Asset
[**get_descendant_policy_rules**](PolicyApi.md#get_descendant_policy_rules) | **GET** /api/3/policies/{policyId}/groups/{groupId}/rules | Policy Rules Under Policy Group
[**get_disabled_policy_rules**](PolicyApi.md#get_disabled_policy_rules) | **GET** /api/3/policies/{policyId}/rules/disabled | Disabled Policy Rules
[**get_policies**](PolicyApi.md#get_policies) | **GET** /api/3/policies | Policies
[**get_policies_for_asset**](PolicyApi.md#get_policies_for_asset) | **GET** /api/3/assets/{assetId}/policies | Policies For Asset
[**get_policy**](PolicyApi.md#get_policy) | **GET** /api/3/policies/{policyId} | Policy
[**get_policy_asset_result**](PolicyApi.md#get_policy_asset_result) | **GET** /api/3/policies/{policyId}/assets/{assetId} | Policy Asset Result
[**get_policy_asset_results**](PolicyApi.md#get_policy_asset_results) | **GET** /api/3/policies/{policyId}/assets | Policy Asset Results
[**get_policy_children**](PolicyApi.md#get_policy_children) | **GET** /api/3/policies/{id}/children | Policy Rules or Groups Directly Under Policy
[**get_policy_group**](PolicyApi.md#get_policy_group) | **GET** /api/3/policies/{policyId}/groups/{groupId} | Policy Group
[**get_policy_group_asset_result**](PolicyApi.md#get_policy_group_asset_result) | **GET** /api/3/policies/{policyId}/groups/{groupId}/assets/{assetId} | Asset Compliance For Policy Rules Under Policy Group
[**get_policy_group_asset_results**](PolicyApi.md#get_policy_group_asset_results) | **GET** /api/3/policies/{policyId}/groups/{groupId}/assets | Assets Compliance For Policy Rules Under Policy Group
[**get_policy_group_children**](PolicyApi.md#get_policy_group_children) | **GET** /api/3/policies/{policyId}/groups/{groupId}/children | Policy Rules or Groups Directly Under Policy Group
[**get_policy_group_rules_with_asset_assessment**](PolicyApi.md#get_policy_group_rules_with_asset_assessment) | **GET** /api/3/assets/{assetId}/policies/{policyId}/groups/{groupId}/rules | Policy Rules Under Policy Group For Asset
[**get_policy_groups**](PolicyApi.md#get_policy_groups) | **GET** /api/3/policies/{policyId}/groups | Policy Groups
[**get_policy_rule**](PolicyApi.md#get_policy_rule) | **GET** /api/3/policies/{policyId}/rules/{ruleId} | Policy Rule
[**get_policy_rule_asset_result**](PolicyApi.md#get_policy_rule_asset_result) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/assets/{assetId} | Asset Compliance For Policy Rule
[**get_policy_rule_asset_result_proof**](PolicyApi.md#get_policy_rule_asset_result_proof) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/assets/{assetId}/proof | Policy Rule Proof For Asset
[**get_policy_rule_asset_results**](PolicyApi.md#get_policy_rule_asset_results) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/assets | Assets Compliance For Policy Rule
[**get_policy_rule_controls**](PolicyApi.md#get_policy_rule_controls) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/controls | Policy Rule Controls
[**get_policy_rule_rationale**](PolicyApi.md#get_policy_rule_rationale) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/rationale | Policy Rule Rationale
[**get_policy_rule_remediation**](PolicyApi.md#get_policy_rule_remediation) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/remediation | Policy Rule Remediation
[**get_policy_rules**](PolicyApi.md#get_policy_rules) | **GET** /api/3/policies/{policyId}/rules | Policy Rules
[**get_policy_summary**](PolicyApi.md#get_policy_summary) | **GET** /api/3/policy/summary | Policy Compliance Summaries


# **get_asset_policy_children**
> PageOfAssetPolicyItem get_asset_policy_children(asset_id, policy_id)

Policy Rules or Groups Directly Under Policy For Asset

Retrieves a paged resource of either policy rules, or groups, that are defined directly underneath the specified policy with rule compliance results for the specified asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

asset_id = 789 # Integer | The identifier of the asset.

policy_id = 789 # Integer | The identifier of the policy


begin
  #Policy Rules or Groups Directly Under Policy For Asset
  result = api_instance.get_asset_policy_children(asset_id, policy_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_asset_policy_children: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **Integer**| The identifier of the asset. | 
 **policy_id** | **Integer**| The identifier of the policy | 

### Return type

[**PageOfAssetPolicyItem**](PageOfAssetPolicyItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_policy_group_children**
> PageOfAssetPolicyItem get_asset_policy_group_children(asset_id, policy_id, group_id)

Policy Rules or Groups Directly Under Policy Group For Asset

Retrieves a paged resource of either policy rules, or groups, that are defined directly underneath the specified policy group with rule compliance results for the specified asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

asset_id = 789 # Integer | The identifier of the asset.

policy_id = 789 # Integer | The identifier of the policy

group_id = 789 # Integer | The identifier of the policy group.


begin
  #Policy Rules or Groups Directly Under Policy Group For Asset
  result = api_instance.get_asset_policy_group_children(asset_id, policy_id, group_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_asset_policy_group_children: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **Integer**| The identifier of the asset. | 
 **policy_id** | **Integer**| The identifier of the policy | 
 **group_id** | **Integer**| The identifier of the policy group. | 

### Return type

[**PageOfAssetPolicyItem**](PageOfAssetPolicyItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_policy_rules_summary**
> PageOfPolicyRule get_asset_policy_rules_summary(asset_id, policy_id, opts)

Policy Rules For Asset

Retrieves the list of policy rules with compliance results for the specified asset and policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

asset_id = 789 # Integer | The identifier of the asset.

policy_id = 789 # Integer | The identifier of the policy

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policy Rules For Asset
  result = api_instance.get_asset_policy_rules_summary(asset_id, policy_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_asset_policy_rules_summary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **Integer**| The identifier of the asset. | 
 **policy_id** | **Integer**| The identifier of the policy | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyRule**](PageOfPolicyRule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_descendant_policy_rules**
> PageOfPolicyRule get_descendant_policy_rules(policy_id, group_id, opts)

Policy Rules Under Policy Group

Retrieves the list of policy rules defined directly, or indirectly, underneath the specified policy group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

group_id = 789 # Integer | The identifier of the policy group.

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policy Rules Under Policy Group
  result = api_instance.get_descendant_policy_rules(policy_id, group_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_descendant_policy_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **group_id** | **Integer**| The identifier of the policy group. | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyRule**](PageOfPolicyRule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_disabled_policy_rules**
> PageOfPolicyRule get_disabled_policy_rules(policy_id, opts)

Disabled Policy Rules

Retrieves a paged resource of disabled policy rules for the specified policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Disabled Policy Rules
  result = api_instance.get_disabled_policy_rules(policy_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_disabled_policy_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyRule**](PageOfPolicyRule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policies**
> PageOfPolicy get_policies(opts)

Policies

Retrieves a paged resource of policies.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

opts = { 
  filter: "filter_example", # String | Filters the retrieved policies with those whose titles that match the parameter.
  scanned_only: true, # BOOLEAN | Flag indicating the policies retrieved should only include those with Pass or Fail compliance results. The list of scanned policies is based on the user's list of accessible assets.
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policies
  result = api_instance.get_policies(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| Filters the retrieved policies with those whose titles that match the parameter. | [optional] 
 **scanned_only** | **BOOLEAN**| Flag indicating the policies retrieved should only include those with Pass or Fail compliance results. The list of scanned policies is based on the user&#39;s list of accessible assets. | [optional] 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicy**](PageOfPolicy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policies_for_asset**
> PageOfAssetPolicy get_policies_for_asset(asset_id, opts)

Policies For Asset

Retrieves the list of policies with compliance results for the specified asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

asset_id = 789 # Integer | The identifier of the asset.

opts = { 
  applicable_only: true, # BOOLEAN | An optional boolean parameter indicating the policies retrieved should only include those with a policy compliance status of either a PASS of FAIL result. Default value is `false`, which will also include policies with a compliance status of NOT_APPLICABLE.
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policies For Asset
  result = api_instance.get_policies_for_asset(asset_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policies_for_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **Integer**| The identifier of the asset. | 
 **applicable_only** | **BOOLEAN**| An optional boolean parameter indicating the policies retrieved should only include those with a policy compliance status of either a PASS of FAIL result. Default value is &#x60;false&#x60;, which will also include policies with a compliance status of NOT_APPLICABLE. | [optional] 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfAssetPolicy**](PageOfAssetPolicy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy**
> Policy get_policy(policy_id)

Policy

Retrieves the specified policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy


begin
  #Policy
  result = api_instance.get_policy(policy_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 

### Return type

[**Policy**](Policy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_asset_result**
> PolicyAsset get_policy_asset_result(policy_id, asset_id)

Policy Asset Result

Retrieves an asset resource with rule compliance results for the specified asset and policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

asset_id = 789 # Integer | The identifier of the asset.


begin
  #Policy Asset Result
  result = api_instance.get_policy_asset_result(policy_id, asset_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_asset_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **asset_id** | **Integer**| The identifier of the asset. | 

### Return type

[**PolicyAsset**](PolicyAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_asset_results**
> PageOfPolicyAsset get_policy_asset_results(policy_id, opts)

Policy Asset Results

Retrieves asset resources with rule compliance results for the specified policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

opts = { 
  applicable_only: true, # BOOLEAN | An optional boolean parameter indicating the assets retrieved should only include those with rule results of either PASS or FAIL. Default value is `false`, which will also include assets with a compliance status of NOT_APPLICABLE.
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policy Asset Results
  result = api_instance.get_policy_asset_results(policy_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_asset_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **applicable_only** | **BOOLEAN**| An optional boolean parameter indicating the assets retrieved should only include those with rule results of either PASS or FAIL. Default value is &#x60;false&#x60;, which will also include assets with a compliance status of NOT_APPLICABLE. | [optional] 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyAsset**](PageOfPolicyAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_children**
> PageOfPolicyItem get_policy_children(id)

Policy Rules or Groups Directly Under Policy

Retrieves a paged resource of either policy rules, or groups, that are defined directly underneath the specified policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

id = 789 # Integer | The identifier of the policy


begin
  #Policy Rules or Groups Directly Under Policy
  result = api_instance.get_policy_children(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_children: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the policy | 

### Return type

[**PageOfPolicyItem**](PageOfPolicyItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_group**
> PolicyGroup get_policy_group(policy_id, group_id)

Policy Group

Retrieves the specified policy group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

group_id = 789 # Integer | The identifier of the policy group.


begin
  #Policy Group
  result = api_instance.get_policy_group(policy_id, group_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **group_id** | **Integer**| The identifier of the policy group. | 

### Return type

[**PolicyGroup**](PolicyGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_group_asset_result**
> PolicyAsset get_policy_group_asset_result(policy_id, group_id, asset_id)

Asset Compliance For Policy Rules Under Policy Group

Retrieves an asset resource with rule compliance status against all rules under the specified policy group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

group_id = 789 # Integer | The identifier of the policy group.

asset_id = 789 # Integer | The identifier of the asset.


begin
  #Asset Compliance For Policy Rules Under Policy Group
  result = api_instance.get_policy_group_asset_result(policy_id, group_id, asset_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_group_asset_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **group_id** | **Integer**| The identifier of the policy group. | 
 **asset_id** | **Integer**| The identifier of the asset. | 

### Return type

[**PolicyAsset**](PolicyAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_group_asset_results**
> PageOfPolicyAsset get_policy_group_asset_results(policy_id, group_id, opts)

Assets Compliance For Policy Rules Under Policy Group

Retrieves asset resources with rule compliance status against all rules under the specified policy group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

group_id = 789 # Integer | The identifier of the policy group.

opts = { 
  applicable_only: true, # BOOLEAN | An optional boolean parameter indicating the assets retrieved should only include those with rule results of either PASS or FAIL. Default value is `false`, which will also include assets with a compliance status of NOT_APPLICABLE.
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Assets Compliance For Policy Rules Under Policy Group
  result = api_instance.get_policy_group_asset_results(policy_id, group_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_group_asset_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **group_id** | **Integer**| The identifier of the policy group. | 
 **applicable_only** | **BOOLEAN**| An optional boolean parameter indicating the assets retrieved should only include those with rule results of either PASS or FAIL. Default value is &#x60;false&#x60;, which will also include assets with a compliance status of NOT_APPLICABLE. | [optional] 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyAsset**](PageOfPolicyAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_group_children**
> PageOfPolicyItem get_policy_group_children(policy_id, group_id)

Policy Rules or Groups Directly Under Policy Group

Retrieves a paged resource of either policy rules, or groups, that are defined directly underneath the specified policy group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

group_id = 789 # Integer | The identifier of the policy group.


begin
  #Policy Rules or Groups Directly Under Policy Group
  result = api_instance.get_policy_group_children(policy_id, group_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_group_children: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **group_id** | **Integer**| The identifier of the policy group. | 

### Return type

[**PageOfPolicyItem**](PageOfPolicyItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_group_rules_with_asset_assessment**
> PageOfPolicyRule get_policy_group_rules_with_asset_assessment(asset_id, policy_id, group_id, opts)

Policy Rules Under Policy Group For Asset

Retrieves the list of policy rules defined directly, or indirectly, underneath the specified policy group and the compliance results for the specified asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

asset_id = 789 # Integer | The identifier of the asset.

policy_id = 789 # Integer | The identifier of the policy

group_id = 789 # Integer | The identifier of the policy group.

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policy Rules Under Policy Group For Asset
  result = api_instance.get_policy_group_rules_with_asset_assessment(asset_id, policy_id, group_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_group_rules_with_asset_assessment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **Integer**| The identifier of the asset. | 
 **policy_id** | **Integer**| The identifier of the policy | 
 **group_id** | **Integer**| The identifier of the policy group. | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyRule**](PageOfPolicyRule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_groups**
> PageOfPolicyGroup get_policy_groups(policy_id, opts)

Policy Groups

Retrieves a paged resource of policy groups for the specified policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policy Groups
  result = api_instance.get_policy_groups(policy_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyGroup**](PageOfPolicyGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_rule**
> PolicyRule get_policy_rule(policy_id, rule_id)

Policy Rule

Retrieves the specified policy rule.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

rule_id = 789 # Integer | The identifier of the policy rule.


begin
  #Policy Rule
  result = api_instance.get_policy_rule(policy_id, rule_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **rule_id** | **Integer**| The identifier of the policy rule. | 

### Return type

[**PolicyRule**](PolicyRule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_rule_asset_result**
> PolicyAsset get_policy_rule_asset_result(policy_id, rule_id, asset_id)

Asset Compliance For Policy Rule

Retrieves an asset resource with rule compliance results for the specified policy policy rule.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

rule_id = 789 # Integer | The identifier of the policy rule.

asset_id = 789 # Integer | The identifier of the asset.


begin
  #Asset Compliance For Policy Rule
  result = api_instance.get_policy_rule_asset_result(policy_id, rule_id, asset_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_rule_asset_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **rule_id** | **Integer**| The identifier of the policy rule. | 
 **asset_id** | **Integer**| The identifier of the asset. | 

### Return type

[**PolicyAsset**](PolicyAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_rule_asset_result_proof**
> String get_policy_rule_asset_result_proof(policy_id, rule_id, asset_id)

Policy Rule Proof For Asset

Retrieves the policy rule proof captured during evaluation against the specified asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

rule_id = 789 # Integer | The identifier of the policy rule.

asset_id = 789 # Integer | The identifier of the asset.


begin
  #Policy Rule Proof For Asset
  result = api_instance.get_policy_rule_asset_result_proof(policy_id, rule_id, asset_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_rule_asset_result_proof: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **rule_id** | **Integer**| The identifier of the policy rule. | 
 **asset_id** | **Integer**| The identifier of the asset. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html



# **get_policy_rule_asset_results**
> PageOfPolicyAsset get_policy_rule_asset_results(policy_id, rule_id, opts)

Assets Compliance For Policy Rule

Retrieves asset resources with rule compliance results for the specified policy policy rule.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

rule_id = 789 # Integer | The identifier of the policy rule.

opts = { 
  applicable_only: true, # BOOLEAN | An optional boolean parameter indicating the assets retrieved should only include those with rule results of either PASS or FAIL. Default value is `false`, which will also include assets with a compliance status of NOT_APPLICABLE.
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Assets Compliance For Policy Rule
  result = api_instance.get_policy_rule_asset_results(policy_id, rule_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_rule_asset_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **rule_id** | **Integer**| The identifier of the policy rule. | 
 **applicable_only** | **BOOLEAN**| An optional boolean parameter indicating the assets retrieved should only include those with rule results of either PASS or FAIL. Default value is &#x60;false&#x60;, which will also include assets with a compliance status of NOT_APPLICABLE. | [optional] 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyAsset**](PageOfPolicyAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_rule_controls**
> PageOfPolicyControl get_policy_rule_controls(policy_id, rule_id, opts)

Policy Rule Controls

Retrieves all NIST SP 800-53 controls mappings for each CCE within the specified policy rule.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

rule_id = 789 # Integer | The identifier of the policy rule.

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policy Rule Controls
  result = api_instance.get_policy_rule_controls(policy_id, rule_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_rule_controls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **rule_id** | **Integer**| The identifier of the policy rule. | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyControl**](PageOfPolicyControl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_rule_rationale**
> String get_policy_rule_rationale(policy_id, rule_id)

Policy Rule Rationale

Retrieves the policy rule rationale for the specified policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

rule_id = 789 # Integer | The identifier of the policy rule.


begin
  #Policy Rule Rationale
  result = api_instance.get_policy_rule_rationale(policy_id, rule_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_rule_rationale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **rule_id** | **Integer**| The identifier of the policy rule. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html



# **get_policy_rule_remediation**
> String get_policy_rule_remediation(policy_id, rule_id)

Policy Rule Remediation

Retrieves the policy rule remediation for the specified policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

rule_id = 789 # Integer | The identifier of the policy rule.


begin
  #Policy Rule Remediation
  result = api_instance.get_policy_rule_remediation(policy_id, rule_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_rule_remediation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **rule_id** | **Integer**| The identifier of the policy rule. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html



# **get_policy_rules**
> PageOfPolicyRule get_policy_rules(policy_id, opts)

Policy Rules

Retrieves a paged resource of policy rules for the specified policy.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

policy_id = 789 # Integer | The identifier of the policy

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policy Rules
  result = api_instance.get_policy_rules(policy_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **Integer**| The identifier of the policy | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyRule**](PageOfPolicyRule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_summary**
> PolicySummaryResource get_policy_summary

Policy Compliance Summaries

Retrieves a compliance summary of all policies.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyApi.new

begin
  #Policy Compliance Summaries
  result = api_instance.get_policy_summary
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyApi->get_policy_summary: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PolicySummaryResource**](PolicySummaryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



