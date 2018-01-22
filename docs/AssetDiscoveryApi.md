# Rapid7VmConsole::AssetDiscoveryApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sonar_query**](AssetDiscoveryApi.md#create_sonar_query) | **POST** /api/3/sonar_queries | Sonar Queries
[**delete_sonar_query**](AssetDiscoveryApi.md#delete_sonar_query) | **DELETE** /api/3/sonar_queries/{id} | Sonar Query
[**get_discovery_connection**](AssetDiscoveryApi.md#get_discovery_connection) | **GET** /api/3/discovery_connections/{id} | Discovery Connection
[**get_discovery_connections**](AssetDiscoveryApi.md#get_discovery_connections) | **GET** /api/3/discovery_connections | Discovery Connections
[**get_sonar_queries**](AssetDiscoveryApi.md#get_sonar_queries) | **GET** /api/3/sonar_queries | Sonar Queries
[**get_sonar_query**](AssetDiscoveryApi.md#get_sonar_query) | **GET** /api/3/sonar_queries/{id} | Sonar Query
[**get_sonar_query_assets**](AssetDiscoveryApi.md#get_sonar_query_assets) | **GET** /api/3/sonar_queries/{id}/assets | Sonar Query Assets
[**reconnect_discovery_connection**](AssetDiscoveryApi.md#reconnect_discovery_connection) | **POST** /api/3/discovery_connections/{id}/connect | Discovery Connection Reconnect
[**sonar_query_search**](AssetDiscoveryApi.md#sonar_query_search) | **POST** /api/3/sonar_queries/search | Sonar Query Search
[**update_sonar_query**](AssetDiscoveryApi.md#update_sonar_query) | **PUT** /api/3/sonar_queries/{id} | Sonar Query


# **create_sonar_query**
> CreatedReferenceDiscoveryQueryIDLink create_sonar_query(param0)

Sonar Queries

Creates a sonar query.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

param0 = Rapid7VmConsole::SonarQuery.new # SonarQuery | param0


begin
  #Sonar Queries
  result = api_instance.create_sonar_query(param0)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->create_sonar_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **param0** | [**SonarQuery**](SonarQuery.md)| param0 | 

### Return type

[**CreatedReferenceDiscoveryQueryIDLink**](CreatedReferenceDiscoveryQueryIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_sonar_query**
> Links delete_sonar_query(id)

Sonar Query

Removes a sonar query.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

id = 789 # Integer | The identifier of the Sonar query.


begin
  #Sonar Query
  result = api_instance.delete_sonar_query(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->delete_sonar_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the Sonar query. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_discovery_connection**
> DiscoveryConnection get_discovery_connection(id)

Discovery Connection

Returns a discovery connection.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

id = 789 # Integer | The identifier of the discovery connection.


begin
  #Discovery Connection
  result = api_instance.get_discovery_connection(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->get_discovery_connection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the discovery connection. | 

### Return type

[**DiscoveryConnection**](DiscoveryConnection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_discovery_connections**
> PageOfDiscoveryConnection get_discovery_connections(opts)

Discovery Connections

Returns all discovery connections.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Discovery Connections
  result = api_instance.get_discovery_connections(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->get_discovery_connections: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfDiscoveryConnection**](PageOfDiscoveryConnection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_sonar_queries**
> ResourcesSonarQuery get_sonar_queries

Sonar Queries

Returns all sonar queries.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

begin
  #Sonar Queries
  result = api_instance.get_sonar_queries
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->get_sonar_queries: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourcesSonarQuery**](ResourcesSonarQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_sonar_query**
> SonarQuery get_sonar_query(id)

Sonar Query

Returns a sonar query.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

id = 789 # Integer | The identifier of the Sonar query.


begin
  #Sonar Query
  result = api_instance.get_sonar_query(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->get_sonar_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the Sonar query. | 

### Return type

[**SonarQuery**](SonarQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_sonar_query_assets**
> ResourcesDiscoveryAsset get_sonar_query_assets(id)

Sonar Query Assets

Returns the assets that are discovered by a Sonar query.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

id = 789 # Integer | The identifier of the Sonar query.


begin
  #Sonar Query Assets
  result = api_instance.get_sonar_query_assets(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->get_sonar_query_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the Sonar query. | 

### Return type

[**ResourcesDiscoveryAsset**](ResourcesDiscoveryAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **reconnect_discovery_connection**
> reconnect_discovery_connection(id)

Discovery Connection Reconnect

Attempts to reconnect the discovery connection.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

id = 789 # Integer | The identifier of the discovery connection.


begin
  #Discovery Connection Reconnect
  api_instance.reconnect_discovery_connection(id)
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->reconnect_discovery_connection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the discovery connection. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **sonar_query_search**
> Array&lt;DiscoveryAsset&gt; sonar_query_search(param0)

Sonar Query Search

Executes a Sonar query to discover assets with the given search criteria.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

param0 = Rapid7VmConsole::SonarCriteria.new # SonarCriteria | param0


begin
  #Sonar Query Search
  result = api_instance.sonar_query_search(param0)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->sonar_query_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **param0** | [**SonarCriteria**](SonarCriteria.md)| param0 | 

### Return type

[**Array&lt;DiscoveryAsset&gt;**](DiscoveryAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_sonar_query**
> Links update_sonar_query(id, param1)

Sonar Query

Updates a sonar query.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetDiscoveryApi.new

id = 789 # Integer | The identifier of the Sonar query.

param1 = Rapid7VmConsole::SonarQuery.new # SonarQuery | param1


begin
  #Sonar Query
  result = api_instance.update_sonar_query(id, param1)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetDiscoveryApi->update_sonar_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the Sonar query. | 
 **param1** | [**SonarQuery**](SonarQuery.md)| param1 | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



