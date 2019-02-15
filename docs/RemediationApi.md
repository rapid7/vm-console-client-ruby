# Rapid7VmConsole::RemediationApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_asset_vulnerability_solutions**](RemediationApi.md#get_asset_vulnerability_solutions) | **GET** /api/3/assets/{id}/vulnerabilities/{vulnerabilityId}/solution | Asset Vulnerability Solution


# **get_asset_vulnerability_solutions**
> ResourcesMatchedSolution get_asset_vulnerability_solutions(id, vulnerability_id)

Asset Vulnerability Solution

Returns the highest-superceding rollup solutions for a vulnerability on an asset. The solution(s) selected will be the most recent and cost-effective means by which the vulnerability can be remediated.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::RemediationApi.new

id = 789 # Integer | The identifier of the asset.

vulnerability_id = 'vulnerability_id_example' # String | The identifier of the vulnerability.


begin
  #Asset Vulnerability Solution
  result = api_instance.get_asset_vulnerability_solutions(id, vulnerability_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling RemediationApi->get_asset_vulnerability_solutions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **vulnerability_id** | **String**| The identifier of the vulnerability. | 

### Return type

[**ResourcesMatchedSolution**](ResourcesMatchedSolution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



