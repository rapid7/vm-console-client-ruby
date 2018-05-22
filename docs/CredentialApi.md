# Rapid7VmConsole::CredentialApi

All URIs are relative to *https://localhost:3780*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_shared_credential**](CredentialApi.md#create_shared_credential) | **POST** /api/3/shared_credentials | Shared Credentials
[**delete_all_shared_credentials**](CredentialApi.md#delete_all_shared_credentials) | **DELETE** /api/3/shared_credentials | Shared Credentials
[**delete_shared_credential**](CredentialApi.md#delete_shared_credential) | **DELETE** /api/3/shared_credentials/{id} | Shared Credential
[**get_shared_credential**](CredentialApi.md#get_shared_credential) | **GET** /api/3/shared_credentials/{id} | Shared Credential
[**get_shared_credentials**](CredentialApi.md#get_shared_credentials) | **GET** /api/3/shared_credentials | Shared Credentials
[**update_shared_credential**](CredentialApi.md#update_shared_credential) | **PUT** /api/3/shared_credentials/{id} | Shared Credential


# **create_shared_credential**
> CreatedReferenceCredentialIDLink create_shared_credential(opts)

Shared Credentials

Creates a new shared credential.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::CredentialApi.new

opts = { 
  credential: Rapid7VmConsole::SharedCredential.new # SharedCredential | The specification of a shared credential.
}

begin
  #Shared Credentials
  result = api_instance.create_shared_credential(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling CredentialApi->create_shared_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credential** | [**SharedCredential**](SharedCredential.md)| The specification of a shared credential. | [optional] 

### Return type

[**CreatedReferenceCredentialIDLink**](CreatedReferenceCredentialIDLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_all_shared_credentials**
> Links delete_all_shared_credentials

Shared Credentials

Deletes all shared credentials.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::CredentialApi.new

begin
  #Shared Credentials
  result = api_instance.delete_all_shared_credentials
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling CredentialApi->delete_all_shared_credentials: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **delete_shared_credential**
> Links delete_shared_credential(id)

Shared Credential

Deletes the specified shared scan credential.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::CredentialApi.new

id = 56 # Integer | The identifier of the credential.


begin
  #Shared Credential
  result = api_instance.delete_shared_credential(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling CredentialApi->delete_shared_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the credential. | 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_shared_credential**
> SharedCredential get_shared_credential(id)

Shared Credential

Retrieves the specified shared credential.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::CredentialApi.new

id = 56 # Integer | The identifier of the credential.


begin
  #Shared Credential
  result = api_instance.get_shared_credential(id)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling CredentialApi->get_shared_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the credential. | 

### Return type

[**SharedCredential**](SharedCredential.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **get_shared_credentials**
> ResourcesSharedCredential get_shared_credentials

Shared Credentials

Retrieves all defined shared credential resources.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::CredentialApi.new

begin
  #Shared Credentials
  result = api_instance.get_shared_credentials
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling CredentialApi->get_shared_credentials: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourcesSharedCredential**](ResourcesSharedCredential.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



# **update_shared_credential**
> Links update_shared_credential(id, opts)

Shared Credential

Updates the specified shared credential.

### Example
```ruby
# load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::CredentialApi.new

id = 56 # Integer | The identifier of the credential.

opts = { 
  credential: Rapid7VmConsole::SharedCredential.new # SharedCredential | The specification of the shared credential to update.
}

begin
  #Shared Credential
  result = api_instance.update_shared_credential(id, opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling CredentialApi->update_shared_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the credential. | 
 **credential** | [**SharedCredential**](SharedCredential.md)| The specification of the shared credential to update. | [optional] 

### Return type

[**Links**](Links.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



