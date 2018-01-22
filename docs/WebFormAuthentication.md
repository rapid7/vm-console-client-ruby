# Rapid7VmConsole::WebFormAuthentication

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_url** | **String** | The base URL is the main address from which all paths in the target Web site begin. Includes the protocol. Example: http://acme.com. | [optional] 
**enabled** | **BOOLEAN** | Flag indicating whether the HTML form web authentication is enabled for the site&#39;s scans. | [optional] 
**id** | **Integer** | The identifier of the HTML form web authentication. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**login_regular_expression** | **String** | The regular expression matches the message that the Web server returns if the login attempt fails. | [optional] 
**login_url** | **String** | The login page URL contains form for logging on. Include the base URL. Example: http://acme.com/login. | [optional] 
**name** | **String** | The HTML form web authentication name. | [optional] 
**service** | **String** | Value indicating whether this web authentication  configuration is for HTML form authentication or HTTP header authentication. | [optional] 


