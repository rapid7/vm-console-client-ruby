# Rapid7VmConsole::ExceptionScope

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The identifier of the vulnerability to which the exception applies. | [optional] 
**key** | **String** | If the scope type is &#x60;\&quot;Instance\&quot;&#x60;, an optional key to discriminate the instance the exception applies to. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] 
**port** | **Integer** | If the scope type is &#x60;\&quot;Instance\&quot;&#x60; and the vulnerability is detected on a service, the port on which the exception applies. | [optional] 
**type** | **String** | The type of the exception scope. One of: &#x60;\&quot;Global\&quot;&#x60;, &#x60;\&quot;Site\&quot;&#x60;, &#x60;\&quot;Asset\&quot;&#x60;, &#x60;\&quot;Asset Group\&quot;&#x60;, &#x60;\&quot;Instance\&quot;&#x60; | [optional] 
**vulnerability** | **String** | The identifier of the vulnerability to which the exception applies. | [optional] 


