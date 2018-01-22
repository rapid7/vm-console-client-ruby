# Rapid7VmConsole::AssetGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assets** | **Integer** | The number of assets that belong to the asset group. | [optional] 
**description** | **String** | The description of the asset group. | [optional] 
**id** | **Integer** | The identifier of the asset group. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**name** | **String** | The name of the asset group. | 
**risk_score** | **Float** | The total risk score of all assets that belong to the asset group. | [optional] 
**search_criteria** | [**SearchCriteria**](SearchCriteria.md) | Search criteria used to determine dynamic membership, if &#x60;type&#x60; is &#x60;\&quot;dynamic\&quot;&#x60;.  | [optional] 
**type** | **String** | The type of the asset group. | 
**vulnerabilities** | [**Vulnerabilities**](Vulnerabilities.md) | Summary information for distinct vulnerabilities found on the assets. | [optional] 


