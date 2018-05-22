# Rapid7VmConsole::ScanEngineApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_scan_engine_pool_scan_engine**](ScanEngineApi.md#add_scan_engine_pool_scan_engine) | **PUT** /api/3/scan_engine_pools/{id}/engines/{engineId} | Engine Pool Engines
[**create_scan_engine**](ScanEngineApi.md#create_scan_engine) | **POST** /api/3/scan_engines | Scan Engines
[**create_scan_engine_pool**](ScanEngineApi.md#create_scan_engine_pool) | **POST** /api/3/scan_engine_pools | Engine Pools
[**delete_scan_engine**](ScanEngineApi.md#delete_scan_engine) | **DELETE** /api/3/scan_engines/{id} | Scan Engine
[**get_assigned_engine_pools**](ScanEngineApi.md#get_assigned_engine_pools) | **GET** /api/3/scan_engines/{id}/scan_engine_pools | Assigned Engine Pools
[**get_engine_pool**](ScanEngineApi.md#get_engine_pool) | **GET** /api/3/scan_engine_pools/{id} | Engine Pool
[**get_scan_engine**](ScanEngineApi.md#get_scan_engine) | **GET** /api/3/scan_engines/{id} | Scan Engine
[**get_scan_engine_pool_scan_engines**](ScanEngineApi.md#get_scan_engine_pool_scan_engines) | **GET** /api/3/scan_engine_pools/{id}/engines | Engine Pool Engines
[**get_scan_engine_pool_sites**](ScanEngineApi.md#get_scan_engine_pool_sites) | **GET** /api/3/scan_engine_pools/{id}/sites | Engine Pool Sites
[**get_scan_engine_pools**](ScanEngineApi.md#get_scan_engine_pools) | **GET** /api/3/scan_engine_pools | Engine Pools
[**get_scan_engine_scans**](ScanEngineApi.md#get_scan_engine_scans) | **GET** /api/3/scan_engines/{id}/scans | Scan Engine Scans
[**get_scan_engine_sites**](ScanEngineApi.md#get_scan_engine_sites) | **GET** /api/3/scan_engines/{id}/sites | Scan Engine Sites
[**get_scan_engines**](ScanEngineApi.md#get_scan_engines) | **GET** /api/3/scan_engines | Scan Engines
[**remove_scan_engine_pool**](ScanEngineApi.md#remove_scan_engine_pool) | **DELETE** /api/3/scan_engine_pools/{id} | Engine Pool
[**remove_scan_engine_pool_scan_engine**](ScanEngineApi.md#remove_scan_engine_pool_scan_engine) | **DELETE** /api/3/scan_engine_pools/{id}/engines/{engineId} | Engine Pool Engines
[**set_scan_engine_pool_scan_engines**](ScanEngineApi.md#set_scan_engine_pool_scan_engines) | **PUT** /api/3/scan_engine_pools/{id}/engines | Engine Pool Engines
[**update_scan_engine**](ScanEngineApi.md#update_scan_engine) | **PUT** /api/3/scan_engines/{id} | Scan Engine
[**update_scan_engine_pool**](ScanEngineApi.md#update_scan_engine_pool) | **PUT** /api/3/scan_engine_pools/{id} | Engine Pool


# **add_scan_engine_pool_scan_engine**
> Links add_scan_engine_pool_scan_engine(id, engine_id)

Engine Pool Engines

Add an engine to the engine pool.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the engine pool.

engine_id = 56 # Integer | The identifier of the scan engine.


begin
  #Engine Pool Engines
  result = api_instance.add_scan_engine_pool_scan_engine(id, engine_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->add_scan_engine_pool_scan_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the engine pool. | 
 **engine_id** | **Integer**| The identifier of the scan engine. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_scan_engine**
> ReferenceWithEngineIDLink create_scan_engine(opts)

Scan Engines

Creates a new scan engine.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

opts = { 
  scan_engine: Rapid7VmConsole::ScanEngine.new # ScanEngine | The specification of a scan engine.
}

begin
  #Scan Engines
  result = api_instance.create_scan_engine(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->create_scan_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scan_engine** | [**ScanEngine**](ScanEngine.md)| The specification of a scan engine. | [optional] 

### Return type

[**ReferenceWithEngineIDLink**](ReferenceWithEngineIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_scan_engine_pool**
> CreatedReferenceEngineIDLink create_scan_engine_pool(opts)

Engine Pools

Creates a new engine pool.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

opts = { 
  engine_pool: Rapid7VmConsole::EnginePool.new # EnginePool | The details for the scan engine to update.
}

begin
  #Engine Pools
  result = api_instance.create_scan_engine_pool(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->create_scan_engine_pool: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engine_pool** | [**EnginePool**](EnginePool.md)| The details for the scan engine to update. | [optional] 

### Return type

[**CreatedReferenceEngineIDLink**](CreatedReferenceEngineIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_scan_engine**
> Links delete_scan_engine(id)

Scan Engine

Deletes the specified scan engine.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the scan engine.


begin
  #Scan Engine
  result = api_instance.delete_scan_engine(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->delete_scan_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the scan engine. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_assigned_engine_pools**
> ResourcesEnginePool get_assigned_engine_pools(id)

Assigned Engine Pools

Retrieves the list of engine pools the scan engine is currently assigned to.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the scan engine.


begin
  #Assigned Engine Pools
  result = api_instance.get_assigned_engine_pools(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->get_assigned_engine_pools: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the scan engine. | 

### Return type

[**ResourcesEnginePool**](ResourcesEnginePool.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_engine_pool**
> EnginePool get_engine_pool(id)

Engine Pool

Retrieves the details for an engine pool.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the engine pool.


begin
  #Engine Pool
  result = api_instance.get_engine_pool(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->get_engine_pool: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the engine pool. | 

### Return type

[**EnginePool**](EnginePool.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scan_engine**
> ScanEngine get_scan_engine(id)

Scan Engine

Retrieves the details for a scan engine.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the scan engine.


begin
  #Scan Engine
  result = api_instance.get_scan_engine(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->get_scan_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the scan engine. | 

### Return type

[**ScanEngine**](ScanEngine.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scan_engine_pool_scan_engines**
> ReferencesWithEngineIDLink get_scan_engine_pool_scan_engines(id)

Engine Pool Engines

Get the engines in the engine pool.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the engine pool.


begin
  #Engine Pool Engines
  result = api_instance.get_scan_engine_pool_scan_engines(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->get_scan_engine_pool_scan_engines: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the engine pool. | 

### Return type

[**ReferencesWithEngineIDLink**](ReferencesWithEngineIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scan_engine_pool_sites**
> ReferencesWithSiteIDLink get_scan_engine_pool_sites(id)

Engine Pool Sites

Returns links to the sites associated with this engine pool.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the engine pool.


begin
  #Engine Pool Sites
  result = api_instance.get_scan_engine_pool_sites(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->get_scan_engine_pool_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the engine pool. | 

### Return type

[**ReferencesWithSiteIDLink**](ReferencesWithSiteIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scan_engine_pools**
> ResourcesEnginePool get_scan_engine_pools

Engine Pools

Returns engine pools available to use for scanning.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

begin
  #Engine Pools
  result = api_instance.get_scan_engine_pools
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->get_scan_engine_pools: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourcesEnginePool**](ResourcesEnginePool.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scan_engine_scans**
> PageOfScan get_scan_engine_scans(id, opts)

Scan Engine Scans

Returns the scans that have been run on a scan engine.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the scan engine.

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Scan Engine Scans
  result = api_instance.get_scan_engine_scans(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->get_scan_engine_scans: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the scan engine. | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfScan**](PageOfScan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scan_engine_sites**
> PageOfSite get_scan_engine_sites(id, opts)

Scan Engine Sites

Retrieves the list of sites the specified scan engine is assigned to.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the scan engine.

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Scan Engine Sites
  result = api_instance.get_scan_engine_sites(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->get_scan_engine_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the scan engine. | 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfSite**](PageOfSite.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scan_engines**
> ResourcesScanEngine get_scan_engines

Scan Engines

Returns scan engines available to use for scanning.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

begin
  #Scan Engines
  result = api_instance.get_scan_engines
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->get_scan_engines: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourcesScanEngine**](ResourcesScanEngine.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_scan_engine_pool**
> Links remove_scan_engine_pool(id)

Engine Pool

Deletes the specified engine pool.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the engine pool.


begin
  #Engine Pool
  result = api_instance.remove_scan_engine_pool(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->remove_scan_engine_pool: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the engine pool. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_scan_engine_pool_scan_engine**
> Links remove_scan_engine_pool_scan_engine(id, engine_id)

Engine Pool Engines

Remove the specified engine from the engine pool.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the engine pool.

engine_id = 56 # Integer | The identifier of the scan engine.


begin
  #Engine Pool Engines
  result = api_instance.remove_scan_engine_pool_scan_engine(id, engine_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->remove_scan_engine_pool_scan_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the engine pool. | 
 **engine_id** | **Integer**| The identifier of the scan engine. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_scan_engine_pool_scan_engines**
> Links set_scan_engine_pool_scan_engines(id, opts)

Engine Pool Engines

Set the engines in the engine pool.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the engine pool.

opts = { 
  engines: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | The identifiers of the scan engines to place into the engine pool.
}

begin
  #Engine Pool Engines
  result = api_instance.set_scan_engine_pool_scan_engines(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->set_scan_engine_pool_scan_engines: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the engine pool. | 
 **engines** | **Array&lt;Integer&gt;**| The identifiers of the scan engines to place into the engine pool. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_scan_engine**
> Links update_scan_engine(id, opts)

Scan Engine

Updates the specified scan engine.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the scan engine.

opts = { 
  scan_engine: Rapid7VmConsole::ScanEngine.new # ScanEngine | The specification of the scan engine to update.
}

begin
  #Scan Engine
  result = api_instance.update_scan_engine(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->update_scan_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the scan engine. | 
 **scan_engine** | [**ScanEngine**](ScanEngine.md)| The specification of the scan engine to update. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_scan_engine_pool**
> Links update_scan_engine_pool(id, opts)

Engine Pool

Updates the specified engine pool.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanEngineApi.new

id = 56 # Integer | The identifier of the engine pool.

opts = { 
  engine_pool: Rapid7VmConsole::EnginePool.new # EnginePool | The details for the scan engine to update.
}

begin
  #Engine Pool
  result = api_instance.update_scan_engine_pool(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanEngineApi->update_scan_engine_pool: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the engine pool. | 
 **engine_pool** | [**EnginePool**](EnginePool.md)| The details for the scan engine to update. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



