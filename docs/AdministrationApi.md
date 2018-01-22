# Rapid7VmConsole::AdministrationApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_license**](AdministrationApi.md#activate_license) | **POST** /api/3/administration/license | License
[**execute_command**](AdministrationApi.md#execute_command) | **POST** /api/3/administration/commands | Console Commands
[**get_info**](AdministrationApi.md#get_info) | **GET** /api/3/administration/info | Information
[**get_license**](AdministrationApi.md#get_license) | **GET** /api/3/administration/license | License
[**get_properties**](AdministrationApi.md#get_properties) | **GET** /api/3/administration/properties | Properties
[**get_settings**](AdministrationApi.md#get_settings) | **GET** /api/3/administration/settings | Settings


# **activate_license**
> Links activate_license(opts)

License

Licenses the product with an activation key or a provided license file. If both are provided, the license file is preferred. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AdministrationApi.new

opts = { 
  license: File.new("/path/to/file.txt"), # File | The contents of a license (.lic) file.
  key: "key_example" # String | A license activation key.
}

begin
  #License
  result = api_instance.activate_license(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AdministrationApi->activate_license: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **license** | **File**| The contents of a license (.lic) file. | [optional] 
 **key** | **String**| A license activation key. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json;charset=UTF-8



# **execute_command**
> ConsoleCommandOutput execute_command(opts)

Console Commands

Executes a console command against the Security Console. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AdministrationApi.new

opts = { 
  param0: "param0_example" # String | The console command to execute.
}

begin
  #Console Commands
  result = api_instance.execute_command(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AdministrationApi->execute_command: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **param0** | **String**| The console command to execute. | [optional] 

### Return type

[**ConsoleCommandOutput**](ConsoleCommandOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_info**
> Info get_info

Information

Returns system details, including host and version information.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AdministrationApi.new

begin
  #Information
  result = api_instance.get_info
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AdministrationApi->get_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Info**](Info.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_license**
> License get_license

License

Returns the enabled features and limits of the current license. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AdministrationApi.new

begin
  #License
  result = api_instance.get_license
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AdministrationApi->get_license: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**License**](License.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_properties**
> EnvironmentProperties get_properties

Properties

Returns system details, including host and version information.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AdministrationApi.new

begin
  #Properties
  result = api_instance.get_properties
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AdministrationApi->get_properties: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EnvironmentProperties**](EnvironmentProperties.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_settings**
> Settings get_settings

Settings

Returns the current administration settings. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AdministrationApi.new

begin
  #Settings
  result = api_instance.get_settings
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AdministrationApi->get_settings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Settings**](Settings.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



