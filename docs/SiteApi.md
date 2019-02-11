# Rapid7VmConsole::SiteApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_site_tag**](SiteApi.md#add_site_tag) | **PUT** /api/3/sites/{id}/tags/{tagId} | Site Tag
[**add_site_user**](SiteApi.md#add_site_user) | **POST** /api/3/sites/{id}/users | Site Users Access
[**create_site**](SiteApi.md#create_site) | **POST** /api/3/sites | Sites
[**create_site_credential**](SiteApi.md#create_site_credential) | **POST** /api/3/sites/{id}/site_credentials | Site Scan Credentials
[**create_site_scan_schedule**](SiteApi.md#create_site_scan_schedule) | **POST** /api/3/sites/{id}/scan_schedules | Site Scan Schedules
[**create_site_smtp_alert**](SiteApi.md#create_site_smtp_alert) | **POST** /api/3/sites/{id}/alerts/smtp | Site SMTP Alerts
[**create_site_snmp_alert**](SiteApi.md#create_site_snmp_alert) | **POST** /api/3/sites/{id}/alerts/snmp | Site SNMP Alerts
[**create_site_syslog_alert**](SiteApi.md#create_site_syslog_alert) | **POST** /api/3/sites/{id}/alerts/syslog | Site Syslog Alerts
[**delete_all_site_alerts**](SiteApi.md#delete_all_site_alerts) | **DELETE** /api/3/sites/{id}/alerts | Site Alerts
[**delete_all_site_credentials**](SiteApi.md#delete_all_site_credentials) | **DELETE** /api/3/sites/{id}/site_credentials | Site Scan Credentials
[**delete_all_site_scan_schedules**](SiteApi.md#delete_all_site_scan_schedules) | **DELETE** /api/3/sites/{id}/scan_schedules | Site Scan Schedules
[**delete_all_site_smtp_alerts**](SiteApi.md#delete_all_site_smtp_alerts) | **DELETE** /api/3/sites/{id}/alerts/smtp | Site SMTP Alerts
[**delete_all_site_snmp_alerts**](SiteApi.md#delete_all_site_snmp_alerts) | **DELETE** /api/3/sites/{id}/alerts/snmp | Site SNMP Alerts
[**delete_all_site_syslog_alerts**](SiteApi.md#delete_all_site_syslog_alerts) | **DELETE** /api/3/sites/{id}/alerts/syslog | Site Syslog Alerts
[**delete_site**](SiteApi.md#delete_site) | **DELETE** /api/3/sites/{id} | Site
[**delete_site_credential**](SiteApi.md#delete_site_credential) | **DELETE** /api/3/sites/{id}/site_credentials/{credentialId} | Site Scan Credential
[**delete_site_scan_schedule**](SiteApi.md#delete_site_scan_schedule) | **DELETE** /api/3/sites/{id}/scan_schedules/{scheduleId} | Site Scan Schedule
[**delete_site_smtp_alert**](SiteApi.md#delete_site_smtp_alert) | **DELETE** /api/3/sites/{id}/alerts/smtp/{alertId} | Site SMTP Alert
[**delete_site_snmp_alert**](SiteApi.md#delete_site_snmp_alert) | **DELETE** /api/3/sites/{id}/alerts/snmp/{alertId} | Site SNMP Alert
[**delete_site_syslog_alert**](SiteApi.md#delete_site_syslog_alert) | **DELETE** /api/3/sites/{id}/alerts/syslog/{alertId} | Site Syslog Alert
[**enable_shared_credential_on_site**](SiteApi.md#enable_shared_credential_on_site) | **PUT** /api/3/sites/{id}/shared_credentials/{credentialId}/enabled | Assigned Shared Credential Enablement
[**enable_site_credential**](SiteApi.md#enable_site_credential) | **PUT** /api/3/sites/{id}/site_credentials/{credentialId}/enabled | Site Credential Enablement
[**get_excluded_asset_groups**](SiteApi.md#get_excluded_asset_groups) | **GET** /api/3/sites/{id}/excluded_asset_groups | Site Excluded Asset Groups
[**get_excluded_targets**](SiteApi.md#get_excluded_targets) | **GET** /api/3/sites/{id}/excluded_targets | Site Excluded Targets
[**get_included_asset_groups**](SiteApi.md#get_included_asset_groups) | **GET** /api/3/sites/{id}/included_asset_groups | Site Included Asset Groups
[**get_included_targets**](SiteApi.md#get_included_targets) | **GET** /api/3/sites/{id}/included_targets | Site Included Targets
[**get_site**](SiteApi.md#get_site) | **GET** /api/3/sites/{id} | Site
[**get_site_alerts**](SiteApi.md#get_site_alerts) | **GET** /api/3/sites/{id}/alerts | Site Alerts
[**get_site_assets**](SiteApi.md#get_site_assets) | **GET** /api/3/sites/{id}/assets | Site Assets
[**get_site_credential**](SiteApi.md#get_site_credential) | **GET** /api/3/sites/{id}/site_credentials/{credentialId} | Site Scan Credential
[**get_site_credentials**](SiteApi.md#get_site_credentials) | **GET** /api/3/sites/{id}/site_credentials | Site Scan Credentials
[**get_site_discovery_connection**](SiteApi.md#get_site_discovery_connection) | **GET** /api/3/sites/{id}/discovery_connection | Site Discovery Connection
[**get_site_discovery_search_criteria**](SiteApi.md#get_site_discovery_search_criteria) | **GET** /api/3/sites/{id}/discovery_search_criteria | Site Discovery Search Criteria
[**get_site_organization**](SiteApi.md#get_site_organization) | **GET** /api/3/sites/{id}/organization | Site Organization Information
[**get_site_scan_engine**](SiteApi.md#get_site_scan_engine) | **GET** /api/3/sites/{id}/scan_engine | Site Scan Engine
[**get_site_scan_schedule**](SiteApi.md#get_site_scan_schedule) | **GET** /api/3/sites/{id}/scan_schedules/{scheduleId} | Site Scan Schedule
[**get_site_scan_schedules**](SiteApi.md#get_site_scan_schedules) | **GET** /api/3/sites/{id}/scan_schedules | Site Scan Schedules
[**get_site_scan_template**](SiteApi.md#get_site_scan_template) | **GET** /api/3/sites/{id}/scan_template | Site Scan Template
[**get_site_shared_credentials**](SiteApi.md#get_site_shared_credentials) | **GET** /api/3/sites/{id}/shared_credentials | Assigned Shared Credentials
[**get_site_smtp_alert**](SiteApi.md#get_site_smtp_alert) | **GET** /api/3/sites/{id}/alerts/smtp/{alertId} | Site SMTP Alert
[**get_site_smtp_alerts**](SiteApi.md#get_site_smtp_alerts) | **GET** /api/3/sites/{id}/alerts/smtp | Site SMTP Alerts
[**get_site_snmp_alert**](SiteApi.md#get_site_snmp_alert) | **GET** /api/3/sites/{id}/alerts/snmp/{alertId} | Site SNMP Alert
[**get_site_snmp_alerts**](SiteApi.md#get_site_snmp_alerts) | **GET** /api/3/sites/{id}/alerts/snmp | Site SNMP Alerts
[**get_site_syslog_alert**](SiteApi.md#get_site_syslog_alert) | **GET** /api/3/sites/{id}/alerts/syslog/{alertId} | Site Syslog Alert
[**get_site_syslog_alerts**](SiteApi.md#get_site_syslog_alerts) | **GET** /api/3/sites/{id}/alerts/syslog | Site Syslog Alerts
[**get_site_tags**](SiteApi.md#get_site_tags) | **GET** /api/3/sites/{id}/tags | Site Tags
[**get_site_users**](SiteApi.md#get_site_users) | **GET** /api/3/sites/{id}/users | Site Users Access
[**get_sites**](SiteApi.md#get_sites) | **GET** /api/3/sites | Sites
[**get_web_auth_html_forms**](SiteApi.md#get_web_auth_html_forms) | **GET** /api/3/sites/{id}/web_authentication/html_forms | Web Authentication HTML Forms
[**get_web_auth_http_headers**](SiteApi.md#get_web_auth_http_headers) | **GET** /api/3/sites/{id}/web_authentication/http_headers | Web Authentication HTTP Headers
[**remove_all_excluded_asset_groups**](SiteApi.md#remove_all_excluded_asset_groups) | **DELETE** /api/3/sites/{id}/excluded_asset_groups | Site Excluded Asset Groups
[**remove_all_included_asset_groups**](SiteApi.md#remove_all_included_asset_groups) | **DELETE** /api/3/sites/{id}/included_asset_groups | Site Included Asset Groups
[**remove_asset_from_site**](SiteApi.md#remove_asset_from_site) | **DELETE** /api/3/sites/{id}/assets/{assetId} | Site Asset
[**remove_excluded_asset_group**](SiteApi.md#remove_excluded_asset_group) | **DELETE** /api/3/sites/{id}/excluded_asset_groups/{assetGroupId} | Site Excluded Asset Group
[**remove_included_asset_group**](SiteApi.md#remove_included_asset_group) | **DELETE** /api/3/sites/{id}/included_asset_groups/{assetGroupId} | Site Included Asset Group
[**remove_site_assets**](SiteApi.md#remove_site_assets) | **DELETE** /api/3/sites/{id}/assets | Site Assets
[**remove_site_tag**](SiteApi.md#remove_site_tag) | **DELETE** /api/3/sites/{id}/tags/{tagId} | Site Tag
[**remove_site_user**](SiteApi.md#remove_site_user) | **DELETE** /api/3/sites/{id}/users/{userId} | Site User Access
[**set_site_credentials**](SiteApi.md#set_site_credentials) | **PUT** /api/3/sites/{id}/site_credentials | Site Scan Credentials
[**set_site_discovery_connection**](SiteApi.md#set_site_discovery_connection) | **PUT** /api/3/sites/{id}/discovery_connection | Site Discovery Connection
[**set_site_discovery_search_criteria**](SiteApi.md#set_site_discovery_search_criteria) | **PUT** /api/3/sites/{id}/discovery_search_criteria | Site Discovery Search Criteria
[**set_site_scan_engine**](SiteApi.md#set_site_scan_engine) | **PUT** /api/3/sites/{id}/scan_engine | Site Scan Engine
[**set_site_scan_schedules**](SiteApi.md#set_site_scan_schedules) | **PUT** /api/3/sites/{id}/scan_schedules | Site Scan Schedules
[**set_site_scan_template**](SiteApi.md#set_site_scan_template) | **PUT** /api/3/sites/{id}/scan_template | Site Scan Template
[**set_site_smtp_alerts**](SiteApi.md#set_site_smtp_alerts) | **PUT** /api/3/sites/{id}/alerts/smtp | Site SMTP Alerts
[**set_site_snmp_alerts**](SiteApi.md#set_site_snmp_alerts) | **PUT** /api/3/sites/{id}/alerts/snmp | Site SNMP Alerts
[**set_site_syslog_alerts**](SiteApi.md#set_site_syslog_alerts) | **PUT** /api/3/sites/{id}/alerts/syslog | Site Syslog Alerts
[**set_site_tags**](SiteApi.md#set_site_tags) | **PUT** /api/3/sites/{id}/tags | Site Tags
[**set_site_users**](SiteApi.md#set_site_users) | **PUT** /api/3/sites/{id}/users | Site Users Access
[**update_excluded_asset_groups**](SiteApi.md#update_excluded_asset_groups) | **PUT** /api/3/sites/{id}/excluded_asset_groups | Site Excluded Asset Groups
[**update_excluded_targets**](SiteApi.md#update_excluded_targets) | **PUT** /api/3/sites/{id}/excluded_targets | Site Excluded Targets
[**update_included_asset_groups**](SiteApi.md#update_included_asset_groups) | **PUT** /api/3/sites/{id}/included_asset_groups | Site Included Asset Groups
[**update_included_targets**](SiteApi.md#update_included_targets) | **PUT** /api/3/sites/{id}/included_targets | Site Included Targets
[**update_site**](SiteApi.md#update_site) | **PUT** /api/3/sites/{id} | Site
[**update_site_credential**](SiteApi.md#update_site_credential) | **PUT** /api/3/sites/{id}/site_credentials/{credentialId} | Site Scan Credential
[**update_site_organization**](SiteApi.md#update_site_organization) | **PUT** /api/3/sites/{id}/organization | Site Organization Information
[**update_site_scan_schedule**](SiteApi.md#update_site_scan_schedule) | **PUT** /api/3/sites/{id}/scan_schedules/{scheduleId} | Site Scan Schedule
[**update_site_smtp_alert**](SiteApi.md#update_site_smtp_alert) | **PUT** /api/3/sites/{id}/alerts/smtp/{alertId} | Site SMTP Alert
[**update_site_snmp_alert**](SiteApi.md#update_site_snmp_alert) | **PUT** /api/3/sites/{id}/alerts/snmp/{alertId} | Site SNMP Alert
[**update_site_syslog_alert**](SiteApi.md#update_site_syslog_alert) | **PUT** /api/3/sites/{id}/alerts/syslog/{alertId} | Site Syslog Alert


# **add_site_tag**
> Links add_site_tag(id, tag_id)

Site Tag

Adds a tag to the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

tag_id = 56 # Integer | The identifier of the tag.


begin
  #Site Tag
  result = api_instance.add_site_tag(id, tag_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->add_site_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **tag_id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **add_site_user**
> ReferenceWithUserIDLink add_site_user(id, opts)

Site Users Access

Grants a non-administrator user access to the specified site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  param0: 56 # Integer | The identifier of the user.
}

begin
  #Site Users Access
  result = api_instance.add_site_user(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->add_site_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **param0** | **Integer**| The identifier of the user. | [optional] 

### Return type

[**ReferenceWithUserIDLink**](ReferenceWithUserIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_site**
> ReferenceWithSiteIDLink create_site(opts)

Sites

Creates a new site with the specified configuration.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

opts = { 
  site: Rapid7VmConsole::SiteCreateResource.new # SiteCreateResource | Resource for creating a site configuration.
}

begin
  #Sites
  result = api_instance.create_site(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->create_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site** | [**SiteCreateResource**](SiteCreateResource.md)| Resource for creating a site configuration. | [optional] 

### Return type

[**ReferenceWithSiteIDLink**](ReferenceWithSiteIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_site_credential**
> CreatedReferenceCredentialIDLink create_site_credential(id, opts)

Site Scan Credentials

Creates a new site credential.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  site_credential: Rapid7VmConsole::SiteCredential.new # SiteCredential | The specification of a site credential.
}

begin
  #Site Scan Credentials
  result = api_instance.create_site_credential(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->create_site_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **site_credential** | [**SiteCredential**](SiteCredential.md)| The specification of a site credential. | [optional] 

### Return type

[**CreatedReferenceCredentialIDLink**](CreatedReferenceCredentialIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_site_scan_schedule**
> ReferenceWithScanScheduleIDLink create_site_scan_schedule(id, opts)

Site Scan Schedules

Creates a new scan schedule for the specified site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  scan_schedule: Rapid7VmConsole::ScanSchedule.new # ScanSchedule | Resource for a scan schedule.
}

begin
  #Site Scan Schedules
  result = api_instance.create_site_scan_schedule(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->create_site_scan_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **scan_schedule** | [**ScanSchedule**](ScanSchedule.md)| Resource for a scan schedule. | [optional] 

### Return type

[**ReferenceWithScanScheduleIDLink**](ReferenceWithScanScheduleIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_site_smtp_alert**
> ReferenceWithAlertIDLink create_site_smtp_alert(id, opts)

Site SMTP Alerts

Creates a new SMTP alert for the specified site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  alert: Rapid7VmConsole::SmtpAlert.new # SmtpAlert | Resource for creating a new SMTP alert.
}

begin
  #Site SMTP Alerts
  result = api_instance.create_site_smtp_alert(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->create_site_smtp_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert** | [**SmtpAlert**](SmtpAlert.md)| Resource for creating a new SMTP alert. | [optional] 

### Return type

[**ReferenceWithAlertIDLink**](ReferenceWithAlertIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_site_snmp_alert**
> ReferenceWithAlertIDLink create_site_snmp_alert(id, opts)

Site SNMP Alerts

Creates a new SNMP alert for the specified site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  alert: Rapid7VmConsole::SnmpAlert.new # SnmpAlert | Resource for creating a new SNMP alert.
}

begin
  #Site SNMP Alerts
  result = api_instance.create_site_snmp_alert(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->create_site_snmp_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert** | [**SnmpAlert**](SnmpAlert.md)| Resource for creating a new SNMP alert. | [optional] 

### Return type

[**ReferenceWithAlertIDLink**](ReferenceWithAlertIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_site_syslog_alert**
> ReferenceWithAlertIDLink create_site_syslog_alert(id, opts)

Site Syslog Alerts

Creates a new Syslog alert for the specified site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  alert: Rapid7VmConsole::SyslogAlert.new # SyslogAlert | Resource for creating a new Syslog alert.
}

begin
  #Site Syslog Alerts
  result = api_instance.create_site_syslog_alert(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->create_site_syslog_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert** | [**SyslogAlert**](SyslogAlert.md)| Resource for creating a new Syslog alert. | [optional] 

### Return type

[**ReferenceWithAlertIDLink**](ReferenceWithAlertIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_all_site_alerts**
> Links delete_all_site_alerts(id)

Site Alerts

Deletes all alerts from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Alerts
  result = api_instance.delete_all_site_alerts(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_all_site_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_all_site_credentials**
> Links delete_all_site_credentials(id)

Site Scan Credentials

Deletes all site credentials from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Scan Credentials
  result = api_instance.delete_all_site_credentials(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_all_site_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_all_site_scan_schedules**
> Links delete_all_site_scan_schedules(id)

Site Scan Schedules

Deletes all scan schedules from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Scan Schedules
  result = api_instance.delete_all_site_scan_schedules(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_all_site_scan_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_all_site_smtp_alerts**
> Links delete_all_site_smtp_alerts(id)

Site SMTP Alerts

Deletes all SMTP alerts from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site SMTP Alerts
  result = api_instance.delete_all_site_smtp_alerts(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_all_site_smtp_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_all_site_snmp_alerts**
> Links delete_all_site_snmp_alerts(id)

Site SNMP Alerts

Deletes all SNMP alerts from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site SNMP Alerts
  result = api_instance.delete_all_site_snmp_alerts(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_all_site_snmp_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_all_site_syslog_alerts**
> Links delete_all_site_syslog_alerts(id)

Site Syslog Alerts

Deletes all Syslog alerts from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Syslog Alerts
  result = api_instance.delete_all_site_syslog_alerts(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_all_site_syslog_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_site**
> Links delete_site(id)

Site

site.delete.description

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site
  result = api_instance.delete_site(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_site_credential**
> Links delete_site_credential(id, credential_id)

Site Scan Credential

Deletes the specified site credential.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

credential_id = 56 # Integer | The identifier of the site credential.


begin
  #Site Scan Credential
  result = api_instance.delete_site_credential(id, credential_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_site_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **credential_id** | **Integer**| The identifier of the site credential. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_site_scan_schedule**
> Links delete_site_scan_schedule(id, schedule_id)

Site Scan Schedule

Deletes the specified scan schedule from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

schedule_id = 56 # Integer | The identifier of the scan schedule.


begin
  #Site Scan Schedule
  result = api_instance.delete_site_scan_schedule(id, schedule_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_site_scan_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **schedule_id** | **Integer**| The identifier of the scan schedule. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_site_smtp_alert**
> Links delete_site_smtp_alert(id, alert_id)

Site SMTP Alert

Deletes the specified SMTP alert from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

alert_id = 56 # Integer | The identifier of the alert.


begin
  #Site SMTP Alert
  result = api_instance.delete_site_smtp_alert(id, alert_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_site_smtp_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert_id** | **Integer**| The identifier of the alert. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_site_snmp_alert**
> Links delete_site_snmp_alert(id, alert_id)

Site SNMP Alert

Deletes the specified SNMP alert from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

alert_id = 56 # Integer | The identifier of the alert.


begin
  #Site SNMP Alert
  result = api_instance.delete_site_snmp_alert(id, alert_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_site_snmp_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert_id** | **Integer**| The identifier of the alert. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_site_syslog_alert**
> Links delete_site_syslog_alert(id, alert_id)

Site Syslog Alert

Deletes the specified Syslog alert from the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

alert_id = 56 # Integer | The identifier of the alert.


begin
  #Site Syslog Alert
  result = api_instance.delete_site_syslog_alert(id, alert_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->delete_site_syslog_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert_id** | **Integer**| The identifier of the alert. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **enable_shared_credential_on_site**
> Links enable_shared_credential_on_site(id, credential_id, opts)

Assigned Shared Credential Enablement

Enable or disable the shared credential for the site's scans.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

credential_id = 56 # Integer | The identifier of the shared credential.

opts = { 
  status: true # BOOLEAN | Flag indicating whether the shared credential is enabled for the site's scans.
}

begin
  #Assigned Shared Credential Enablement
  result = api_instance.enable_shared_credential_on_site(id, credential_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->enable_shared_credential_on_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **credential_id** | **Integer**| The identifier of the shared credential. | 
 **status** | **BOOLEAN**| Flag indicating whether the shared credential is enabled for the site&#39;s scans. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **enable_site_credential**
> Links enable_site_credential(id, credential_id, opts)

Site Credential Enablement

Enable or disable the site credential for scans.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

credential_id = 56 # Integer | The identifier of the site credential.

opts = { 
  status: true # BOOLEAN | Flag indicating whether the credential is enabled for use during the scan.
}

begin
  #Site Credential Enablement
  result = api_instance.enable_site_credential(id, credential_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->enable_site_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **credential_id** | **Integer**| The identifier of the site credential. | 
 **status** | **BOOLEAN**| Flag indicating whether the credential is enabled for use during the scan. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_excluded_asset_groups**
> ResourcesAssetGroup get_excluded_asset_groups(id)

Site Excluded Asset Groups

Retrieves the excluded asset groups in a static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Excluded Asset Groups
  result = api_instance.get_excluded_asset_groups(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_excluded_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesAssetGroup**](ResourcesAssetGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_excluded_targets**
> ScanTargetsResource get_excluded_targets(id)

Site Excluded Targets

Retrieves the excluded targets in a static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Excluded Targets
  result = api_instance.get_excluded_targets(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_excluded_targets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ScanTargetsResource**](ScanTargetsResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_included_asset_groups**
> ResourcesAssetGroup get_included_asset_groups(id)

Site Included Asset Groups

Retrieves the included asset groups in a static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Included Asset Groups
  result = api_instance.get_included_asset_groups(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_included_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesAssetGroup**](ResourcesAssetGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_included_targets**
> ScanTargetsResource get_included_targets(id)

Site Included Targets

Retrieves the included targets in a static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Included Targets
  result = api_instance.get_included_targets(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_included_targets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ScanTargetsResource**](ScanTargetsResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site**
> Site get_site(id)

Site

Retrieves the site with the specified identifier.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site
  result = api_instance.get_site(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Site**](Site.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_alerts**
> ResourcesAlert get_site_alerts(id)

Site Alerts

Retrieve all alerts defined in the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Alerts
  result = api_instance.get_site_alerts(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesAlert**](ResourcesAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_assets**
> PageOfAsset get_site_assets(id, opts)

Site Assets

Retrieves a paged resource of assets linked with the specified site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ['sort_example'] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Site Assets
  result = api_instance.get_site_assets(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
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



# **get_site_credential**
> SiteCredential get_site_credential(id, credential_id)

Site Scan Credential

Retrieves the specified site credential.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

credential_id = 56 # Integer | The identifier of the site credential.


begin
  #Site Scan Credential
  result = api_instance.get_site_credential(id, credential_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **credential_id** | **Integer**| The identifier of the site credential. | 

### Return type

[**SiteCredential**](SiteCredential.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_credentials**
> ResourcesSiteCredential get_site_credentials(id)

Site Scan Credentials

Retrieves all defined site credential resources.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Scan Credentials
  result = api_instance.get_site_credentials(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesSiteCredential**](ResourcesSiteCredential.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_discovery_connection**
> SiteDiscoveryConnection get_site_discovery_connection(id)

Site Discovery Connection

Retrieves the discovery connection assigned to the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Discovery Connection
  result = api_instance.get_site_discovery_connection(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_discovery_connection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**SiteDiscoveryConnection**](SiteDiscoveryConnection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_discovery_search_criteria**
> DiscoverySearchCriteria get_site_discovery_search_criteria(id)

Site Discovery Search Criteria

Retrieve the search criteria of the dynamic site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Discovery Search Criteria
  result = api_instance.get_site_discovery_search_criteria(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_discovery_search_criteria: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**DiscoverySearchCriteria**](DiscoverySearchCriteria.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_organization**
> SiteOrganization get_site_organization(id)

Site Organization Information

Retrieves the site organization information.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Organization Information
  result = api_instance.get_site_organization(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_organization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**SiteOrganization**](SiteOrganization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_scan_engine**
> ScanEngine get_site_scan_engine(id)

Site Scan Engine

Retrieves the resource of the scan engine assigned to the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Scan Engine
  result = api_instance.get_site_scan_engine(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_scan_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ScanEngine**](ScanEngine.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_scan_schedule**
> ScanSchedule get_site_scan_schedule(id, schedule_id)

Site Scan Schedule

Retrieves the specified scan schedule.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

schedule_id = 56 # Integer | The identifier of the scan schedule.


begin
  #Site Scan Schedule
  result = api_instance.get_site_scan_schedule(id, schedule_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_scan_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **schedule_id** | **Integer**| The identifier of the scan schedule. | 

### Return type

[**ScanSchedule**](ScanSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_scan_schedules**
> ResourcesScanSchedule get_site_scan_schedules(id)

Site Scan Schedules

Returns all scan schedules for the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Scan Schedules
  result = api_instance.get_site_scan_schedules(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_scan_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesScanSchedule**](ResourcesScanSchedule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_scan_template**
> ScanTemplate get_site_scan_template(id)

Site Scan Template

Retrieves the resource of the scan template assigned to the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Scan Template
  result = api_instance.get_site_scan_template(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_scan_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ScanTemplate**](ScanTemplate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_shared_credentials**
> ResourcesSiteSharedCredential get_site_shared_credentials(id)

Assigned Shared Credentials

Retrieve all of the shared credentials assigned to the site. These shared credentials can be enabled/disabled for the site's scan.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Assigned Shared Credentials
  result = api_instance.get_site_shared_credentials(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_shared_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesSiteSharedCredential**](ResourcesSiteSharedCredential.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_smtp_alert**
> SmtpAlert get_site_smtp_alert(id, alert_id)

Site SMTP Alert

Retrieves the specified SMTP alert.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

alert_id = 56 # Integer | The identifier of the alert.


begin
  #Site SMTP Alert
  result = api_instance.get_site_smtp_alert(id, alert_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_smtp_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert_id** | **Integer**| The identifier of the alert. | 

### Return type

[**SmtpAlert**](SmtpAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_smtp_alerts**
> ResourcesSmtpAlert get_site_smtp_alerts(id)

Site SMTP Alerts

Retrieves all SMTP alerts defined in the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site SMTP Alerts
  result = api_instance.get_site_smtp_alerts(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_smtp_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesSmtpAlert**](ResourcesSmtpAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_snmp_alert**
> SnmpAlert get_site_snmp_alert(id, alert_id)

Site SNMP Alert

Retrieves the specified SNMP alert.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

alert_id = 56 # Integer | The identifier of the alert.


begin
  #Site SNMP Alert
  result = api_instance.get_site_snmp_alert(id, alert_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_snmp_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert_id** | **Integer**| The identifier of the alert. | 

### Return type

[**SnmpAlert**](SnmpAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_snmp_alerts**
> ResourcesSnmpAlert get_site_snmp_alerts(id)

Site SNMP Alerts

Retrieves all SNMP alerts defined in the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site SNMP Alerts
  result = api_instance.get_site_snmp_alerts(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_snmp_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesSnmpAlert**](ResourcesSnmpAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_syslog_alert**
> SyslogAlert get_site_syslog_alert(id, alert_id)

Site Syslog Alert

Retrieves the specified Syslog alert.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

alert_id = 56 # Integer | The identifier of the alert.


begin
  #Site Syslog Alert
  result = api_instance.get_site_syslog_alert(id, alert_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_syslog_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert_id** | **Integer**| The identifier of the alert. | 

### Return type

[**SyslogAlert**](SyslogAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_syslog_alerts**
> ResourcesSyslogAlert get_site_syslog_alerts(id)

Site Syslog Alerts

Retrieves all Syslog alerts defined in the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Syslog Alerts
  result = api_instance.get_site_syslog_alerts(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_syslog_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesSyslogAlert**](ResourcesSyslogAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_tags**
> ResourcesTag get_site_tags(id)

Site Tags

Retrieves the list of tags added to the sites.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Tags
  result = api_instance.get_site_tags(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesTag**](ResourcesTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_site_users**
> ResourcesUser get_site_users(id)

Site Users Access

Retrieve the list of non-administrator users that have access to the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Users Access
  result = api_instance.get_site_users(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_site_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesUser**](ResourcesUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_sites**
> PageOfSite get_sites(opts)

Sites

Retrieves a paged resource of accessible sites.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ['sort_example'] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Sites
  result = api_instance.get_sites(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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



# **get_web_auth_html_forms**
> ResourcesWebFormAuthentication get_web_auth_html_forms(id)

Web Authentication HTML Forms

Retrieves all HTML form authentications configured in the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Web Authentication HTML Forms
  result = api_instance.get_web_auth_html_forms(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_web_auth_html_forms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesWebFormAuthentication**](ResourcesWebFormAuthentication.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_web_auth_http_headers**
> ResourcesWebHeaderAuthentication get_web_auth_http_headers(id)

Web Authentication HTTP Headers

Retrieves all HTTP header authentications configured in the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Web Authentication HTTP Headers
  result = api_instance.get_web_auth_http_headers(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->get_web_auth_http_headers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**ResourcesWebHeaderAuthentication**](ResourcesWebHeaderAuthentication.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_all_excluded_asset_groups**
> Links remove_all_excluded_asset_groups(id)

Site Excluded Asset Groups

Removes all excluded asset groups from the specified static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Excluded Asset Groups
  result = api_instance.remove_all_excluded_asset_groups(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->remove_all_excluded_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_all_included_asset_groups**
> Links remove_all_included_asset_groups(id)

Site Included Asset Groups

Removes all included asset groups from the specified static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Included Asset Groups
  result = api_instance.remove_all_included_asset_groups(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->remove_all_included_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_asset_from_site**
> Links remove_asset_from_site(id, asset_id)

Site Asset

Removes an asset from a site. The asset will only be deleted if it belongs to no other sites.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

asset_id = 789 # Integer | The identifier of the asset.


begin
  #Site Asset
  result = api_instance.remove_asset_from_site(id, asset_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->remove_asset_from_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **asset_id** | **Integer**| The identifier of the asset. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_excluded_asset_group**
> Links remove_excluded_asset_group(id, asset_group_id)

Site Excluded Asset Group

Removes the specified asset group from the excluded asset groups configured in the static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

asset_group_id = 56 # Integer | The identifier of the asset group.


begin
  #Site Excluded Asset Group
  result = api_instance.remove_excluded_asset_group(id, asset_group_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->remove_excluded_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **asset_group_id** | **Integer**| The identifier of the asset group. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_included_asset_group**
> Links remove_included_asset_group(id, asset_group_id)

Site Included Asset Group

Removes the specified asset group from the included asset groups configured in the static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

asset_group_id = 56 # Integer | The identifier of the asset group.


begin
  #Site Included Asset Group
  result = api_instance.remove_included_asset_group(id, asset_group_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->remove_included_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **asset_group_id** | **Integer**| The identifier of the asset group. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_site_assets**
> Links remove_site_assets(id)

Site Assets

Removes all assets from the specified site. Assets will be deleted entirely from the Security Console if either Asset Linking is disabled or if Asset Linking is enabled and the asset only existed in this site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.


begin
  #Site Assets
  result = api_instance.remove_site_assets(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->remove_site_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_site_tag**
> Links remove_site_tag(id, tag_id)

Site Tag

Removes the specified tag from the site's tags.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

tag_id = 56 # Integer | The identifier of the tag.


begin
  #Site Tag
  result = api_instance.remove_site_tag(id, tag_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->remove_site_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **tag_id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_site_user**
> Links remove_site_user(id, user_id)

Site User Access

Removes the specified user from the site's access list.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

user_id = 56 # Integer | The identifier of the user.


begin
  #Site User Access
  result = api_instance.remove_site_user(id, user_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->remove_site_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **user_id** | **Integer**| The identifier of the user. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_credentials**
> Links set_site_credentials(id, opts)

Site Scan Credentials

Updates multiple site credentials.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  site_credentials: [Rapid7VmConsole::SiteCredential.new] # Array<SiteCredential> | A list of site credentials resources.
}

begin
  #Site Scan Credentials
  result = api_instance.set_site_credentials(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **site_credentials** | [**Array&lt;SiteCredential&gt;**](SiteCredential.md)| A list of site credentials resources. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_discovery_connection**
> Links set_site_discovery_connection(id, opts)

Site Discovery Connection

Updates the discovery connection assigned to the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  connection_id: 789 # Integer | The identifier of the discovery connection.
}

begin
  #Site Discovery Connection
  result = api_instance.set_site_discovery_connection(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_discovery_connection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **connection_id** | **Integer**| The identifier of the discovery connection. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_discovery_search_criteria**
> Links set_site_discovery_search_criteria(id, param1)

Site Discovery Search Criteria

Update the search criteria of the dynamic site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

param1 = Rapid7VmConsole::DiscoverySearchCriteria.new # DiscoverySearchCriteria | param1


begin
  #Site Discovery Search Criteria
  result = api_instance.set_site_discovery_search_criteria(id, param1)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_discovery_search_criteria: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **param1** | [**DiscoverySearchCriteria**](DiscoverySearchCriteria.md)| param1 | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_scan_engine**
> Links set_site_scan_engine(id, opts)

Site Scan Engine

Updates the assigned scan engine to the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  scan_engine_id: 56 # Integer | The identifier of the scan engine.
}

begin
  #Site Scan Engine
  result = api_instance.set_site_scan_engine(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_scan_engine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **scan_engine_id** | **Integer**| The identifier of the scan engine. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_scan_schedules**
> Links set_site_scan_schedules(id, opts)

Site Scan Schedules

Updates all scan schedules for the specified site in a single request using the array of resources defined in the request body.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  scan_schedules: [Rapid7VmConsole::ScanSchedule.new] # Array<ScanSchedule> | Array of resources for updating all scan schedules defined in the site. Scan schedules defined in the site that are omitted from this request will be deleted from the site.
}

begin
  #Site Scan Schedules
  result = api_instance.set_site_scan_schedules(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_scan_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **scan_schedules** | [**Array&lt;ScanSchedule&gt;**](ScanSchedule.md)| Array of resources for updating all scan schedules defined in the site. Scan schedules defined in the site that are omitted from this request will be deleted from the site. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_scan_template**
> Links set_site_scan_template(id, opts)

Site Scan Template

Updates the assigned scan template to the site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  scan_template_id: 'scan_template_id_example' # String | The identifier of the scan template.
}

begin
  #Site Scan Template
  result = api_instance.set_site_scan_template(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_scan_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **scan_template_id** | **String**| The identifier of the scan template. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_smtp_alerts**
> Links set_site_smtp_alerts(id, opts)

Site SMTP Alerts

Updates all SMTP alerts for the specified site in a single request using the array of resources defined in the request body.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  alert: [Rapid7VmConsole::SmtpAlert.new] # Array<SmtpAlert> | Array of resources for updating all SMTP alerts defined in the site. Alerts defined in the site that are omitted from this request will be deleted from the site.
}

begin
  #Site SMTP Alerts
  result = api_instance.set_site_smtp_alerts(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_smtp_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert** | [**Array&lt;SmtpAlert&gt;**](SmtpAlert.md)| Array of resources for updating all SMTP alerts defined in the site. Alerts defined in the site that are omitted from this request will be deleted from the site. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_snmp_alerts**
> Links set_site_snmp_alerts(id, opts)

Site SNMP Alerts

Updates all SNMP alerts for the specified site in a single request using the array of resources defined in the request body.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  alert: [Rapid7VmConsole::SnmpAlert.new] # Array<SnmpAlert> | Array of resources for updating all SNMP alerts defined in the site. Alerts defined in the site that are omitted from this request will be deleted from the site.
}

begin
  #Site SNMP Alerts
  result = api_instance.set_site_snmp_alerts(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_snmp_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert** | [**Array&lt;SnmpAlert&gt;**](SnmpAlert.md)| Array of resources for updating all SNMP alerts defined in the site. Alerts defined in the site that are omitted from this request will be deleted from the site. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_syslog_alerts**
> Links set_site_syslog_alerts(id, opts)

Site Syslog Alerts

Updates all Syslog alerts for the specified site in a single request using the array of resources defined in the request body.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  alert: [Rapid7VmConsole::SyslogAlert.new] # Array<SyslogAlert> | Array of resources for updating all Syslog alerts defined in the site. Alerts defined in the site that are omitted from this request will be deleted from the site.
}

begin
  #Site Syslog Alerts
  result = api_instance.set_site_syslog_alerts(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_syslog_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert** | [**Array&lt;SyslogAlert&gt;**](SyslogAlert.md)| Array of resources for updating all Syslog alerts defined in the site. Alerts defined in the site that are omitted from this request will be deleted from the site. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_tags**
> Links set_site_tags(id, opts)

Site Tags

Updates the site's list of tags.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  tags: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | A list of tag identifiers to replace the site's tags.
}

begin
  #Site Tags
  result = api_instance.set_site_tags(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **tags** | **Array&lt;Integer&gt;**| A list of tag identifiers to replace the site&#39;s tags. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_site_users**
> Links set_site_users(id, opts)

Site Users Access

Updates the site's access list.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  users: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | A list of user identifiers to replace the site's access list.
}

begin
  #Site Users Access
  result = api_instance.set_site_users(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->set_site_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **users** | **Array&lt;Integer&gt;**| A list of user identifiers to replace the site&#39;s access list. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_excluded_asset_groups**
> Links update_excluded_asset_groups(id, opts)

Site Excluded Asset Groups

Updates the excluded asset groups in a static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  asset_group_ids: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | Array of asset group identifiers.
}

begin
  #Site Excluded Asset Groups
  result = api_instance.update_excluded_asset_groups(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_excluded_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **asset_group_ids** | **Array&lt;Integer&gt;**| Array of asset group identifiers. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_excluded_targets**
> Links update_excluded_targets(id, opts)

Site Excluded Targets

Updates the excluded targets in a static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  scan_targets: [Rapid7VmConsole::Array<String>.new] # Array<String> | List of addresses to be the site's new excluded scan targets. Each address is a string that can represent either a hostname, ipv4 address, ipv4 address range, ipv6 address, or CIDR notation.
}

begin
  #Site Excluded Targets
  result = api_instance.update_excluded_targets(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_excluded_targets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **scan_targets** | **Array&lt;String&gt;**| List of addresses to be the site&#39;s new excluded scan targets. Each address is a string that can represent either a hostname, ipv4 address, ipv4 address range, ipv6 address, or CIDR notation. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_included_asset_groups**
> Links update_included_asset_groups(id, opts)

Site Included Asset Groups

Updates the included asset groups in a static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  asset_group_ids: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | Array of asset group identifiers.
}

begin
  #Site Included Asset Groups
  result = api_instance.update_included_asset_groups(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_included_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **asset_group_ids** | **Array&lt;Integer&gt;**| Array of asset group identifiers. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_included_targets**
> Links update_included_targets(id, opts)

Site Included Targets

Updates the included targets in a static site.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  scan_targets: [Rapid7VmConsole::Array<String>.new] # Array<String> | List of addresses to be the site's new included scan targets. Each address is a string that can represent either a hostname, ipv4 address, ipv4 address range, ipv6 address, or CIDR notation.
}

begin
  #Site Included Targets
  result = api_instance.update_included_targets(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_included_targets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **scan_targets** | **Array&lt;String&gt;**| List of addresses to be the site&#39;s new included scan targets. Each address is a string that can represent either a hostname, ipv4 address, ipv4 address range, ipv6 address, or CIDR notation. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_site**
> Links update_site(id, opts)

Site

Updates the configuration of the site with the specified identifier.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  site: Rapid7VmConsole::SiteUpdateResource.new # SiteUpdateResource | Resource for updating a site configuration.
}

begin
  #Site
  result = api_instance.update_site(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **site** | [**SiteUpdateResource**](SiteUpdateResource.md)| Resource for updating a site configuration. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_site_credential**
> Links update_site_credential(id, credential_id, opts)

Site Scan Credential

Updates the specified site credential.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

credential_id = 56 # Integer | The identifier of the site credential.

opts = { 
  site_credential: Rapid7VmConsole::SiteCredential.new # SiteCredential | The specification of the site credential to update.
}

begin
  #Site Scan Credential
  result = api_instance.update_site_credential(id, credential_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_site_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **credential_id** | **Integer**| The identifier of the site credential. | 
 **site_credential** | [**SiteCredential**](SiteCredential.md)| The specification of the site credential to update. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_site_organization**
> Links update_site_organization(id, opts)

Site Organization Information

Updates the site organization information.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

opts = { 
  site_organization: Rapid7VmConsole::SiteOrganization.new # SiteOrganization | Resource for updating the specified site's organization information.
}

begin
  #Site Organization Information
  result = api_instance.update_site_organization(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_site_organization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **site_organization** | [**SiteOrganization**](SiteOrganization.md)| Resource for updating the specified site&#39;s organization information. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_site_scan_schedule**
> Links update_site_scan_schedule(id, schedule_id, opts)

Site Scan Schedule

Updates the specified scan schedule.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

schedule_id = 56 # Integer | The identifier of the scan schedule.

opts = { 
  scan_schedule: Rapid7VmConsole::ScanSchedule.new # ScanSchedule | Resource for updating the specified scan schedule.
}

begin
  #Site Scan Schedule
  result = api_instance.update_site_scan_schedule(id, schedule_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_site_scan_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **schedule_id** | **Integer**| The identifier of the scan schedule. | 
 **scan_schedule** | [**ScanSchedule**](ScanSchedule.md)| Resource for updating the specified scan schedule. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_site_smtp_alert**
> Links update_site_smtp_alert(id, alert_id, opts)

Site SMTP Alert

Updates the specified SMTP alert.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

alert_id = 56 # Integer | The identifier of the alert.

opts = { 
  alert: Rapid7VmConsole::SmtpAlert.new # SmtpAlert | Resource for updating the specified SMTP alert.
}

begin
  #Site SMTP Alert
  result = api_instance.update_site_smtp_alert(id, alert_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_site_smtp_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert_id** | **Integer**| The identifier of the alert. | 
 **alert** | [**SmtpAlert**](SmtpAlert.md)| Resource for updating the specified SMTP alert. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_site_snmp_alert**
> Links update_site_snmp_alert(id, alert_id, opts)

Site SNMP Alert

Updates the specified SNMP alert.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

alert_id = 56 # Integer | The identifier of the alert.

opts = { 
  alert: Rapid7VmConsole::SnmpAlert.new # SnmpAlert | Resource for updating the specified SNMP alert.
}

begin
  #Site SNMP Alert
  result = api_instance.update_site_snmp_alert(id, alert_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_site_snmp_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert_id** | **Integer**| The identifier of the alert. | 
 **alert** | [**SnmpAlert**](SnmpAlert.md)| Resource for updating the specified SNMP alert. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_site_syslog_alert**
> Links update_site_syslog_alert(id, alert_id, opts)

Site Syslog Alert

Updates the specified Syslog alert.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::SiteApi.new

id = 56 # Integer | The identifier of the site.

alert_id = 56 # Integer | The identifier of the alert.

opts = { 
  alert: Rapid7VmConsole::SyslogAlert.new # SyslogAlert | Resource for updating the specified Syslog alert.
}

begin
  #Site Syslog Alert
  result = api_instance.update_site_syslog_alert(id, alert_id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling SiteApi->update_site_syslog_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the site. | 
 **alert_id** | **Integer**| The identifier of the alert. | 
 **alert** | [**SyslogAlert**](SyslogAlert.md)| Resource for updating the specified Syslog alert. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



