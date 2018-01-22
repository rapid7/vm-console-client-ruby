# Rapid7VmConsole::DiscoveryConnection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_key_id** | **String** | The AWS credential access key identifier (only used for the AWS connection). | [optional] 
**address** | **String** | ${discovery.connection.address} | [optional] 
**arn** | **String** | The AWS credential ARN (only used for the AWS connection). | [optional] 
**aws_session_name** | **String** | The AWS credential session name (only used for the AWS connection). | [optional] 
**connection_type** | **String** | The type of the discovery connection. | [optional] 
**event_source** | **String** | The event source type to use. | [optional] 
**exchange_server_hostname** | **String** | The hostname of the exchange server to connect to. | [optional] 
**exchange_user** | **String** | The username used to connect to the exchange server. | [optional] 
**folder_path** | **String** | The folder path to pull logs from. | [optional] 
**id** | **Integer** | The identifier of the discovery connection. | [optional] 
**ldap_server** | **String** | The LDAP server to connect to. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**name** | **String** | The discovery connection name. | [optional] 
**port** | **Integer** | The address used to connect to the discovery connection source. | [optional] 
**protocol** | **String** | The protocol used to connect to the discovery connection source. | [optional] 
**region** | **String** | The AWS region (only used for the AWS connection). | [optional] 
**scan_engine_is_inside_aws** | **BOOLEAN** | Flag denoting whether the scan engine is in AWS, this is used for AWS discovery connections for scanning purposes (only used for the AWS connection). | [optional] 
**secret_access_key** | **String** | The AWS credential secret access key (only used for the AWS connection). | [optional] 
**status** | **String** | The status of the discovery connection. | [optional] 
**username** | **String** | The username used to authenticate to the discovery connection source. | [optional] 
**win_rm_server** | **String** | The WinRM server to connect to.  | [optional] 


