# Rapid7VmConsole::ScanApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_scan**](ScanApi.md#get_scan) | **GET** /api/3/scans/{id} | Scan
[**get_scans**](ScanApi.md#get_scans) | **GET** /api/3/scans | Scans
[**get_site_scans**](ScanApi.md#get_site_scans) | **GET** /api/3/sites/{id}/scans | Site Scans
[**set_scan_status**](ScanApi.md#set_scan_status) | **POST** /api/3/scans/{id}/{status} | Scan Status
[**start_scan**](ScanApi.md#start_scan) | **POST** /api/3/sites/{id}/scans | Site Scans


# **get_scan**
> Scan get_scan(id)

Scan

Returns the specified scan.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanApi.new

id = 789 # Integer | The identifier of the scan.


begin
  #Scan
  result = api_instance.get_scan(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanApi->get_scan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the scan. | 

### Return type

[**Scan**](Scan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_scans**
> PageOfGlobalScan get_scans(opts)

Scans

Returns all scans.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanApi.new

opts = { 
  active: false, # BOOLEAN | Return running scans or past scans (true/false value).
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Scans
  result = api_instance.get_scans(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanApi->get_scans: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **active** | **BOOLEAN**| Return running scans or past scans (true/false value). | [optional] [default to false]
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfGlobalScan**](PageOfGlobalScan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_scans**
> PageOfScan get_site_scans(id, opts)

Site Scans

Returns the scans for the specified site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  active: false, # BOOLEAN | Return running scans or past scans (true/false value).
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Site Scans
  result = api_instance.get_site_scans(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanApi->get_site_scans: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **active** | **BOOLEAN**| Return running scans or past scans (true/false value). | [optional] [default to false]
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



# **set_scan_status**
> Links set_scan_status(id, status)

Scan Status

Updates the scan status. Can pause, resume, and stop scans using this resource. In order to stop a scan the scan must be running or paused. In order to resume a scan the scan must be paused. In order to pause a scan the scan must be running.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanApi.new

id = 789 # Integer | The identifier of the scan.

status = "status_example" # String | The status of the scan.


begin
  #Scan Status
  result = api_instance.set_scan_status(id, status)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanApi->set_scan_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the scan. | 
 **status** | **String**| The status of the scan. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **start_scan**
> CreatedReferenceScanIDLink start_scan(id, opts)

Site Scans

Starts a scan for the specified site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ScanApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  scan: Rapid7VmConsole::AdhocScan.new # AdhocScan | The details for the scan.
}

begin
  #Site Scans
  result = api_instance.start_scan(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ScanApi->start_scan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **scan** | [**AdhocScan**](AdhocScan.md)| The details for the scan. | [optional] 

### Return type

[**CreatedReferenceScanIDLink**](CreatedReferenceScanIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



