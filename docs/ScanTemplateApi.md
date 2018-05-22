# Rapid7VmConsole::ScanTemplateApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_scan_template**](ScanTemplateApi.md#create_scan_template) | **POST** /api/3/scan_templates | Scan Templates
[**delete_scan_template**](ScanTemplateApi.md#delete_scan_template) | **DELETE** /api/3/scan_templates/{id} | Scan Template
[**get_scan_template**](ScanTemplateApi.md#get_scan_template) | **GET** /api/3/scan_templates/{id} | Scan Template
[**get_scan_templates**](ScanTemplateApi.md#get_scan_templates) | **GET** /api/3/scan_templates | Scan Templates
[**update_scan_template**](ScanTemplateApi.md#update_scan_template) | **PUT** /api/3/scan_templates/{id} | Scan Template


# **create_scan_template**
> CreatedReferenceScanTemplateIDLink create_scan_template(opts)

Scan Templates

Creates a new scan template.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanTemplateApi.new

opts = { 
  scan_template: Rapid7VmConsole::ScanTemplate.new # ScanTemplate | The details of the scan template.
}

begin
  #Scan Templates
  result = api_instance.create_scan_template(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanTemplateApi->create_scan_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scan_template** | [**ScanTemplate**](ScanTemplate.md)| The details of the scan template. | [optional] 

### Return type

[**CreatedReferenceScanTemplateIDLink**](CreatedReferenceScanTemplateIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_scan_template**
> Links delete_scan_template(id)

Scan Template

Deletes a scan template.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanTemplateApi.new

id = "id_example" # String | The identifier of the scan template


begin
  #Scan Template
  result = api_instance.delete_scan_template(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanTemplateApi->delete_scan_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the scan template | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scan_template**
> ScanTemplate get_scan_template(id)

Scan Template

Returns a scan template.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanTemplateApi.new

id = "id_example" # String | The identifier of the scan template


begin
  #Scan Template
  result = api_instance.get_scan_template(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanTemplateApi->get_scan_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the scan template | 

### Return type

[**ScanTemplate**](ScanTemplate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scan_templates**
> ResourcesScanTemplate get_scan_templates

Scan Templates

Returns all scan templates.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanTemplateApi.new

begin
  #Scan Templates
  result = api_instance.get_scan_templates
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanTemplateApi->get_scan_templates: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourcesScanTemplate**](ResourcesScanTemplate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_scan_template**
> Links update_scan_template(id, opts)

Scan Template

Updates a scan template.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanTemplateApi.new

id = "id_example" # String | The identifier of the scan template

opts = { 
  scan_template: Rapid7VmConsole::ScanTemplate.new # ScanTemplate | The details of the scan template.
}

begin
  #Scan Template
  result = api_instance.update_scan_template(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanTemplateApi->update_scan_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the scan template | 
 **scan_template** | [**ScanTemplate**](ScanTemplate.md)| The details of the scan template. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



