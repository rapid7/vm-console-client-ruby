# Rapid7VmConsole::TagApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tag**](TagApi.md#create_tag) | **POST** /api/3/tags | Tags
[**delete_tag**](TagApi.md#delete_tag) | **DELETE** /api/3/tags/{id} | Tag
[**get_tag**](TagApi.md#get_tag) | **GET** /api/3/tags/{id} | Tag
[**get_tag_asset_groups**](TagApi.md#get_tag_asset_groups) | **GET** /api/3/tags/{id}/asset_groups | Tag Asset Groups
[**get_tag_search_criteria**](TagApi.md#get_tag_search_criteria) | **GET** /api/3/tags/{id}/search_criteria | Tag Search Criteria
[**get_tagged_assets**](TagApi.md#get_tagged_assets) | **GET** /api/3/tags/{id}/assets | Tag Assets
[**get_tagged_sites**](TagApi.md#get_tagged_sites) | **GET** /api/3/tags/{id}/sites | Tag Sites
[**get_tags**](TagApi.md#get_tags) | **GET** /api/3/tags | Tags
[**remove_tag_search_criteria**](TagApi.md#remove_tag_search_criteria) | **DELETE** /api/3/tags/{id}/search_criteria | Tag Search Criteria
[**remove_tagged_sites**](TagApi.md#remove_tagged_sites) | **DELETE** /api/3/tags/{id}/sites | Tag Sites
[**set_tagged_asset_groups**](TagApi.md#set_tagged_asset_groups) | **PUT** /api/3/tags/{id}/asset_groups | Tag Asset Groups
[**set_tagged_sites**](TagApi.md#set_tagged_sites) | **PUT** /api/3/tags/{id}/sites | Tag Sites
[**tag_asset**](TagApi.md#tag_asset) | **PUT** /api/3/tags/{id}/assets/{assetId} | Tag Asset
[**tag_asset_group**](TagApi.md#tag_asset_group) | **PUT** /api/3/tags/{id}/asset_groups/{assetGroupId} | Tag Asset Group
[**tag_site**](TagApi.md#tag_site) | **PUT** /api/3/tags/{id}/sites/{siteId} | Tag Site
[**untag_all_asset_groups**](TagApi.md#untag_all_asset_groups) | **DELETE** /api/3/tags/{id}/asset_groups | Tag Asset Groups
[**untag_asset**](TagApi.md#untag_asset) | **DELETE** /api/3/tags/{id}/assets/{assetId} | Tag Asset
[**untag_asset_group**](TagApi.md#untag_asset_group) | **DELETE** /api/3/tags/{id}/asset_groups/{assetGroupId} | Tag Asset Group
[**untag_site**](TagApi.md#untag_site) | **DELETE** /api/3/tags/{id}/sites/{siteId} | Tag Site
[**update_tag**](TagApi.md#update_tag) | **PUT** /api/3/tags/{id} | Tag
[**update_tag_search_criteria**](TagApi.md#update_tag_search_criteria) | **PUT** /api/3/tags/{id}/search_criteria | Tag Search Criteria


# **create_tag**
> ReferenceWithTagIDLink create_tag(opts)

Tags

Creates a new tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

opts = { 
  tag: Rapid7VmConsole::Tag.new # Tag | The details of the tag.
}

begin
  #Tags
  result = api_instance.create_tag(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->create_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | [**Tag**](Tag.md)| The details of the tag. | [optional] 

### Return type

[**ReferenceWithTagIDLink**](ReferenceWithTagIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_tag**
> Links delete_tag(id)

Tag

Deletes the tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.


begin
  #Tag
  result = api_instance.delete_tag(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->delete_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_tag**
> Tag get_tag(id)

Tag

Returns a tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.


begin
  #Tag
  result = api_instance.get_tag(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->get_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 

### Return type

[**Tag**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_tag_asset_groups**
> ReferencesWithAssetGroupIDLink get_tag_asset_groups(id)

Tag Asset Groups

Returns the asset groups associated with the tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.


begin
  #Tag Asset Groups
  result = api_instance.get_tag_asset_groups(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->get_tag_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 

### Return type

[**ReferencesWithAssetGroupIDLink**](ReferencesWithAssetGroupIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_tag_search_criteria**
> SearchCriteria get_tag_search_criteria(id)

Tag Search Criteria

Returns the search criteria associated with the tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.


begin
  #Tag Search Criteria
  result = api_instance.get_tag_search_criteria(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->get_tag_search_criteria: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 

### Return type

[**SearchCriteria**](SearchCriteria.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_tagged_assets**
> TaggedAssetReferences get_tagged_assets(id)

Tag Assets

Returns the assets tagged with a tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.


begin
  #Tag Assets
  result = api_instance.get_tagged_assets(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->get_tagged_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 

### Return type

[**TaggedAssetReferences**](TaggedAssetReferences.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_tagged_sites**
> ReferencesWithSiteIDLink get_tagged_sites(id)

Tag Sites

Returns the sites associated with the tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.


begin
  #Tag Sites
  result = api_instance.get_tagged_sites(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->get_tagged_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 

### Return type

[**ReferencesWithSiteIDLink**](ReferencesWithSiteIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_tags**
> PageOfTag get_tags(opts)

Tags

Returns all tags.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

opts = { 
  name: "name_example", # String | name
  type: "type_example", # String | type
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Tags
  result = api_instance.get_tags(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name | [optional] 
 **type** | **String**| type | [optional] 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfTag**](PageOfTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_tag_search_criteria**
> Links remove_tag_search_criteria(id)

Tag Search Criteria

Removes the search criteria associated with the tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.


begin
  #Tag Search Criteria
  result = api_instance.remove_tag_search_criteria(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->remove_tag_search_criteria: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_tagged_sites**
> Links remove_tagged_sites(id)

Tag Sites

Removes the associations between the tag and the sites.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.


begin
  #Tag Sites
  result = api_instance.remove_tagged_sites(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->remove_tagged_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_tagged_asset_groups**
> Links set_tagged_asset_groups(id, opts)

Tag Asset Groups

Sets the asset groups associated with the tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

opts = { 
  asset_group_ids: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | The asset groups to add to the tag.
}

begin
  #Tag Asset Groups
  result = api_instance.set_tagged_asset_groups(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->set_tagged_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **asset_group_ids** | **Array&lt;Integer&gt;**| The asset groups to add to the tag. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_tagged_sites**
> Links set_tagged_sites(id, opts)

Tag Sites

Sets the sites associated with the tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

opts = { 
  sites: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | The sites to add to the tag.
}

begin
  #Tag Sites
  result = api_instance.set_tagged_sites(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->set_tagged_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **sites** | **Array&lt;Integer&gt;**| The sites to add to the tag. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **tag_asset**
> Links tag_asset(id, asset_id)

Tag Asset

Adds an asset to the tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

asset_id = 789 # Integer | The identifier of the asset.


begin
  #Tag Asset
  result = api_instance.tag_asset(id, asset_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->tag_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **asset_id** | **Integer**| The identifier of the asset. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **tag_asset_group**
> Links tag_asset_group(id, asset_group_id)

Tag Asset Group

Adds an asset group to this tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

asset_group_id = 56 # Integer | The asset group identifier.


begin
  #Tag Asset Group
  result = api_instance.tag_asset_group(id, asset_group_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->tag_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **asset_group_id** | **Integer**| The asset group identifier. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **tag_site**
> Links tag_site(id, site_id)

Tag Site

Adds a site to this tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

site_id = 56 # Integer | The identifier of the site.


begin
  #Tag Site
  result = api_instance.tag_site(id, site_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->tag_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **site_id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **untag_all_asset_groups**
> Links untag_all_asset_groups(id)

Tag Asset Groups

Removes the associations between the tag and all asset groups.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.


begin
  #Tag Asset Groups
  result = api_instance.untag_all_asset_groups(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->untag_all_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **untag_asset**
> Links untag_asset(id, asset_id)

Tag Asset

Removes an asset from the tag. Note: The asset must be added through the asset or tag, if the asset is added using a site, asset group, or search criteria this will not remove the asset.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

asset_id = 789 # Integer | The identifier of the asset.


begin
  #Tag Asset
  result = api_instance.untag_asset(id, asset_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->untag_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **asset_id** | **Integer**| The identifier of the asset. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **untag_asset_group**
> Links untag_asset_group(id, asset_group_id)

Tag Asset Group

Removes an asset group from this tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

asset_group_id = 56 # Integer | The asset group identifier.


begin
  #Tag Asset Group
  result = api_instance.untag_asset_group(id, asset_group_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->untag_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **asset_group_id** | **Integer**| The asset group identifier. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **untag_site**
> Links untag_site(id, site_id)

Tag Site

Removes a site from this tag.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

site_id = 56 # Integer | The identifier of the site.


begin
  #Tag Site
  result = api_instance.untag_site(id, site_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->untag_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **site_id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_tag**
> Links update_tag(id, opts)

Tag

Updates the details of a tag. For more information about accepted fields for the tag search criteria see the PUT /search_criteria documentation.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

opts = { 
  tag: Rapid7VmConsole::Tag.new # Tag | The details of the tag.
}

begin
  #Tag
  result = api_instance.update_tag(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->update_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **tag** | [**Tag**](Tag.md)| The details of the tag. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_tag_search_criteria**
> Links update_tag_search_criteria(id, opts)

Tag Search Criteria

Updates the search criteria associated with the tag.   The following table outlines the search criteria fields and the available operators:  | Field | Operators |  | ---------- | ---------------- |  | asset name | is,is not,starts with,ends with,contains,does not contain,is empty,is not empty,is like,not like |  | asset risk score | is,is not,in range,greater than,less than |  | container image | is,is not,starts with,ends with,contains,does not contain,is like,not like |  | container status | is,is not |  | containers | are |  | CVE IDs | is,is not,contains,does not contain |  | CVSS Access Complexity | is,is not | | CVSS Authentication Required | is,is not | | CVSS Access Vector | is,is not | | CVSS Availability Impact | is,is not | | CVSS Confidentiality Impact | is,is not | | CVSS Integrity Impact | is,is not | | CVSS Access Complexity | is,is not | | host type | in,not in |  | asset IP Address | is,is not,in range,not in range,is like,not like |  | asset IP Address Type | in,not in |  | asset last scan date | is on or before,is on or after,is between,is earlier than,is within the last |  | mobile device last sync time | is within the last,is earlier than |  | open ports | is,is not,in range |  | asset operating system | contains,does not contain,is empty,is not empty |  | asset alternate address type | in |  | asset PCI compliance | is |  | asset service name | contains,does not contain |  | asset site ID | in,not in |  | asset software | contains,does not contain|  | asset Criticality tag | is,is not,is greater than,is less than,is applied,is not applied |  | asset Custom tag | is,is not,starts with, ends with,contains,does not contain,is applied,is not applied |  | asset Location tag | is,is not,starts with,ends with,contains,does not contain,is applied,is not applied |  | asset Owner tag | is,is not,starts with,ends with,contains,does not contain,is applied,is not applied |  | asset vulnerability validated status | are |  | asset VAsset cluster | is,is not,contains,does not contain,starts with |  | asset VAsset datacenter | is,is not |  | asset VAsset host name | is,is not,contains,does not contain,starts with |  | asset VAsset power state | in,not in |  | asset VAsset resource pool path | contains,does not contain |  | asset vulnerability assessed | is on or before,is on or after,is between,is earlier than,is within the last |  | asset vulnerability category | is,is not,starts with,ends with,contains,does not contain|  | asset vulnerability CVSS score | is,is not,in range,is greater than,is less than |  | asset vulnerability exposures | includes,does not include |  | asset vulnerability title | contains,does not contain,is,is not,starts with,ends with |   The following table outlines the operators and the values associated with them:  | Operator | Values |  | -------- | ------ |  | are | A single string property named \"value\" |  | is between | A number property named \"lower\" and a number property named \"upper\" |  | contains | A single string property named \"value\" |  | does not contain | A single string property named \"value\" |  | is earlier than | A single number property named \"value\" |  | ends with | A single string property named \"value\" |  | is greater than | A single number property named \"value\" |  | in | An array property named \"values\" |  | not in | An array property named \"values\" |  | in range | A number property named \"lower\" and a number property named \"upper\" |  | includes | An array property named \"values\" |  | is | A single string property named \"value\" |  | is not | A single string property named \"value\" |  | is applied | No value |  | is not applied | No value |  | is empty | No value |  | is not empty | No value |  | less than | A single number property named \"value\" |  | like | A single string property named \"value\" |  | not contains | A single string property named \"value\" |  | not in range | A number property named \"lower\" and a number property named \"upper\" |  | not like | A single string property named \"value\" |  | is on or after | A single string property named \"value\", which is the date in ISO8601 format (yyyy-MM-dd) |  | is on or before | A single string property named \"value\", which is the date in ISO8601 format (yyyy-MM-dd) |  | starts with | A single string property named \"value\" |  | is within the last | A single number property named \"value\" |   The following fields have enumerated values:  | Field | Acceptable Values |  | ----- | ----------------- |  | containers | 0=present, 1=not present |  | asset vulnerability validated status | 0=present, 1=not present |  | asset PCI compliance | 0=fail, 1=pass |  | asset alternate address type | 0=IPv4, 1=IPv6 |  | asset IP Address Type | 0=IPv4, 1=IPv6 |  | host type | 0=Unknown, 1=Guest, 2=Hypervisor, 3=Physical, 4=Mobile |  | CVSS Access Complexity | L=Low, M=Medium, H=High |  | CVSS Integrity Impact | N=None, P=Partial, C=Complete |  | CVSS Confidentiality Impact | N=None, P=Partial, C=Complete |  | CVSS Availability Impact | N=None, P=Partial, C=Complete |  | CVSS Access Vector | L=Local, A=Adjacent, N=Network |  | CVSS Authentication Required | N=None, S=Single, M=Multiple |  | CVSS Access Complexity | L=Low, M=Medium, H=High |  | container status | created, running, paused, restarting, exited, dead, unknown |  

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::TagApi.new

id = 56 # Integer | The identifier of the tag.

opts = { 
  criterial: Rapid7VmConsole::SearchCriteria.new # SearchCriteria | The details of the search criteria.
}

begin
  #Tag Search Criteria
  result = api_instance.update_tag_search_criteria(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling TagApi->update_tag_search_criteria: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the tag. | 
 **criterial** | [**SearchCriteria**](SearchCriteria.md)| The details of the search criteria. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



