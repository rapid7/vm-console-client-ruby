# Rapid7VmConsole::UserApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_asset_group**](UserApi.md#add_user_asset_group) | **PUT** /api/3/users/{id}/asset_groups/{assetGroupId} | Asset Group Access
[**add_user_site**](UserApi.md#add_user_site) | **PUT** /api/3/users/{id}/sites/{siteId} | Site Access
[**create_user**](UserApi.md#create_user) | **POST** /api/3/users | Users
[**delete_role**](UserApi.md#delete_role) | **DELETE** /api/3/roles/{id} | Role
[**get_authentication_source**](UserApi.md#get_authentication_source) | **GET** /api/3/authentication_sources/{id} | Authentication Source
[**get_authentication_source_users**](UserApi.md#get_authentication_source_users) | **GET** /api/3/authentication_sources/{id}/users | Authentication Source Users
[**get_authentication_sources**](UserApi.md#get_authentication_sources) | **GET** /api/3/authentication_sources | Authentication Sources
[**get_privilege**](UserApi.md#get_privilege) | **GET** /api/3/privileges/{id} | Privilege
[**get_privileges**](UserApi.md#get_privileges) | **GET** /api/3/privileges | Privileges
[**get_role**](UserApi.md#get_role) | **GET** /api/3/roles/{id} | Role
[**get_role_users**](UserApi.md#get_role_users) | **GET** /api/3/roles/{id}/users | Users With Role
[**get_roles**](UserApi.md#get_roles) | **GET** /api/3/roles | Roles
[**get_two_factor_authentication_key**](UserApi.md#get_two_factor_authentication_key) | **GET** /api/3/users/{id}/2FA | Two-Factor Authentication
[**get_user**](UserApi.md#get_user) | **GET** /api/3/users/{id} | User
[**get_user_asset_groups**](UserApi.md#get_user_asset_groups) | **GET** /api/3/users/{id}/asset_groups | Asset Groups Access
[**get_user_privileges**](UserApi.md#get_user_privileges) | **GET** /api/3/users/{id}/privileges | User Privileges
[**get_user_sites**](UserApi.md#get_user_sites) | **GET** /api/3/users/{id}/sites | Sites Access
[**get_users**](UserApi.md#get_users) | **GET** /api/3/users | Users
[**get_users_with_privilege**](UserApi.md#get_users_with_privilege) | **GET** /api/3/privileges/{id}/users | Users With Privilege
[**regenerate_two_factor_authentication**](UserApi.md#regenerate_two_factor_authentication) | **POST** /api/3/users/{id}/2FA | Two-Factor Authentication
[**remove_all_user_asset_groups**](UserApi.md#remove_all_user_asset_groups) | **DELETE** /api/3/users/{id}/asset_groups | Asset Groups Access
[**remove_all_user_sites**](UserApi.md#remove_all_user_sites) | **DELETE** /api/3/users/{id}/sites | Sites Access
[**remove_user_asset_group**](UserApi.md#remove_user_asset_group) | **DELETE** /api/3/users/{id}/asset_groups/{assetGroupId} | Asset Group Access
[**remove_user_site**](UserApi.md#remove_user_site) | **DELETE** /api/3/users/{id}/sites/{siteId} | Site Access
[**reset_password**](UserApi.md#reset_password) | **PUT** /api/3/users/{id}/password | Password Reset
[**set_two_factor_authentication**](UserApi.md#set_two_factor_authentication) | **PUT** /api/3/users/{id}/2FA | Two-Factor Authentication
[**set_user_asset_groups**](UserApi.md#set_user_asset_groups) | **PUT** /api/3/users/{id}/asset_groups | Asset Groups Access
[**set_user_sites**](UserApi.md#set_user_sites) | **PUT** /api/3/users/{id}/sites | Sites Access
[**unlock_user**](UserApi.md#unlock_user) | **DELETE** /api/3/users/{id}/lock | Unlock Account
[**update_role**](UserApi.md#update_role) | **PUT** /api/3/roles/{id} | Role
[**update_user**](UserApi.md#update_user) | **PUT** /api/3/users/{id} | User


# **add_user_asset_group**
> Links add_user_asset_group(id, asset_group_id)

Asset Group Access

Grants the user access to the asset group. Individual asset group access cannot be granted to users with the `allAssetGroups` permission. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.

asset_group_id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group Access
  result = api_instance.add_user_asset_group(id, asset_group_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->add_user_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 
 **asset_group_id** | **Integer**| The identifier of the asset group. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **add_user_site**
> Links add_user_site(id, site_id)

Site Access

Grants the user access to the site. Individual site access cannot be granted to users with the `allSites` permission. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.

site_id = 56 # Integer | The identifier of the site.


begin
  #Site Access
  result = api_instance.add_user_site(id, site_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->add_user_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 
 **site_id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **create_user**
> CreatedReferenceUserIDLink create_user(opts)

Users

Creates a new user. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

opts = { 
  param0: Rapid7VmConsole::User.new # User | The details of the user.
}

begin
  #Users
  result = api_instance.create_user(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->create_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **param0** | [**User**](User.md)| The details of the user. | [optional] 

### Return type

[**CreatedReferenceUserIDLink**](CreatedReferenceUserIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_role**
> Links delete_role(id)

Role

Removes a role with the specified identifier. The role must not be built-in and cannot be currently assigned to any users.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = "id_example" # String | The identifier of the role.


begin
  #Role
  result = api_instance.delete_role(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->delete_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the role. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_authentication_source**
> AuthenticationSource get_authentication_source(id)

Authentication Source

Returns the details for an authentication source.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the authentication source.


begin
  #Authentication Source
  result = api_instance.get_authentication_source(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_authentication_source: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the authentication source. | 

### Return type

[**AuthenticationSource**](AuthenticationSource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_authentication_source_users**
> ReferencesWithUserIDLink get_authentication_source_users(id)

Authentication Source Users

Returns hypermedia links for the user accounts that use the authentication source to authenticate.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the authentication source.


begin
  #Authentication Source Users
  result = api_instance.get_authentication_source_users(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_authentication_source_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the authentication source. | 

### Return type

[**ReferencesWithUserIDLink**](ReferencesWithUserIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_authentication_sources**
> ResourcesAuthenticationSource get_authentication_sources

Authentication Sources

Returns all available sources of authentication for users.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

begin
  #Authentication Sources
  result = api_instance.get_authentication_sources
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_authentication_sources: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourcesAuthenticationSource**](ResourcesAuthenticationSource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_privilege**
> Links get_privilege(id)

Privilege

Returns the details for a privilege.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = "id_example" # String | The identifier of the privilege.


begin
  #Privilege
  result = api_instance.get_privilege(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_privilege: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the privilege. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_privileges**
> Privileges get_privileges

Privileges

Returns all privileges that may be granted to a role.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

begin
  #Privileges
  result = api_instance.get_privileges
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_privileges: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Privileges**](Privileges.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_role**
> Role get_role(id)

Role

Retrieves the details of a role.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = "id_example" # String | The identifier of the role.


begin
  #Role
  result = api_instance.get_role(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the role. | 

### Return type

[**Role**](Role.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_role_users**
> ReferencesWithUserIDLink get_role_users(id)

Users With Role

Returns hypermedia links for the the users currently assigned a role.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = "id_example" # String | The identifier of the role.


begin
  #Users With Role
  result = api_instance.get_role_users(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_role_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the role. | 

### Return type

[**ReferencesWithUserIDLink**](ReferencesWithUserIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_roles**
> ResourcesRole get_roles

Roles

Returns all roles for which users may be assigned.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

begin
  #Roles
  result = api_instance.get_roles
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_roles: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourcesRole**](ResourcesRole.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_two_factor_authentication_key**
> TokenResource get_two_factor_authentication_key(id)

Two-Factor Authentication

Retrieves the current authentication token seed (key) for the user, if configured.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.


begin
  #Two-Factor Authentication
  result = api_instance.get_two_factor_authentication_key(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_two_factor_authentication_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 

### Return type

[**TokenResource**](TokenResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_user**
> User get_user(id)

User

Returns the details for a user.<span class=\"authorization\">Global Administrator, Current User</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.


begin
  #User
  result = api_instance.get_user(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_user_asset_groups**
> ReferencesWithAssetGroupIDLink get_user_asset_groups(id)

Asset Groups Access

Returns the asset groups to which the user has access.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.


begin
  #Asset Groups Access
  result = api_instance.get_user_asset_groups(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_user_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 

### Return type

[**ReferencesWithAssetGroupIDLink**](ReferencesWithAssetGroupIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_user_privileges**
> Privileges get_user_privileges(id)

User Privileges

Returns the privileges granted to the user by their role. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.


begin
  #User Privileges
  result = api_instance.get_user_privileges(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_user_privileges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 

### Return type

[**Privileges**](Privileges.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_user_sites**
> ReferencesWithSiteIDLink get_user_sites(id)

Sites Access

Returns the sites to which the user has access.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.


begin
  #Sites Access
  result = api_instance.get_user_sites(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_user_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 

### Return type

[**ReferencesWithSiteIDLink**](ReferencesWithSiteIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_users**
> PageOfUser get_users(opts)

Users

Returns all defined users. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

opts = { 
  page: 0, # Integer | The index of the page (zero-based) to retrieve.
  size: 10, # Integer | The number of records per page to retrieve.
  sort: ["sort_example"] # Array<String> | The criteria to sort the records by, in the format: `property[,ASC|DESC]`. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
}

begin
  #Users
  result = api_instance.get_users(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The index of the page (zero-based) to retrieve. | [optional] [default to 0]
 **size** | **Integer**| The number of records per page to retrieve. | [optional] [default to 10]
 **sort** | [**Array&lt;String&gt;**](String.md)| The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters. | [optional] 

### Return type

[**PageOfUser**](PageOfUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_users_with_privilege**
> ReferencesWithUserIDLink get_users_with_privilege(id)

Users With Privilege

Returns hypermedia links for all users granted the specified privilege by their role.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = "id_example" # String | The identifier of the privilege.


begin
  #Users With Privilege
  result = api_instance.get_users_with_privilege(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->get_users_with_privilege: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the privilege. | 

### Return type

[**ReferencesWithUserIDLink**](ReferencesWithUserIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **regenerate_two_factor_authentication**
> TokenResource regenerate_two_factor_authentication(id)

Two-Factor Authentication

Regenerates a new authentication token seed (key) and updates it for the user. This key may be then be used in the appropriate 2FA authenticator.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.


begin
  #Two-Factor Authentication
  result = api_instance.regenerate_two_factor_authentication(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->regenerate_two_factor_authentication: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 

### Return type

[**TokenResource**](TokenResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_all_user_asset_groups**
> Links remove_all_user_asset_groups(id)

Asset Groups Access

Revokes access to all asset groups from the user.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.


begin
  #Asset Groups Access
  result = api_instance.remove_all_user_asset_groups(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->remove_all_user_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_all_user_sites**
> Links remove_all_user_sites(id)

Sites Access

Revokes access to all sites from the user.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.


begin
  #Sites Access
  result = api_instance.remove_all_user_sites(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->remove_all_user_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_user_asset_group**
> Links remove_user_asset_group(id, asset_group_id)

Asset Group Access

Grants the user access to the asset group. Individual asset group access cannot be granted to users with the `allAssetGroups` permission. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.

asset_group_id = 56 # Integer | The identifier of the asset group.


begin
  #Asset Group Access
  result = api_instance.remove_user_asset_group(id, asset_group_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->remove_user_asset_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 
 **asset_group_id** | **Integer**| The identifier of the asset group. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **remove_user_site**
> Links remove_user_site(id, site_id)

Site Access

Grants the user access to the site. Individual site access cannot be granted to users with the `allSites` permission. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.

site_id = 56 # Integer | The identifier of the site.


begin
  #Site Access
  result = api_instance.remove_user_site(id, site_id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->remove_user_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 
 **site_id** | **Integer**| The identifier of the site. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **reset_password**
> Links reset_password(id, opts)

Password Reset

Changes the password for the user. Users may only change their own password.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.

opts = { 
  param1: "param1_example" # String | The new password to set.
}

begin
  #Password Reset
  result = api_instance.reset_password(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->reset_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 
 **param1** | **String**| The new password to set. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_two_factor_authentication**
> Links set_two_factor_authentication(id, opts)

Two-Factor Authentication

Sets the authentication token seed (key) for the user. This key may be then be used in the appropriate 2FA authenticator.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.

opts = { 
  param1: "param1_example" # String | The authentication token seed (key) to use for the user.
}

begin
  #Two-Factor Authentication
  result = api_instance.set_two_factor_authentication(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->set_two_factor_authentication: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 
 **param1** | **String**| The authentication token seed (key) to use for the user. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_user_asset_groups**
> Links set_user_asset_groups(id, opts)

Asset Groups Access

Updates the asset groups to which the user has access. Individual asset group access cannot be granted to users with the `allAssetGroups` permission. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.

opts = { 
  param1: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | The identifiers of the asset groups to grant the user access to. Ignored if user has access to `allAssetGroups`.
}

begin
  #Asset Groups Access
  result = api_instance.set_user_asset_groups(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->set_user_asset_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 
 **param1** | **Array&lt;Integer&gt;**| The identifiers of the asset groups to grant the user access to. Ignored if user has access to &#x60;allAssetGroups&#x60;. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **set_user_sites**
> Links set_user_sites(id, opts)

Sites Access

Updates the sites to which the user has access. Individual site access cannot be granted to users with the `allSites` permission. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.

opts = { 
  param1: [Rapid7VmConsole::Array<Integer>.new] # Array<Integer> | The identifiers of the sites to grant the user access to. Ignored if the user has access to `allSites`.
}

begin
  #Sites Access
  result = api_instance.set_user_sites(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->set_user_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 
 **param1** | **Array&lt;Integer&gt;**| The identifiers of the sites to grant the user access to. Ignored if the user has access to &#x60;allSites&#x60;. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **unlock_user**
> Links unlock_user(id)

Unlock Account

Unlocks a locked user account that has too many failed authentication attempts. Disabled accounts may not be unlocked.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.


begin
  #Unlock Account
  result = api_instance.unlock_user(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->unlock_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_role**
> Links update_role(id, opts)

Role

Updates the details of a role.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = "id_example" # String | The identifier of the role.

opts = { 
  param0: Rapid7VmConsole::Role.new # Role | The details of the role.
}

begin
  #Role
  result = api_instance.update_role(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->update_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the role. | 
 **param0** | [**Role**](Role.md)| The details of the role. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_user**
> Links update_user(id, opts)

User

Updates the details of a user. <span class=\"authorization\">Global Administrator</span>

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::UserApi.new

id = 56 # Integer | The identifier of the user.

opts = { 
  param1: Rapid7VmConsole::User.new # User | The details of the user.
}

begin
  #User
  result = api_instance.update_user(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling UserApi->update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the user. | 
 **param1** | [**User**](User.md)| The details of the user. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



