# Rapid7VmConsole::ReportApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_report**](ReportApi.md#create_report) | **POST** /api/3/reports | Reports
[**delete_report**](ReportApi.md#delete_report) | **DELETE** /api/3/reports/{id} | Report
[**delete_report_instance**](ReportApi.md#delete_report_instance) | **DELETE** /api/3/reports/{id}/history/{instance} | Report History
[**download_report**](ReportApi.md#download_report) | **GET** /api/3/reports/{id}/history/{instance}/output | Report Download
[**generate_report**](ReportApi.md#generate_report) | **POST** /api/3/reports/{id}/generate | Report Generation
[**get_report**](ReportApi.md#get_report) | **GET** /api/3/reports/{id} | Report
[**get_report_formats**](ReportApi.md#get_report_formats) | **GET** /api/3/report_formats | Report Formats
[**get_report_instance**](ReportApi.md#get_report_instance) | **GET** /api/3/reports/{id}/history/{instance} | Report History
[**get_report_instances**](ReportApi.md#get_report_instances) | **GET** /api/3/reports/{id}/history | Report Histories
[**get_report_template**](ReportApi.md#get_report_template) | **GET** /api/3/report_templates/{id} | Report Template
[**get_report_templates**](ReportApi.md#get_report_templates) | **GET** /api/3/report_templates | Report Templates
[**get_reports**](ReportApi.md#get_reports) | **GET** /api/3/reports | Reports
[**update_report**](ReportApi.md#update_report) | **PUT** /api/3/reports/{id} | Report


# **create_report**
> CreatedReferenceintLink create_report(opts)

Reports

Configures a new report for generation. Report types are controlled through either or both a format and template. Non-templatized (`export`) report formats do not require a template and have their output format preset. Templatized (`document` and `file`) report formats support a report template that governs the content of the output and the output format can be chosen from a list of supported formats.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

opts = { 
  report: Rapid7VmConsole::Report.new # Report | The specification of a report configuration.
}

begin
  #Reports
  result = api_instance.create_report(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->create_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report** | [**Report**](Report.md)| The specification of a report configuration. | [optional] 

### Return type

[**CreatedReferenceintLink**](CreatedReferenceintLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_report**
> Links delete_report(id)

Report

Deletes the configuration of a report.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

id = 56 # Integer | The identifier of the report.


begin
  #Report
  result = api_instance.delete_report(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->delete_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the report. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_report_instance**
> Links delete_report_instance(id, instance)

Report History

Returns the details for a generation of the report.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

id = 56 # Integer | The identifier of the report.

instance = "instance_example" # String | The identifier of the report instance.


begin
  #Report History
  result = api_instance.delete_report_instance(id, instance)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->delete_report_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the report. | 
 **instance** | **String**| The identifier of the report instance. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **download_report**
> String download_report(id, instance)

Report Download

Returns the contents of a generated report. The report content is usually returned in a GZip compressed format.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

id = 56 # Integer | The identifier of the report.

instance = "instance_example" # String | The identifier of the report instance.


begin
  #Report Download
  result = api_instance.download_report(id, instance)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->download_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the report. | 
 **instance** | **String**| The identifier of the report instance. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream, application/json;charset=UTF-8



# **generate_report**
> ReferenceWithReportIDLink generate_report(id)

Report Generation

Generates a configured report and returns the instance identifier of the report.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

id = 56 # Integer | The identifier of the report.


begin
  #Report Generation
  result = api_instance.generate_report(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->generate_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the report. | 

### Return type

[**ReferenceWithReportIDLink**](ReferenceWithReportIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_report**
> Report get_report(id)

Report

Returns the configuration details of a report.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

id = 56 # Integer | The identifier of the report.


begin
  #Report
  result = api_instance.get_report(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->get_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the report. | 

### Return type

[**Report**](Report.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_report_formats**
> ResourcesAvailableReportFormat get_report_formats

Report Formats

Returns all available report formats. A report format indicates an output file format specification (e.g. PDF, XML, etc). Some printable formats may be templated, and others may not. The supported templates for each formated are provided.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

begin
  #Report Formats
  result = api_instance.get_report_formats
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->get_report_formats: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourcesAvailableReportFormat**](ResourcesAvailableReportFormat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_report_instance**
> ReportInstance get_report_instance(id, instance)

Report History

Returns the details for a generation of the report.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

id = 56 # Integer | The identifier of the report.

instance = "instance_example" # String | The identifier of the report instance.


begin
  #Report History
  result = api_instance.get_report_instance(id, instance)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->get_report_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the report. | 
 **instance** | **String**| The identifier of the report instance. | 

### Return type

[**ReportInstance**](ReportInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_report_instances**
> ResourcesReportInstance get_report_instances(id)

Report Histories

Returns all historical details for generation of the report over time.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

id = 56 # Integer | The identifier of the report.


begin
  #Report Histories
  result = api_instance.get_report_instances(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->get_report_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the report. | 

### Return type

[**ResourcesReportInstance**](ResourcesReportInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_report_template**
> ReportTemplate get_report_template(id)

Report Template

Returns the details of a report template. Report templates govern the contents generated within a report. 

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

id = "id_example" # String | The identifier of the report template;


begin
  #Report Template
  result = api_instance.get_report_template(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->get_report_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the report template; | 

### Return type

[**ReportTemplate**](ReportTemplate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_report_templates**
> ResourcesReportTemplate get_report_templates

Report Templates

Returns all available report templates.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

begin
  #Report Templates
  result = api_instance.get_report_templates
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->get_report_templates: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourcesReportTemplate**](ResourcesReportTemplate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_reports**
> PageOfReport get_reports(opts)

Reports

Returns all defined report configurations.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Reports
  result = api_instance.get_reports(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->get_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfReport**](PageOfReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_report**
> Links update_report(id, opts)

Report

Updates the configuration details of a report.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::ReportApi.new

id = 56 # Integer | The identifier of the report.

opts = { 
  report: Rapid7VmConsole::Report.new # Report | The specification of a report configuration.
}

begin
  #Report
  result = api_instance.update_report(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling ReportApi->update_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the report. | 
 **report** | [**Report**](Report.md)| The specification of a report configuration. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



