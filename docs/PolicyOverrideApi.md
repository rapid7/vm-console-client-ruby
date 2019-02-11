# Rapid7VmConsole::PolicyOverrideApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_policy_override**](PolicyOverrideApi.md#create_policy_override) | **POST** /api/3/policy_overrides | Policy Overrides
[**delete_policy_override**](PolicyOverrideApi.md#delete_policy_override) | **DELETE** /api/3/policy_overrides/{id} | Policy Override
[**get_asset_policy_overrides**](PolicyOverrideApi.md#get_asset_policy_overrides) | **GET** /api/3/assets/{id}/policy_overrides | Asset Policy Overrides
[**get_policy_override**](PolicyOverrideApi.md#get_policy_override) | **GET** /api/3/policy_overrides/{id} | Policy Override
[**get_policy_override_expiration**](PolicyOverrideApi.md#get_policy_override_expiration) | **GET** /api/3/policy_overrides/{id}/expires | Policy Override Expiration
[**get_policy_overrides**](PolicyOverrideApi.md#get_policy_overrides) | **GET** /api/3/policy_overrides | Policy Overrides
[**set_policy_override_expiration**](PolicyOverrideApi.md#set_policy_override_expiration) | **PUT** /api/3/policy_overrides/{id}/expires | Policy Override Expiration
[**set_policy_override_status**](PolicyOverrideApi.md#set_policy_override_status) | **POST** /api/3/policy_overrides/{id}/{status} | Policy Override Status


# **create_policy_override**
> CreatedReferencePolicyOverrideIDLink create_policy_override(opts)

Policy Overrides

Submit a policy override. The policy override can be submitted or it can be submitted and approved in a single request.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyOverrideApi.new

opts = { 
  policy_override: Rapid7VmConsole::PolicyOverride.new # PolicyOverride | The specification of a policy override. Allows users to override the compliance result of a policy rule.
}

begin
  #Policy Overrides
  result = api_instance.create_policy_override(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyOverrideApi->create_policy_override: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_override** | [**PolicyOverride**](PolicyOverride.md)| The specification of a policy override. Allows users to override the compliance result of a policy rule. | [optional] 

### Return type

[**CreatedReferencePolicyOverrideIDLink**](CreatedReferencePolicyOverrideIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_policy_override**
> Links delete_policy_override(id)

Policy Override

Removes a policy override created for a policy rule.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyOverrideApi.new

id = 789 # Integer | The identifier of the policy override.


begin
  #Policy Override
  result = api_instance.delete_policy_override(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyOverrideApi->delete_policy_override: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the policy override. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_policy_overrides**
> ResourcesPolicyOverride get_asset_policy_overrides(id)

Asset Policy Overrides

Retrieves policy overrides defined on policy rules for the specified asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyOverrideApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset Policy Overrides
  result = api_instance.get_asset_policy_overrides(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyOverrideApi->get_asset_policy_overrides: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**ResourcesPolicyOverride**](ResourcesPolicyOverride.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_override**
> PolicyOverride get_policy_override(id)

Policy Override

Retrieve the specified policy override.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyOverrideApi.new

id = 789 # Integer | The identifier of the policy override.


begin
  #Policy Override
  result = api_instance.get_policy_override(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyOverrideApi->get_policy_override: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the policy override. | 

### Return type

[**PolicyOverride**](PolicyOverride.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_override_expiration**
> String get_policy_override_expiration(id)

Policy Override Expiration

Get the expiration date for a policy override.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyOverrideApi.new

id = 789 # Integer | The identifier of the policy override.


begin
  #Policy Override Expiration
  result = api_instance.get_policy_override_expiration(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyOverrideApi->get_policy_override_expiration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the policy override. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_policy_overrides**
> PageOfPolicyOverride get_policy_overrides(opts)

Policy Overrides

Retrieves policy overrides defined on policy rules.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyOverrideApi.new

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ['sort_example'] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Policy Overrides
  result = api_instance.get_policy_overrides(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyOverrideApi->get_policy_overrides: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfPolicyOverride**](PageOfPolicyOverride.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_policy_override_expiration**
> Links set_policy_override_expiration(id, opts)

Policy Override Expiration

Set the expiration date for a policy override. This must be a valid date in the future.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyOverrideApi.new

id = 789 # Integer | The identifier of the policy override.

opts = { 
  expiration: 'expiration_example' # String | The date the policy override is set to expire. Date is represented in ISO 8601 format.
}

begin
  #Policy Override Expiration
  result = api_instance.set_policy_override_expiration(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyOverrideApi->set_policy_override_expiration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the policy override. | 
 **expiration** | **String**| The date the policy override is set to expire. Date is represented in ISO 8601 format. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_policy_override_status**
> set_policy_override_status(id, status, opts)

Policy Override Status

Update the status of the specified policy override. The status can be one of the following: `\"recall\"`, `\"approve\"`, or `\"reject\"`.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::PolicyOverrideApi.new

id = 789 # Integer | The identifier of the policy override.

status = 'status_example' # String | Policy Override Status

opts = { 
  comment: 'comment_example' # String | A comment describing the change of the policy override status.
}

begin
  #Policy Override Status
  api_instance.set_policy_override_status(id, status, opts)
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling PolicyOverrideApi->set_policy_override_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the policy override. | 
 **status** | **String**| Policy Override Status | 
 **comment** | **String**| A comment describing the change of the policy override status. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



