# Rapid7VmConsole::RiskTrendResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all_assets** | [**RiskTrendAllAssetsResource**](RiskTrendAllAssetsResource.md) | Trend settings for a trend across all assets in the scope of the report. | [optional] 
**asset_group_membership** | **String** | Whether all asset groups in the history of deployment or those as of the report generation time are to be included. | [optional] 
**asset_groups** | **String** | Whether to include a trend for the 5 highest-risk asset groups in the scope of the report (either the average or total risk). Only allowed if asset groups are specified in the report scope. | [optional] 
**assets** | **BOOLEAN** | Whether to include a trend for the 5 highest-risk assets in the scope of the report. | [optional] 
**from** | **String** | The start date of the risk trend, which can either be a duration or a specific date and time. | [optional] 
**sites** | **String** | Whether to include a trend for the 5 highest-risk sites in the scope of the report (either the average or total risk). Only allowed if sites are specified in the report scope. | [optional] 
**tag_membership** | **String** | Whether all assets tagged in the history of deployment or those tagged as of the report generation time are to be included. | [optional] 
**tags** | **String** | Whether to include a trend for the 5 highest-risk tags for assets in the scope of the report (either the average or total risk). Only allowed if tags are specified in the report scope. | [optional] 
**to** | **String** | The end date of the risk trend (empty if &#x60;from&#x60; is a duration). | [optional] 


