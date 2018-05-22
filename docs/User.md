# Rapid7VmConsole::User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication** | [**AuthenticationSource**](AuthenticationSource.md) | The authentication source used to authenticate the user. | [optional] 
**email** | **String** | The email address of the user. | [optional] 
**enabled** | **BOOLEAN** | Whether the user account is enabled. | [optional] 
**id** | **Integer** | The identifier of the user. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**locale** | [**LocalePreferences**](LocalePreferences.md) | The locale and language preferences for the user. | [optional] 
**locked** | **BOOLEAN** | Whether the user account is locked (exceeded maximum password retry attempts). | [optional] 
**login** | **String** | The login name of the user. | 
**name** | **String** | The full name of the user. | 
**role** | [**UserRole**](UserRole.md) | The privileges and role the user is assigned. | [optional] 


