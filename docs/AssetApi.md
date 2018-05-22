# Rapid7VmConsole::AssetApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_asset_tag**](AssetApi.md#add_asset_tag) | **PUT** /api/3/assets/{id}/tags/{tagId} | Asset Tag
[**create_asset**](AssetApi.md#create_asset) | **POST** /api/3/sites/{id}/assets | Assets
[**delete_asset**](AssetApi.md#delete_asset) | **DELETE** /api/3/assets/{id} | Asset
[**find_assets**](AssetApi.md#find_assets) | **POST** /api/3/assets/search | Asset Search
[**get_asset**](AssetApi.md#get_asset) | **GET** /api/3/assets/{id} | Asset
[**get_asset_databases**](AssetApi.md#get_asset_databases) | **GET** /api/3/assets/{id}/databases | Asset Databases
[**get_asset_files**](AssetApi.md#get_asset_files) | **GET** /api/3/assets/{id}/files | Asset Files
[**get_asset_service**](AssetApi.md#get_asset_service) | **GET** /api/3/assets/{id}/services/{protocol}/{port} | Asset Service
[**get_asset_service_configurations**](AssetApi.md#get_asset_service_configurations) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/configurations | Asset Service Configurations
[**get_asset_service_databases**](AssetApi.md#get_asset_service_databases) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/databases | Asset Service Databases
[**get_asset_service_user_groups**](AssetApi.md#get_asset_service_user_groups) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/user_groups | Asset Service User Groups
[**get_asset_service_users**](AssetApi.md#get_asset_service_users) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/users | Asset Service Users
[**get_asset_service_web_application**](AssetApi.md#get_asset_service_web_application) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/web_applications/{webApplicationId} | Asset Service Web Application
[**get_asset_service_web_applications**](AssetApi.md#get_asset_service_web_applications) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/web_applications | Asset Service Web Applications
[**get_asset_services**](AssetApi.md#get_asset_services) | **GET** /api/3/assets/{id}/services | Asset Services
[**get_asset_software**](AssetApi.md#get_asset_software) | **GET** /api/3/assets/{id}/software | Asset Software
[**get_asset_tags**](AssetApi.md#get_asset_tags) | **GET** /api/3/assets/{id}/tags | Asset Tags
[**get_asset_user_groups**](AssetApi.md#get_asset_user_groups) | **GET** /api/3/assets/{id}/user_groups | Asset User Groups
[**get_asset_users**](AssetApi.md#get_asset_users) | **GET** /api/3/assets/{id}/users | Asset Users
[**get_assets**](AssetApi.md#get_assets) | **GET** /api/3/assets | Assets
[**get_operating_system**](AssetApi.md#get_operating_system) | **GET** /api/3/operating_systems/{id} | Operating System
[**get_operating_systems**](AssetApi.md#get_operating_systems) | **GET** /api/3/operating_systems | Operating Systems
[**get_software**](AssetApi.md#get_software) | **GET** /api/3/software/{id} | Software
[**get_softwares**](AssetApi.md#get_softwares) | **GET** /api/3/software | Software
[**remove_asset_tag**](AssetApi.md#remove_asset_tag) | **DELETE** /api/3/assets/{id}/tags/{tagId} | Asset Tag


# **add_asset_tag**
> Links add_asset_tag(id, tag_id)

Asset Tag

Assigns the specified tag to the asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.

tag_id = 56 # Integer | The identifier of the tag.


begin
  #Asset Tag
  result = api_instance.add_asset_tag(id, tag_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->add_asset_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **tag_id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_asset**
> CreatedReference create_asset(id, opts)

Assets

Creates or updates an asset with the specified details.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  asset: Rapid7VmConsole::AssetCreate.new # AssetCreate | The details of the asset being added or updated.  The operating system can be specified in one of three ways, with the order of precedence: `\"osFingerprint\"`, `\"os\"`, `\"cpe\"`
}

begin
  #Assets
  result = api_instance.create_asset(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->create_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **asset** | [**AssetCreate**](AssetCreate.md)| The details of the asset being added or updated.  The operating system can be specified in one of three ways, with the order of precedence: &#x60;\&quot;osFingerprint\&quot;&#x60;, &#x60;\&quot;os\&quot;&#x60;, &#x60;\&quot;cpe\&quot;&#x60; | [optional] 

### Return type

[**CreatedReference**](CreatedReference.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_asset**
> Links delete_asset(id)

Asset

Deletes the specified asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset
  result = api_instance.delete_asset(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->delete_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **find_assets**
> PageOfAsset find_assets(param1, opts)

Asset Search

Returns all assets for which you have access that match the given search criteria.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

param1 = Rapid7VmConsole::SearchCriteria.new # SearchCriteria | param1

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Asset Search
  result = api_instance.find_assets(param1, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->find_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **param1** | [**SearchCriteria**](SearchCriteria.md)| param1 | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfAsset**](PageOfAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset**
> Asset get_asset(id)

Asset

Returns the specified asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset
  result = api_instance.get_asset(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**Asset**](Asset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_databases**
> ResourcesDatabase get_asset_databases(id)

Asset Databases

Returns the databases enumerated on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset Databases
  result = api_instance.get_asset_databases(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_databases: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**ResourcesDatabase**](ResourcesDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_files**
> ResourcesFile get_asset_files(id)

Asset Files

Returns the files discovered on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset Files
  result = api_instance.get_asset_files(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_files: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**ResourcesFile**](ResourcesFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_service**
> Service get_asset_service(id, protocol, port)

Asset Service

Returns the service running a port and protocol on the asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.

protocol = "protocol_example" # String | The protocol of the service.

port = 56 # Integer | The port of the service.


begin
  #Asset Service
  result = api_instance.get_asset_service(id, protocol, port)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_service: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **protocol** | **String**| The protocol of the service. | 
 **port** | **Integer**| The port of the service. | 

### Return type

[**Service**](Service.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_service_configurations**
> ResourcesConfiguration get_asset_service_configurations(id, protocol, port)

Asset Service Configurations

Returns the configuration (properties) of a port and protocol on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.

protocol = "protocol_example" # String | The protocol of the service.

port = 56 # Integer | The port of the service.


begin
  #Asset Service Configurations
  result = api_instance.get_asset_service_configurations(id, protocol, port)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_service_configurations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **protocol** | **String**| The protocol of the service. | 
 **port** | **Integer**| The port of the service. | 

### Return type

[**ResourcesConfiguration**](ResourcesConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_service_databases**
> ResourcesDatabase get_asset_service_databases(id, protocol, port)

Asset Service Databases

Returns the databases running on a port and protocol on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.

protocol = "protocol_example" # String | The protocol of the service.

port = 56 # Integer | The port of the service.


begin
  #Asset Service Databases
  result = api_instance.get_asset_service_databases(id, protocol, port)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_service_databases: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **protocol** | **String**| The protocol of the service. | 
 **port** | **Integer**| The port of the service. | 

### Return type

[**ResourcesDatabase**](ResourcesDatabase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_service_user_groups**
> ResourcesGroupAccount get_asset_service_user_groups(id, protocol, port)

Asset Service User Groups

Returns the user groups enumerated on a port and protocol on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.

protocol = "protocol_example" # String | The protocol of the service.

port = 56 # Integer | The port of the service.


begin
  #Asset Service User Groups
  result = api_instance.get_asset_service_user_groups(id, protocol, port)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_service_user_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **protocol** | **String**| The protocol of the service. | 
 **port** | **Integer**| The port of the service. | 

### Return type

[**ResourcesGroupAccount**](ResourcesGroupAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_service_users**
> ResourcesUserAccount get_asset_service_users(id, protocol, port)

Asset Service Users

Returns the users enumerated on a port and protocol on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.

protocol = "protocol_example" # String | The protocol of the service.

port = 56 # Integer | The port of the service.


begin
  #Asset Service Users
  result = api_instance.get_asset_service_users(id, protocol, port)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_service_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **protocol** | **String**| The protocol of the service. | 
 **port** | **Integer**| The port of the service. | 

### Return type

[**ResourcesUserAccount**](ResourcesUserAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_service_web_application**
> WebApplication get_asset_service_web_application(id, protocol, port, web_application_id)

Asset Service Web Application

Returns a web application running on a port and protocol on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.

protocol = "protocol_example" # String | The protocol of the service.

port = 56 # Integer | The port of the service.

web_application_id = 789 # Integer | The identifier of the web application.


begin
  #Asset Service Web Application
  result = api_instance.get_asset_service_web_application(id, protocol, port, web_application_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_service_web_application: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **protocol** | **String**| The protocol of the service. | 
 **port** | **Integer**| The port of the service. | 
 **web_application_id** | **Integer**| The identifier of the web application. | 

### Return type

[**WebApplication**](WebApplication.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_service_web_applications**
> ReferencesWithWebApplicationIDLink get_asset_service_web_applications(id, protocol, port)

Asset Service Web Applications

Returns the web applications running on a port and protocol on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.

protocol = "protocol_example" # String | The protocol of the service.

port = 56 # Integer | The port of the service.


begin
  #Asset Service Web Applications
  result = api_instance.get_asset_service_web_applications(id, protocol, port)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_service_web_applications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **protocol** | **String**| The protocol of the service. | 
 **port** | **Integer**| The port of the service. | 

### Return type

[**ReferencesWithWebApplicationIDLink**](ReferencesWithWebApplicationIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_services**
> ReferencesWithReferenceWithEndpointIDLinkServiceLink get_asset_services(id)

Asset Services

Returns the services discovered on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset Services
  result = api_instance.get_asset_services(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_services: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**ReferencesWithReferenceWithEndpointIDLinkServiceLink**](ReferencesWithReferenceWithEndpointIDLinkServiceLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_software**
> ResourcesSoftware get_asset_software(id)

Asset Software

Returns the software on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset Software
  result = api_instance.get_asset_software(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_software: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**ResourcesSoftware**](ResourcesSoftware.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_tags**
> ResourcesAssetTag get_asset_tags(id)

Asset Tags

Returns tags assigned to an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset Tags
  result = api_instance.get_asset_tags(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**ResourcesAssetTag**](ResourcesAssetTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_user_groups**
> ResourcesGroupAccount get_asset_user_groups(id)

Asset User Groups

Returns user groups enumerated on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset User Groups
  result = api_instance.get_asset_user_groups(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_user_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**ResourcesGroupAccount**](ResourcesGroupAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_users**
> ResourcesUserAccount get_asset_users(id)

Asset Users

Returns users enumerated on an asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.


begin
  #Asset Users
  result = api_instance.get_asset_users(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_asset_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 

### Return type

[**ResourcesUserAccount**](ResourcesUserAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_assets**
> PageOfAsset get_assets(opts)

Assets

Returns all assets for which you have access.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Assets
  result = api_instance.get_assets(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfAsset**](PageOfAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_operating_system**
> OperatingSystem get_operating_system(id)

Operating System

Returns the details for an operating system.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the operating system.


begin
  #Operating System
  result = api_instance.get_operating_system(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_operating_system: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the operating system. | 

### Return type

[**OperatingSystem**](OperatingSystem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_operating_systems**
> PageOfOperatingSystem get_operating_systems(opts)

Operating Systems

Returns all operating systems discovered across all assets. 

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Operating Systems
  result = api_instance.get_operating_systems(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_operating_systems: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfOperatingSystem**](PageOfOperatingSystem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_software**
> Software get_software(id)

Software

Returns the details for software.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the software.


begin
  #Software
  result = api_instance.get_software(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_software: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the software. | 

### Return type

[**Software**](Software.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_softwares**
> PageOfSoftware get_softwares(opts)

Software

Returns all software enumerated on any asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Software
  result = api_instance.get_softwares(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->get_softwares: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfSoftware**](PageOfSoftware.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_asset_tag**
> Links remove_asset_tag(id, tag_id)

Asset Tag

Removes the specified tag from the asset's tags.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetApi.new

id = 789 # Integer | The identifier of the asset.

tag_id = 56 # Integer | The identifier of the tag.


begin
  #Asset Tag
  result = api_instance.remove_asset_tag(id, tag_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetApi->remove_asset_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset. | 
 **tag_id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



