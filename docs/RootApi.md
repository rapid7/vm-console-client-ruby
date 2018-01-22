# Rapid7VmConsole::RootApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resources**](RootApi.md#resources) | **GET** /api/3 | Resources


# **resources**
> Links resources

Resources

Returns a listing of the resources (endpoints) that are available to be invoked in this API.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::RootApi.new

begin
  #Resources
  result = api_instance.resources
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling RootApi->resources: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



