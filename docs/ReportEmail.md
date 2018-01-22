# Rapid7VmConsole::ReportEmail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access** | **String** | The format to distribute the report in when sending to users who have explicit access to the report. | [optional] 
**additional** | **String** | The format to distribute the report to additional recipients. | [optional] 
**additional_recipients** | **Array&lt;String&gt;** | The email address of additional recipients to distribute the report to. | [optional] 
**asset_access** | **BOOLEAN** | ${report.config.email.additional.asset.access.description} | [optional] 
**owner** | **String** | The format to distribute the report to the owner. | [optional] 
**smtp** | [**ReportEmailSmtp**](ReportEmailSmtp.md) | SMTP delivery settings. | [optional] 


