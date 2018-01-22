# Rapid7VmConsole::PolicyOverride

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expires** | **String** | The date the policy override is set to expire. Date is represented in ISO 8601 format. | [optional] 
**id** | **Integer** | The identifier of the policy override. | [optional] 
**links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] 
**review** | [**PolicyOverrideReviewer**](PolicyOverrideReviewer.md) | Details regarding the review and/or approval of the policy override. | [optional] 
**scope** | [**PolicyOverrideScope**](PolicyOverrideScope.md) | The scope of the policy override. Indicates which assets&#39; policy compliance results are to be affected by the override. | 
**state** | **String** | The state of the policy override. Can be one of the following values:  | Value            | Description                                                                         | Affects Compliance Results |  | ---------------- | ----------------------------------------------------------------------------------- |:--------------------------:|  | &#x60;\&quot;deleted\&quot;&#x60;      | The policy override has been deleted.                                               |                            |  | &#x60;\&quot;expired\&quot;&#x60;      | The policy override had an expiration date and it has expired.                      |                            |  | &#x60;\&quot;approved\&quot;&#x60;     | The policy override was submitted and approved.                                     | &amp;check;                    |  | &#x60;\&quot;rejected\&quot;&#x60;     | The policy override was rejected by the reviewer.                                   |                            |  | &#x60;\&quot;under-review\&quot;&#x60; | The policy override was submitted but not yet approved or rejected by the reviewer. |                            |   | 
**submit** | [**PolicyOverrideSubmitter**](PolicyOverrideSubmitter.md) | Details regarding the submission of the policy override. | 


