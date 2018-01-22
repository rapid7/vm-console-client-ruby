# Rapid7VmConsole::Info

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | [**CPUInfo**](CPUInfo.md) | Details regarding the host CPU. | [optional] 
**disk** | [**DiskInfo**](DiskInfo.md) | Details regarding host disk usage. | [optional] 
**distinguished_name** | **String** | The distinguished name of the console. | [optional] 
**fqdn** | **String** | The fully-qualified domain name of the local host the service is running on. | [optional] 
**host** | **String** | The name of the local host the service is running on. | [optional] 
**ip** | **String** | The IP address of the local host the service is running on. | [optional] 
**jvm** | [**JVMInfo**](JVMInfo.md) | Details regarding the Java Virtual Machine. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) | Hypermedia links to corresponding or related resources. | [optional] 
**memory** | [**MemoryInfo**](MemoryInfo.md) | Details regarding host memory usage. | [optional] 
**operating_system** | **String** | The operating system of the host the service is running on. | [optional] 
**serial** | **String** | The serial number of the console. | [optional] 
**superuser** | **BOOLEAN** | Whether the service is running a super-user. | [optional] 
**user** | **String** | The user running the service. | [optional] 
**version** | [**VersionInfo**](VersionInfo.md) | Details regarding the version of the installation. | [optional] 


