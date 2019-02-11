# Rapid7VmConsole::AssetGroupApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_asset_group_tag**](AssetGroupApi.md#add_asset_group_tag) | **PUT** /api/3/asset_groups/{id}/tags/{tagId} | Asset Group Tag
[**add_asset_group_user**](AssetGroupApi.md#add_asset_group_user) | **PUT** /api/3/asset_groups/{id}/users/{userId} | Asset Group User
[**add_asset_to_asset_group**](AssetGroupApi.md#add_asset_to_asset_group) | **PUT** /api/3/asset_groups/{id}/assets/{assetId} | Asset Group Asset
[**create_asset_group**](AssetGroupApi.md#create_asset_group) | **POST** /api/3/asset_groups | Asset Groups
[**delete_asset_group**](AssetGroupApi.md#delete_asset_group) | **DELETE** /api/3/asset_groups/{id} | Asset Group
[**get_asset_group**](AssetGroupApi.md#get_asset_group) | **GET** /api/3/asset_groups/{id} | Asset Group
[**get_asset_group_assets**](AssetGroupApi.md#get_asset_group_assets) | **GET** /api/3/asset_groups/{id}/assets | Asset Group Assets
[**get_asset_group_search_criteria**](AssetGroupApi.md#get_asset_group_search_criteria) | **GET** /api/3/asset_groups/{id}/search_criteria | Asset Group Search Criteria
[**get_asset_group_tags**](AssetGroupApi.md#get_asset_group_tags) | **GET** /api/3/asset_groups/{id}/tags | Asset Group Tags
[**get_asset_group_users**](AssetGroupApi.md#get_asset_group_users) | **GET** /api/3/asset_groups/{id}/users | Asset Group Users
[**get_asset_groups**](AssetGroupApi.md#get_asset_groups) | **GET** /api/3/asset_groups | Asset Groups
[**remove_all_asset_group_tags**](AssetGroupApi.md#remove_all_asset_group_tags) | **DELETE** /api/3/asset_groups/{id}/tags | Asset Group Tags
[**remove_all_assets_from_asset_group**](AssetGroupApi.md#remove_all_assets_from_asset_group) | **DELETE** /api/3/asset_groups/{id}/assets | Asset Group Assets
[**remove_asset_from_asset_group**](AssetGroupApi.md#remove_asset_from_asset_group) | **DELETE** /api/3/asset_groups/{id}/assets/{assetId} | Asset Group Asset
[**remove_asset_group_tag**](AssetGroupApi.md#remove_asset_group_tag) | **DELETE** /api/3/asset_groups/{id}/tags/{tagId} | Asset Group Tag
[**remove_asset_group_user**](AssetGroupApi.md#remove_asset_group_user) | **DELETE** /api/3/asset_groups/{id}/users/{userId} | Asset Group User
[**set_asset_group_search_criteria**](AssetGroupApi.md#set_asset_group_search_criteria) | **PUT** /api/3/asset_groups/{id}/search_criteria | Asset Group Search Criteria
[**set_asset_group_tags**](AssetGroupApi.md#set_asset_group_tags) | **PUT** /api/3/asset_groups/{id}/tags | Asset Group Tags
[**set_asset_group_users**](AssetGroupApi.md#set_asset_group_users) | **PUT** /api/3/asset_groups/{id}/users | Asset Group Users
[**update_asset_group**](AssetGroupApi.md#update_asset_group) | **PUT** /api/3/asset_groups/{id} | Asset Group
[**update_asset_group_assets**](AssetGroupApi.md#update_asset_group_assets) | **PUT** /api/3/asset_groups/{id}/assets | Asset Group Assets


# **add_asset_group_tag**
> Links add_asset_group_tag(id, tag_id)

Asset Group Tag

Adds a tag to an asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

tag_id = 56 # Integer | The identifier of the tag.


begin
  #Asset Group Tag
  result = api_instance.add_asset_group_tag(id, tag_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->add_asset_group_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **tag_id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **add_asset_group_user**
> Links add_asset_group_user(id, user_id)

Asset Group User

Grants a user with sufficient privileges access to the asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

user_id = 56 # Integer | The identifier of the user.


begin
  #Asset Group User
  result = api_instance.add_asset_group_user(id, user_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->add_asset_group_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **user_id** | **Integer**| The identifier of the user. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **add_asset_to_asset_group**
> Links add_asset_to_asset_group(id, asset_id)

Asset Group Asset

Adds an asset to a static asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

asset_id = 789 # Integer | The identifier of the asset.


begin
  #Asset Group Asset
  result = api_instance.add_asset_to_asset_group(id, asset_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->add_asset_to_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **asset_id** | **Integer**| The identifier of the asset. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_asset_group**
> CreatedReferenceAssetGroupIDLink create_asset_group(opts)

Asset Groups

Creates a new asset group. The `searchCriteria` field can be passed no matter what the type of the asset group is. The asset group `type` changes when the assets are refreshed. Dynamic asset groups constantly refreshed their membership as assets are scanned whereas static asset groups do not change membership automatically.  See the <a href=\"#section/Responses/SearchCriteria\">Search Criteria</a> for more information on using dynamic criteria.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

opts = { 
  asset_group: Rapid7VmConsole::AssetGroup.new # AssetGroup | The details of the asset group.
}

begin
  #Asset Groups
  result = api_instance.create_asset_group(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->create_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_group** | [**AssetGroup**](AssetGroup.md)| The details of the asset group. | [optional] 

### Return type

[**CreatedReferenceAssetGroupIDLink**](CreatedReferenceAssetGroupIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_asset_group**
> Links delete_asset_group(id)

Asset Group

Deletes the asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group
  result = api_instance.delete_asset_group(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->delete_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_group**
> AssetGroup get_asset_group(id)

Asset Group

Returns an asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group
  result = api_instance.get_asset_group(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->get_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 

### Return type

[**AssetGroup**](AssetGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_group_assets**
> ReferencesWithAssetIDLink get_asset_group_assets(id)

Asset Group Assets

Returns hypermedia links for the assets that belong to an asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group Assets
  result = api_instance.get_asset_group_assets(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->get_asset_group_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 

### Return type

[**ReferencesWithAssetIDLink**](ReferencesWithAssetIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_group_search_criteria**
> SearchCriteria get_asset_group_search_criteria(id)

Asset Group Search Criteria

Returns the search criteria of a dynamic asset group.For a reference of valid search criteria input see the <a href=\"#operation/getAssetsSearchUsingPOST\">Asset Search</a> resource.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group Search Criteria
  result = api_instance.get_asset_group_search_criteria(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->get_asset_group_search_criteria: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 

### Return type

[**SearchCriteria**](SearchCriteria.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_group_tags**
> ReferencesWithTagIDLink get_asset_group_tags(id)

Asset Group Tags

Returns the tags assigned to an asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group Tags
  result = api_instance.get_asset_group_tags(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->get_asset_group_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 

### Return type

[**ReferencesWithTagIDLink**](ReferencesWithTagIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_group_users**
> ReferencesWithUserIDLink get_asset_group_users(id)

Asset Group Users

Returns hypermedia links for the users with access to this asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group Users
  result = api_instance.get_asset_group_users(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->get_asset_group_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 

### Return type

[**ReferencesWithUserIDLink**](ReferencesWithUserIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_asset_groups**
> PageOfAssetGroup get_asset_groups(opts)

Asset Groups

Returns all asset groups.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

opts = { 
  type: 'type_example', # String | The type of asset group.
  name: 'name_example', # String | A search pattern for the name of the asset group. Searches are case-insensitive contains.
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ['sort_example'] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Asset Groups
  result = api_instance.get_asset_groups(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->get_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The type of asset group. | [optional] 
 **name** | **String**| A search pattern for the name of the asset group. Searches are case-insensitive contains. | [optional] 
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfAssetGroup**](PageOfAssetGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_all_asset_group_tags**
> Links remove_all_asset_group_tags(id)

Asset Group Tags

Removes all tag associations from the asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group Tags
  result = api_instance.remove_all_asset_group_tags(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->remove_all_asset_group_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_all_assets_from_asset_group**
> Links remove_all_assets_from_asset_group(id)

Asset Group Assets

Removes the assets from the given static asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group Assets
  result = api_instance.remove_all_assets_from_asset_group(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->remove_all_assets_from_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_asset_from_asset_group**
> Links remove_asset_from_asset_group(id, asset_id)

Asset Group Asset

Removes an asset from an asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

asset_id = 789 # Integer | The identifier of the asset.


begin
  #Asset Group Asset
  result = api_instance.remove_asset_from_asset_group(id, asset_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->remove_asset_from_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **asset_id** | **Integer**| The identifier of the asset. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_asset_group_tag**
> Links remove_asset_group_tag(id, tag_id)

Asset Group Tag

Removes a tag from an asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

tag_id = 56 # Integer | The identifier of the tag.


begin
  #Asset Group Tag
  result = api_instance.remove_asset_group_tag(id, tag_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->remove_asset_group_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **tag_id** | **Integer**| The identifier of the tag. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_asset_group_user**
> Links remove_asset_group_user(id, user_id)

Asset Group User

Removes a user's access from an asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

user_id = 56 # Integer | The identifier of the user.


begin
  #Asset Group User
  result = api_instance.remove_asset_group_user(id, user_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->remove_asset_group_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **user_id** | **Integer**| The identifier of the user. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_asset_group_search_criteria**
> Links set_asset_group_search_criteria(id, opts)

Asset Group Search Criteria

Updates the search criteria of a dynamic asset group. For a reference of valid search criteria input see the <a href=\"#operation/getAssetsSearchUsingPOST\">Asset Search</a> resource.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

opts = { 
  criteria: Rapid7VmConsole::SearchCriteria.new # SearchCriteria | The search criteria specification.
}

begin
  #Asset Group Search Criteria
  result = api_instance.set_asset_group_search_criteria(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->set_asset_group_search_criteria: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **criteria** | [**SearchCriteria**](SearchCriteria.md)| The search criteria specification. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_asset_group_tags**
> Links set_asset_group_tags(id, opts)

Asset Group Tags

Updates the tags of an asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

opts = { 
  tags: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | The tags to associate to the asset group.
}

begin
  #Asset Group Tags
  result = api_instance.set_asset_group_tags(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->set_asset_group_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **tags** | **Array&lt;Integer&gt;**| The tags to associate to the asset group. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_asset_group_users**
> Links set_asset_group_users(id, opts)

Asset Group Users

Grants users with sufficient privileges access to an asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

opts = { 
  users: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | The users to grant access to the asset group.
}

begin
  #Asset Group Users
  result = api_instance.set_asset_group_users(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->set_asset_group_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **users** | **Array&lt;Integer&gt;**| The users to grant access to the asset group. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_asset_group**
> Links update_asset_group(id, opts)

Asset Group

Updates the details of an asset group. See the search criteria endpoint (/search_criteria) for more information about building the search criteria and examples.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

opts = { 
  asset_group: Rapid7VmConsole::AssetGroup.new # AssetGroup | The details of the asset group.
}

begin
  #Asset Group
  result = api_instance.update_asset_group(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->update_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **asset_group** | [**AssetGroup**](AssetGroup.md)| The details of the asset group. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_asset_group_assets**
> Links update_asset_group_assets(id, opts)

Asset Group Assets

Updates all the assets that belong to a static asset group.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AssetGroupApi.new

id = 56 # Integer | The identifier of the asset group.

opts = { 
  assets: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | The assets to place in the asset group. 
}

begin
  #Asset Group Assets
  result = api_instance.update_asset_group_assets(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AssetGroupApi->update_asset_group_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the asset group. | 
 **assets** | **Array&lt;Integer&gt;**| The assets to place in the asset group.  | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



