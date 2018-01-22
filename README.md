# rapid7_vm_console

Rapid7VmConsole - the __UNOFFICIAL__ (but useful) Ruby gem for the Rapid7 InsightVM/Nexpose RESTful API

DISCLAIMER: the resulting Ruby gem and the files found in this repository are meant for community use and are leveraged
by internal Rapid7 team(s). They are NOT officially supported artifacts and are not supported by Rapid7 Support. Best 
effort is used to keep this repository and resulting Ruby gem up to date and resolve reported issues/bugs.

If any issues are experienced, any user can leverage the Swagger file at `https://localhost:3780/api/html/json` of their
Console to create their own library or interact with the API as needed.  By auto-generating this repository and 
artifacts, users can begin interacting with the Rapid7 InsightVM/Nexpose API with Ruby by simply requiring the 
`rapid7_vm_console` gem.

Once pushed to rubygems.org, the gem can be installed with: `gem install rapid7_vm_console`

# Auto-generated README Below
## Overview   
This guide documents the InsightVM Application Programming Interface (API) Version 3. This API supports the Representation State Transfer (REST) design pattern. Unless noted otherwise this API accepts and produces the `application/json` media type. This API uses Hypermedia as the Engine of Application State (HATEOAS) and is hypermedia friendly. All API connections must be made to the security console using HTTPS.  
## Versioning  
Versioning is specified in the URL and the base path of this API is: `https://<host>:<port>/api/3/`.  
### Specification  
An <a target=\"_blank\" href=\"https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md\">OpenAPI v2</a> specification (also  known as Swagger 2) of this API is available. Tools such as <a target=\"_blank\" href=\"https://github.com/swagger-api/swagger-codegen\">swagger-codegen</a> can be used to generate an API client in the language of your choosing using this specification document.  <p class=\"openapi\">Download the specification: <a class=\"openapi-button\" target=\"_blank\" download=\"\" href=\"/api/3/json\"> Download </a></p>  
### Authentication  
Authorization to the API uses HTTP Basic Authorization  (see <a target=\"_blank\" href=\"https://www.ietf.org/rfc/rfc2617.txt\">RFC 2617</a> for more information). Requests must  supply authorization credentials in the `Authorization` header using a Base64 encoded hash of `\"username:password\"`.  <!-- ReDoc-Inject: <security-definitions> -->  
#### 2FA  
This API supports two-factor authentication (2FA) by supplying an authentication token in addition to the Basic Authorization. The token is specified using the `Token` request header. To leverage two-factor authentication, this must be enabled on the console and be configured for the account accessing the API.  
### Resources  
#### Naming  
Resource names represent nouns and identify the entity being manipulated or accessed. All collection resources are  pluralized to indicate to the client they are interacting with a collection of multiple resources of the same type. Singular resource names are used when there exists only one resource available to interact with.  The following naming conventions are used by this API:  | Type                                          | Case                     | | --------------------------------------------- | ------------------------ | | Resource names                                | `lower_snake_case`       | | Header, body, and query parameters parameters | `camelCase`              | | JSON fields and property names                | `camelCase`              |  
##### Collections  
A collection resource is a parent resource for instance resources, but can itself be retrieved and operated on  independently. Collection resources use a pluralized resource name. The resource path for collection resources follow  the convention:  ``` /api/3/{resource_name} ```  
##### Instances  
An instance resource is a \"leaf\" level resource that may be retrieved, optionally nested within a collection resource. Instance resources are usually retrievable with opaque identifiers. The resource path for instance resources follows  the convention:  ``` /api/3/{resource_name}/{instance_id}... ```  ## Verbs  The following HTTP operations are supported throughout this API. The general usage of the operation and both its failure and success status codes are outlined below.    | Verb      | Usage                                                                                 | Success     | Failure                                                        | | --------- | ------------------------------------------------------------------------------------- | ----------- | -------------------------------------------------------------- | | `GET`     | Used to retrieve a resource by identifier, or a collection of resources by type.      | `200`       | `400`, `401`, `402`, `404`, `405`, `408`, `410`, `415`, `500`  | | `POST`    | Creates a resource with an application-specified identifier.                          | `201`       | `400`, `401`, `404`, `405`, `408`, `413`, `415`, `500`         | | `POST`    | Performs a request to queue an asynchronous job.                                      | `202`       | `400`, `401`, `405`, `408`, `410`, `413`, `415`, `500`         | | `PUT`     | Creates a resource with a client-specified identifier.                                | `200`       | `400`, `401`, `403`, `405`, `408`, `410`, `413`, `415`, `500`  | | `PUT`     | Performs a full update of a resource with a specified identifier.                     | `201`       | `400`, `401`, `403`, `405`, `408`, `410`, `413`, `415`, `500`  | | `DELETE`  | Deletes a resource by identifier or an entire collection of resources.                | `204`       | `400`, `401`, `405`, `408`, `410`, `413`, `415`, `500`         | | `OPTIONS` | Requests what operations are available on a resource.                                 | `200`       | `401`, `404`, `405`, `408`, `500`                              |  
#### Common Operations  
##### OPTIONS  
All resources respond to the `OPTIONS` request, which allows discoverability of available operations that are supported.  The `OPTIONS` response returns the acceptable HTTP operations on that resource within the `Allow` header. The response is always a `200 OK` status.  
#### Collection Resources  
Collection resources can support the `GET`, `POST`, `PUT`, and `DELETE` operations.  
##### GET  
The `GET` operation invoked on a collection resource indicates a request to retrieve all, or some, of the entities  contained within the collection. This also includes the optional capability to filter or search resources during the request. The response from a collection listing is a paginated document. See  [hypermedia links](#section/Overview/Paging) for more information.  
##### POST  
The `POST` is a non-idempotent operation that allows for the creation of a new resource when the resource identifier  is not provided by the system during the creation operation (i.e. the Security Console generates the identifier). The content of the `POST` request is sent in the request body. The response to a successful `POST` request should be a  `201 CREATED` with a valid `Location` header field set to the URI that can be used to access to the newly  created resource.   The `POST` to a collection resource can also be used to interact with asynchronous resources. In this situation,  instead of a `201 CREATED` response, the `202 ACCEPTED` response indicates that processing of the request is not fully  complete but has been accepted for future processing. This request will respond similarly with a `Location` header with  link to the job-oriented asynchronous resource that was created and/or queued.  
##### PUT  
The `PUT` is an idempotent operation that either performs a create with user-supplied identity, or a full replace or update of a resource by a known identifier. The response to a `PUT` operation to create an entity is a `201 Created` with a valid `Location` header field set to the URI that can be used to access to the newly created resource.  `PUT` on a collection resource replaces all values in the collection. The typical response to a `PUT` operation that  updates an entity is hypermedia links, which may link to related resources caused by the side-effects of the changes  performed.  
##### DELETE  
The `DELETE` is an idempotent operation that physically deletes a resource, or removes an association between resources. The typical response to a `DELETE` operation is hypermedia links, which may link to related resources caused by the  side-effects of the changes performed.  
#### Instance Resources  
Instance resources can support the `GET`, `PUT`, `POST`, `PATCH` and `DELETE` operations.  
##### GET  
Retrieves the details of a specific resource by its identifier. The details retrieved can be controlled through  property selection and property views. The content of the resource is returned within the body of the response in the  acceptable media type.   
##### PUT  
Allows for and idempotent \"full update\" (complete replacement) on a specific resource. If the resource does not exist,  it will be created; if it does exist, it is completely overwritten. Any omitted properties in the request are assumed to  be undefined/null. For \"partial updates\" use `POST` or `PATCH` instead.   The content of the `PUT` request is sent in the request body. The identifier of the resource is specified within the URL  (not the request body). The response to a successful `PUT` request is a `201 CREATED` to represent the created status,  with a valid `Location` header field set to the URI that can be used to access to the newly created (or fully replaced)  resource.   
##### POST  
Performs a non-idempotent creation of a new resource. The `POST` of an instance resource most commonly occurs with the  use of nested resources (e.g. searching on a parent collection resource). The response to a `POST` of an instance  resource is typically a `200 OK` if the resource is non-persistent, and a `201 CREATED` if there is a resource  created/persisted as a result of the operation. This varies by endpoint.  
##### PATCH  
The `PATCH` operation is used to perform a partial update of a resource. `PATCH` is a non-idempotent operation that enforces an atomic mutation of a resource. Only the properties specified in the request are to be overwritten on the  resource it is applied to. If a property is missing, it is assumed to not have changed.  
##### DELETE  
Permanently removes the individual resource from the system. If the resource is an association between resources, only  the association is removed, not the resources themselves. A successful deletion of the resource should return  `204 NO CONTENT` with no response body. This operation is not fully idempotent, as follow-up requests to delete a  non-existent resource should return a `404 NOT FOUND`.  
### Requests  
Unless otherwise indicated, the default request body media type is `application/json`.  
#### Headers  
Commonly used request headers include:  | Header             | Example                                       | Purpose                                                                                        |                    | ------------------ | --------------------------------------------- | ---------------------------------------------------------------------------------------------- | | `Accept`           | `application/json`                            | Defines what acceptable content types are allowed by the client. For all types, use `*/*`.     | | `Accept-Encoding`  | `deflate, gzip`                               | Allows for the encoding to be specified (such as gzip).                                        | | `Accept-Language`  | `en-US`                                       | Indicates to the server the client's locale (defaults `en-US`).                                | | `Authorization `   | `Basic Base64(\"username:password\")`           | Basic authentication                                                                           | | `Token `           | `123456`                                      | Two-factor authentication token (if enabled)                                                   |  
#### Dates & Times  
Dates and/or times are specified as strings in the ISO 8601 format(s). The following formats are supported as input:  | Value                       | Format                                                 | Notes                                                 | | --------------------------- | ------------------------------------------------------ | ----------------------------------------------------- | | Date                        | YYYY-MM-DD                                             | Defaults to 12 am UTC (if used for a date & time      | | Date & time only            | YYYY-MM-DD'T'hh:mm:ss[.nnn]                            | Defaults to UTC                                       | | Date & time in UTC          | YYYY-MM-DD'T'hh:mm:ss[.nnn]Z                           |                                                       | | Date & time w/ offset       | YYYY-MM-DD'T'hh:mm:ss[.nnn][+&#124;-]hh:mm             |                                                       | | Date & time w/ zone-offset  | YYYY-MM-DD'T'hh:mm:ss[.nnn][+&#124;-]hh:mm[<zone-id>]  |                                                       |   
#### Timezones  
Timezones are specified in the regional zone format, such as `\"America/Los_Angeles\"`, `\"Asia/Tokyo\"`, or `\"GMT\"`.   
#### Paging  
Pagination is supported on certain collection resources using a combination of two query parameters, `page` and `size`.  As these are control parameters, they are prefixed with the underscore character. The page parameter dictates the  zero-based index of the page to retrieve, and the `size` indicates the size of the page.   For example, `/resources?page=2&size=10` will return page 3, with 10 records per page, giving results 21-30.  The maximum page size for a request is 500.  
#### Sorting  
Sorting is supported on paginated resources with the `sort` query parameter(s). The sort query parameter(s) supports  identifying a single or multi-property sort with a single or multi-direction output. The format of the parameter is:  ``` sort=property[,ASC|DESC]... ```  Therefore, the request `/resources?sort=name,title,DESC` would return the results sorted by the name and title  descending, in that order. The sort directions are either ascending `ASC` or descending `DESC`. With single-order  sorting, all properties are sorted in the same direction. To sort the results with varying orders by property,  multiple sort parameters are passed.    For example, the request `/resources?sort=name,ASC&sort=title,DESC` would sort by name ascending and title  descending, in that order.  
### Responses  
The following response statuses may be returned by this API.     | Status | Meaning                  | Usage                                                                                                                                                                    | | ------ | ------------------------ |------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | | `200`  | OK                       | The operation performed without error according to the specification of the request, and no more specific 2xx code is suitable.                                          | | `201`  | Created                  | A create request has been fulfilled and a resource has been created. The resource is available as the URI specified in the response, including the `Location` header.    | | `202`  | Accepted                 | An asynchronous task has been accepted, but not guaranteed, to be processed in the future.                                                                               | | `400`  | Bad Request              | The request was invalid or cannot be otherwise served. The request is not likely to succeed in the future without modifications.                                         | | `401`  | Unauthorized             | The user is unauthorized to perform the operation requested, or does not maintain permissions to perform the operation on the resource specified.                        | | `403`  | Forbidden                | The resource exists to which the user has access, but the operating requested is not permitted.                                                                          | | `404`  | Not Found                | The resource specified could not be located, does not exist, or an unauthenticated client does not have permissions to a resource.                                       | | `405`  | Method Not Allowed       | The operations may not be performed on the specific resource. Allowed operations are returned and may be performed on the resource.                                      | | `408`  | Request Timeout          | The client has failed to complete a request in a timely manner and the request has been discarded.                                                                       | | `413`  | Request Entity Too Large | The request being provided is too large for the server to accept processing.                                                                                             | | `415`  | Unsupported Media Type   | The media type is not supported for the requested resource.                                                                                                              | | `500`  | Internal Server Error    | An internal and unexpected error has occurred on the server at no fault of the client.                                                                                   |  
#### Security  
The response statuses 401, 403 and 404 need special consideration for security purposes. As necessary,  error statuses and messages may be obscured to strengthen security and prevent information exposure. The following is a  guideline for privileged resource response statuses:  | Use Case                                                           | Access             | Resource           | Permission   | Status       | | ------------------------------------------------------------------ | ------------------ |------------------- | ------------ | ------------ | | Unauthenticated access to an unauthenticated resource.             | Unauthenticated    | Unauthenticated    | Yes          | `20x`        | | Unauthenticated access to an authenticated resource.               | Unauthenticated    | Authenticated      | No           | `401`        | | Unauthenticated access to an authenticated resource.               | Unauthenticated    | Non-existent       | No           | `401`        | | Authenticated access to a unauthenticated resource.                | Authenticated      | Unauthenticated    | Yes          | `20x`        | | Authenticated access to an authenticated, unprivileged resource.   | Authenticated      | Authenticated      | No           | `404`        | | Authenticated access to an authenticated, privileged resource.     | Authenticated      | Authenticated      | Yes          | `20x`        | | Authenticated access to an authenticated, non-existent resource    | Authenticated      | Non-existent       | Yes          | `404`        |  
#### Headers  
Commonly used response headers include:  | Header                     |  Example                          | Purpose                                                         | | -------------------------- | --------------------------------- | --------------------------------------------------------------- | | `Allow`                    | `OPTIONS, GET`                    | Defines the allowable HTTP operations on a resource.            | | `Cache-Control`            | `no-store, must-revalidate`       | Disables caching of resources (as they are all dynamic).        | | `Content-Encoding`         | `gzip`                            | The encoding of the response body (if any).                     | | `Location`                 |                                   | Refers to the URI of the resource created by a request.         | | `Transfer-Encoding`        | `chunked`                         | Specified the encoding used to transform response.              | | `Retry-After`              | 5000                              | Indicates the time to wait before retrying a request.           | | `X-Content-Type-Options`   | `nosniff`                         | Disables MIME type sniffing.                                    | | `X-XSS-Protection`         | `1; mode=block`                   | Enables XSS filter protection.                                  | | `X-Frame-Options`          | `SAMEORIGIN`                      | Prevents rendering in a frame from a different origin.          | | `X-UA-Compatible`          | `IE=edge,chrome=1`                | Specifies the browser mode to render in.                        |  
#### Format  
When `application/json` is returned in the response body it is always pretty-printed (indented, human readable output).  Additionally, gzip compression/encoding is supported on all responses.   
##### Dates & Times  
Dates or times are returned as strings in the ISO 8601 'extended' format. When a date and time is returned (instant) the value is converted to UTC.  For example:  | Value           | Format                         | Example               | | --------------- | ------------------------------ | --------------------- | | Date            | `YYYY-MM-DD`                   | 2017-12-03            | | Date & Time     | `YYYY-MM-DD'T'hh:mm:ss[.nnn]Z` | 2017-12-03T10:15:30Z  |  
##### Content  
In some resources a Content data type is used. This allows for multiple formats of representation to be returned within resource, specifically `\"html\"` and `\"text\"`. The `\"text\"` property returns a flattened representation suitable for output in textual displays. The `\"html\"` property returns an HTML fragment suitable for display within an HTML  element. Note, the HTML returned is not a valid stand-alone HTML document.  
##### Paging  
The response to a paginated request follows the format:  ```json {    resources\": [        ...     ],    \"page\": {        \"number\" : ...,       \"size\" : ...,       \"totalResources\" : ...,       \"totalPages\" : ...    },    \"links\": [        \"first\" : {          \"href\" : \"...\"        },        \"prev\" : {          \"href\" : \"...\"        },        \"self\" : {          \"href\" : \"...\"        },        \"next\" : {          \"href\" : \"...\"        },        \"last\" : {          \"href\" : \"...\"        }     ] } ```  The `resources` property is an array of the resources being retrieved from the endpoint, each which should contain at  minimum a \"self\" relation hypermedia link. The `page` property outlines the details of the current page and total possible pages. The object for the page includes the following properties:  - number - The page number (zero-based) of the page returned. - size - The size of the pages, which is less than or equal to the maximum page size. - totalResources - The total amount of resources available across all pages. - totalPages - The total amount of pages.  The last property of the paged response is the `links` array, which contains all available hypermedia links. For  paginated responses, the \"self\", \"next\", \"previous\", \"first\", and \"last\" links are returned. The \"self\" link must always be returned and should contain a link to allow the client to replicate the original request against the  collection resource in an identical manner to that in which it was invoked.   The \"next\" and \"previous\" links are present if either or both there exists a previous or next page, respectively.  The \"next\" and \"previous\" links have hrefs that allow \"natural movement\" to the next page, that is all parameters  required to move the next page are provided in the link. The \"first\" and \"last\" links provide references to the first and last pages respectively.   Requests outside the boundaries of the pageable will result in a `404 NOT FOUND`. Paginated requests do not provide a  \"stateful cursor\" to the client, nor does it need to provide a read consistent view. Records in adjacent pages may  change while pagination is being traversed, and the total number of pages and resources may change between requests  within the same filtered/queries resource collection.  
##### Property Views  
The \"depth\" of the response of a resource can be configured using a \"view\". All endpoints supports two views that can  tune the extent of the information returned in the resource. The supported views are `summary` and `details` (the default).  View are specified using a query parameter, in this format:  ```bash /<resource>?view={viewName} ```  
##### Error  
Any error responses can provide a response body with a message to the client indicating more information (if applicable)  to aid debugging of the error. All 40x and 50x responses will return an error response in the body. The format of the  response is as follows:  ```json {    \"status\": <statusCode>,    \"message\": <message>,    \"links\" : [ {       \"rel\" : \"...\",       \"href\" : \"...\"     } ] }   ```   The `status` property is the same as the HTTP status returned in the response, to ease client parsing. The message  property is a localized message in the request client's locale (if applicable) that articulates the nature of the  error. The last property is the `links` property. This may contain additional  [hypermedia links](#section/Overview/Authentication) to troubleshoot.  
##### Search Criteria 
<a section=\"section/Responses/SearchCriteria\"></a>  Multiple resources make use of search criteria to match assets. Search criteria is an array of search filters. Each  search filter has a generic format of:  ```json {     \"field\": \"<field-name>\",     \"operator\": \"<operator>\",     [\"value\": \"<value>\",]    [\"lower\": \"<value>\",]    [\"upper\": \"<value>\"] }     ```  Every filter defines two required properties `field` and `operator`. The field is the name of an asset property that is being filtered on. The operator is a type and property-specific operating performed on the filtered property. The valid values for fields and operators are outlined in the table below.  Every filter also defines one or more values that are supplied to the operator. The valid values vary by operator and are outlined below.  
###### Fields  
The following table outlines the search criteria fields and the available operators:  | Field                             | Operators                                                                                                                      | | --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ | | `alternate-address-type`          | `in`                                                                                                                           | | `container-image`                 | `is` ` is not` ` starts with` ` ends with` ` contains` ` does not contain` ` is like` ` not like`                              | | `container-status`                | `is` ` is not`                                                                                                                 | | `containers`                      | `are`                                                                                                                          | | `criticality-tag`                 | `is` ` is not` ` is greater than` ` is less than` ` is applied` ` is not applied`                                              | | `custom-tag`                      | `is` ` is not` ` starts with` ` ends with` ` contains` ` does not contain` ` is applied` ` is not applied`                     | | `cve`                             | `is` ` is not` ` contains` ` does not contain`                                                                                 | | `cvss-access-complexity`          | `is` ` is not`                                                                                                                 | | `cvss-authentication-required`    | `is` ` is not`                                                                                                                 | | `cvss-access-vector`              | `is` ` is not`                                                                                                                 | | `cvss-availability-impact`        | `is` ` is not`                                                                                                                 | | `cvss-confidentiality-impact`     | `is` ` is not`                                                                                                                 | | `cvss-integrity-impact`           | `is` ` is not`                                                                                                                 | | `cvss-v3-confidentiality-impact`  | `is` ` is not`                                                                                                                 | | `cvss-v3-integrity-impact`        | `is` ` is not`                                                                                                                 | | `cvss-v3-availability-impact`     | `is` ` is not`                                                                                                                 | | `cvss-v3-attack-vector`           | `is` ` is not`                                                                                                                 | | `cvss-v3-attack-complexity`       | `is` ` is not`                                                                                                                 | | `cvss-v3-user-interaction`        | `is` ` is not`                                                                                                                 | | `cvss-v3-privileges-required`     | `is` ` is not`                                                                                                                 | | `host-name`                       | `is` ` is not` ` starts with` ` ends with` ` contains` ` does not contain` ` is empty` ` is not empty` ` is like` ` not like`  | | `host-type`                       | `in` ` not in`                                                                                                                 | | `ip-address`                      | `is` ` is not` ` in range` ` not in range` ` is like` ` not like`                                                              | | `ip-address-type`                 | `in` ` not in`                                                                                                                 | | `last-scan-date`                  | `is-on-or-before` ` is on or after` ` is between` ` is earlier than` ` is within the last`                                     | | `location-tag`                    | `is` ` is not` ` starts with` ` ends with` ` contains` ` does not contain` ` is applied` ` is not applied`                     | | `mobile-device-last-sync-time`    | `is-within-the-last` ` is earlier than`                                                                                        | | `open-ports`                      | `is` ` is not` ` in range`                                                                                                     | | `operating-system`                | `contains` ` does not contain` ` is empty` ` is not empty`                                                                     | | `owner-tag`                       | `is` ` is not` ` starts with` ` ends with` ` contains` ` does not contain` ` is applied` ` is not applied`                     | | `pci-compliance`                  | `is`                                                                                                                           | | `risk-score`                      | `is` ` is not` ` in range` ` greater than` ` less than`                                                                        | | `service-name`                    | `contains` ` does not contain`                                                                                                 | | `site-id`                         | `in` ` not in`                                                                                                                 | | `software`                        | `contains` ` does not contain`                                                                                                 | | `vAsset-cluster`                  | `is` ` is not` ` contains` ` does not contain` ` starts with`                                                                  | | `vAsset-datacenter`               | `is` ` is not`                                                                                                                 | | `vAsset-host-name`                | `is` ` is not` ` contains` ` does not contain` ` starts with`                                                                  | | `vAsset-power-state`              | `in` ` not in`                                                                                                                 | | `vAsset-resource-pool-path`       | `contains` ` does not contain`                                                                                                 | | `vulnerability-assessed`          | `is-on-or-before` ` is on or after` ` is between` ` is earlier than` ` is within the last`                                     | | `vulnerability-category`          | `is` ` is not` ` starts with` ` ends with` ` contains` ` does not contain`                                                     | | `vulnerability-cvss-v3-score`     | `is` ` is not`                                                                                                                 | | `vulnerability-cvss-score`        | `is` ` is not` ` in range` ` is greater than` ` is less than`                                                                  | | `vulnerability-exposures`         | `includes` ` does not include`                                                                                                 | | `vulnerability-title`             | `contains` ` does not contain` ` is` ` is not` ` starts with` ` ends with`                                                     | | `vulnerability-validated-status`  | `are`                                                                                                                          |  
###### Enumerated Properties  
The following fields have enumerated values:  | Field                                     | Acceptable Values                                                                                             | | ----------------------------------------- | ------------------------------------------------------------------------------------------------------------- | | `alternate-address-type`                  | 0=IPv4, 1=IPv6                                                                                                | | `containers`                              | 0=present, 1=not present                                                                                      | | `container-status`                        | `created` `running` `paused` `restarting` `exited` `dead` `unknown`                                           | | `cvss-access-complexity`                  | <ul><li><code>L</code> = Low</li><li><code>M</code> = Medium</li><li><code>H</code> = High</li></ul>          | | `cvss-integrity-impact`                   | <ul><li><code>N</code> = None</li><li><code>P</code> = Partial</li><li><code>C</code> = Complete</li></ul>    | | `cvss-confidentiality-impact`             | <ul><li><code>N</code> = None</li><li><code>P</code> = Partial</li><li><code>C</code> = Complete</li></ul>    | | `cvss-availability-impact`                | <ul><li><code>N</code> = None</li><li><code>P</code> = Partial</li><li><code>C</code> = Complete</li></ul>    | | `cvss-access-vector`                      | <ul><li><code>L</code> = Local</li><li><code>A</code> = Adjacent</li><li><code>N</code> = Network</li></ul>   | | `cvss-authentication-required`            | <ul><li><code>N</code> = None</li><li><code>S</code> = Single</li><li><code>M</code> = Multiple</li></ul>     | | `cvss-v3-confidentiality-impact`     | <ul><li><code>L</code> = Local</li><li><code>L</code> = Low</li><li><code>N</code> = None</li><li><code>H</code> = High</li></ul>          | | `cvss-v3-integrity-impact`            | <ul><li><code>L</code> = Local</li><li><code>L</code> = Low</li><li><code>N</code> = None</li><li><code>H</code> = High</li></ul>          | | `cvss-v3-availability-impact`             | <ul><li><code>N</code> = None</li><li><code>L</code> = Low</li><li><code>H</code> = High</li></ul>    | | `cvss-v3-attack-vector`                | <ul><li><code>N</code> = Network</li><li><code>A</code> = Adjacent</li><li><code>L</code> = Local</li><li><code>P</code> = Physical</li></ul>    | | `cvss-v3-attack-complexity`                      | <ul><li><code>L</code> = Low</li><li><code>H</code> = High</li></ul>   | | `cvss-v3-user-interaction`            | <ul><li><code>N</code> = None</li><li><code>R</code> = Required</li></ul>     | | `cvss-v3-privileges-required`         | <ul><li><code>N</code> = None</li><li><code>L</code> = Low</li><li><code>H</code> = High</li></ul>    | | `host-type`                               | 0=Unknown, 1=Guest, 2=Hypervisor, 3=Physical, 4=Mobile                                                        | | `ip-address-type`                         | 0=IPv4, 1=IPv6                                                                                                | | `pci-compliance`                          | 0=fail, 1=pass                                                                                                | | `vulnerability-validated-status`          | 0=present, 1=not present                                                                                      |  
###### Operator Properties 
<a section=\"section/Responses/SearchCriteria/OperatorProperties\"></a>  The following table outlines which properties are required for each operator and the appropriate data type(s):  | Operator              | `value`               | `lower`               | `upper`               | | ----------------------|-----------------------|-----------------------|-----------------------| | `are`                 | `string`              |                       |                       | | `contains`            | `string`              |                       |                       | | `does-not-contain`    | `string`              |                       |                       | | `ends with`           | `string`              |                       |                       | | `in`                  | `Array[ string ]`     |                       |                       | | `in-range`            |                       | `numeric`             | `numeric`             | | `includes`            | `Array[ string ]`     |                       |                       | | `is`                  | `string`              |                       |                       | | `is-applied`          |                       |                       |                       | | `is-between`          |                       | `numeric`             | `numeric`             | | `is-earlier-than`     | `numeric`             |                       |                       | | `is-empty`            |                       |                       |                       | | `is-greater-than`     | `numeric`             |                       |                       | | `is-on-or-after`      | `string` (yyyy-MM-dd) |                       |                       | | `is-on-or-before`     | `string` (yyyy-MM-dd) |                       |                       | | `is-not`              | `string`              |                       |                       | | `is-not-applied`      |                       |                       |                       | | `is-not-empty`        |                       |                       |                       | | `is-within-the-last`  | `string`              |                       |                       | | `less-than`           | `string`              |                       |                       | | `like`                | `string`              |                       |                       | | `not-contains`        | `string`              |                       |                       | | `not-in`              | `Array[ string ]`     |                       |                       | | `not-in-range`        |                       | `numeric`             | `numeric`             | | `not-like`            | `string`              |                       |                       | | `starts-with`         | `string`              |                       |                       |  
##### Discovery Connection Search Criteria 
<a section=\"section/Responses/DiscoverySearchCriteria\"></a>  Dynamic sites make use of search criteria to match assets from a discovery connection. Search criteria is an array of search filters.    Each search filter has a generic format of:  ```json {     \"field\": \"<field-name>\",     \"operator\": \"<operator>\",     [\"value\": \"<value>\",]    [\"lower\": \"<value>\",]    [\"upper\": \"<value>\"] }     ```  Every filter defines two required properties `field` and `operator`. The field is the name of an asset property that is being filtered on. The list of supported fields vary depending on the type of discovery connection configured  for the dynamic site (e.g vSphere, ActiveSync, etc.). The operator is a type and property-specific operating  performed on the filtered property. The valid values for fields outlined in the tables below and are grouped by the  type of connection.    Every filter also defines one or more values that are supplied to the operator. See  <a href=\"#section/Responses/SearchCriteria/OperatorProperties\">Search Criteria Operator Properties</a> for more  information on the valid values for each operator.    
###### Fields (ActiveSync)  
This section documents search criteria information for ActiveSync discovery connections. The discovery connections  must be one of the following types: `\"activesync-ldap\"`, `\"activesync-office365\"`, or `\"activesync-powershell\"`.    The following table outlines the search criteria fields and the available operators for ActiveSync connections:  | Field                             | Operators                                                     | | --------------------------------- | ------------------------------------------------------------- | | `last-sync-time`                  | `is-within-the-last` ` is-earlier-than`                       | | `operating-system`                | `contains` ` does-not-contain`                                | | `user`                            | `is` ` is-not` ` contains` ` does-not-contain` ` starts-with` |  
###### Fields (AWS)  
This section documents search criteria information for AWS discovery connections. The discovery connections must be the type `\"aws\"`.    The following table outlines the search criteria fields and the available operators for AWS connections:  | Field                   | Operators                                                     | | ----------------------- | ------------------------------------------------------------- | | `availability-zone`     | `contains` ` does-not-contain`                                | | `guest-os-family`       | `contains` ` does-not-contain`                                | | `instance-id`           | `contains` ` does-not-contain`                                | | `instance-name`         | `is` ` is-not` ` contains` ` does-not-contain` ` starts-with` | | `instance-state`        | `in` ` not-in`                                                | | `instance-type`         | `in` ` not-in`                                                | | `ip-address`            | `in-range` ` not-in-range` ` is` ` is-not`                    | | `region`                | `in` ` not-in`                                                | | `vpc-id`                | `is` ` is-not` ` contains` ` does-not-contain` ` starts-with` |  
###### Fields (DHCP)  
This section documents search criteria information for DHCP discovery connections. The discovery connections must be the type `\"dhcp\"`.    The following table outlines the search criteria fields and the available operators for DHCP connections:  | Field           | Operators                                                     | | --------------- | ------------------------------------------------------------- | | `host-name`     | `is` ` is-not` ` contains` ` does-not-contain` ` starts-with` | | `ip-address`    | `in-range` ` not-in-range` ` is` ` is-not`                    | | `mac-address`   | `is` ` is-not` ` contains` ` does-not-contain` ` starts-with` |  
###### Fields (Sonar)  
This section documents search criteria information for Sonar discovery connections. The discovery connections must be the type `\"sonar\"`.    The following table outlines the search criteria fields and the available operators for Sonar connections:  | Field               | Operators            | | ------------------- | -------------------- | | `search-domain`     | `contains` ` is`     | | `ip-address`        | `in-range` ` is`     | | `sonar-scan-date`   | `is-within-the-last` |  
###### Fields (vSphere)  
This section documents search criteria information for vSphere discovery connections. The discovery connections must be the type `\"vsphere\"`.    The following table outlines the search criteria fields and the available operators for vSphere connections:  | Field                | Operators                                                                                  | | -------------------- | ------------------------------------------------------------------------------------------ | | `cluster`            | `is` ` is-not` ` contains` ` does-not-contain` ` starts-with`                              | | `data-center`        | `is` ` is-not`                                                                             | | `discovered-time`    | `is-on-or-before` ` is-on-or-after` ` is-between` ` is-earlier-than` ` is-within-the-last` | | `guest-os-family`    | `contains` ` does-not-contain`                                                             | | `host-name`          | `is` ` is-not` ` contains` ` does-not-contain` ` starts-with`                              | | `ip-address`         | `in-range` ` not-in-range` ` is` ` is-not`                                                 | | `power-state`        | `in` ` not-in`                                                                             | | `resource-pool-path` | `contains` ` does-not-contain`                                                             | | `last-time-seen`     | `is-on-or-before` ` is-on-or-after` ` is-between` ` is-earlier-than` ` is-within-the-last` | | `vm`                 | `is` ` is-not` ` contains` ` does-not-contain` ` starts-with`                              |  
###### Enumerated Properties 
(vSphere)  The following fields have enumerated values:  | Field         | Acceptable Values                    | | ------------- | ------------------------------------ | | `power-state` | `poweredOn` `poweredOff` `suspended` |  
### HATEOAS  
This API follows Hypermedia as the Engine of Application State (HATEOAS) principals and is therefore hypermedia friendly.  Hyperlinks are returned in the `links` property of any given resource and contain a fully-qualified hyperlink to the corresponding resource. The format of the hypermedia link adheres to both the <a target=\"_blank\" href=\"http://jsonapi.org\">{json:api} v1</a>  <a target=\"_blank\" href=\"http://jsonapi.org/format/#document-links\">\"Link Object\"</a> and  <a target=\"_blank\" href=\"http://json-schema.org/latest/json-schema-hypermedia.html\">JSON Hyper-Schema</a>  <a target=\"_blank\" href=\"http://json-schema.org/latest/json-schema-hypermedia.html#rfc.section.5.2\">\"Link Description Object\"</a> formats. For example:  ```json \"links\": [{   \"rel\": \"<relation>\",   \"href\": \"<href>\"   ... }] ```  Where appropriate link objects may also contain additional properties than the `rel` and `href` properties, such as `id`, `type`, etc.  See the [Root](#tag/Root) resources for the entry points into API discovery.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 3
- Package version: 0.0.1-6.5.1
- Build package: io.swagger.codegen.languages.RubyClientCodegen

### Installation

#### Build a gem

To build the Ruby code into a gem:

```shell
gem build rapid7_vm_console.gemspec
```

Then either install the gem locally:

```shell
gem install ./rapid7_vm_console-0.0.1-6.5.1.gem
```
(for development, run `gem install --dev ./rapid7_vm_console-0.0.1-6.5.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'rapid7_vm_console', '~> 0.0.1-6.5.1'

#### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/rapid7/vm-console-client-ruby, then add the following in the Gemfile:

    gem 'rapid7_vm_console', :git => 'https://github.com/rapid7/vm-console-client-ruby.git'

#### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

### Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'rapid7_vm_console'

api_instance = Rapid7VmConsole::AdministrationApi.new

opts = { 
  license: File.new("/path/to/file.txt"), # File | The contents of a license (.lic) file.
  key: "key_example" # String | A license activation key.
}

begin
  #License
  result = api_instance.activate_license(opts)
  p result
rescue Rapid7VmConsole::ApiError => e
  puts "Exception when calling AdministrationApi->activate_license: #{e}"
end

```

### Documentation for API Endpoints

All URIs are relative to *https://localhost:3780*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Rapid7VmConsole::AdministrationApi* | [**activate_license**](docs/AdministrationApi.md#activate_license) | **POST** /api/3/administration/license | License
*Rapid7VmConsole::AdministrationApi* | [**execute_command**](docs/AdministrationApi.md#execute_command) | **POST** /api/3/administration/commands | Console Commands
*Rapid7VmConsole::AdministrationApi* | [**get_info**](docs/AdministrationApi.md#get_info) | **GET** /api/3/administration/info | Information
*Rapid7VmConsole::AdministrationApi* | [**get_license**](docs/AdministrationApi.md#get_license) | **GET** /api/3/administration/license | License
*Rapid7VmConsole::AdministrationApi* | [**get_properties**](docs/AdministrationApi.md#get_properties) | **GET** /api/3/administration/properties | Properties
*Rapid7VmConsole::AdministrationApi* | [**get_settings**](docs/AdministrationApi.md#get_settings) | **GET** /api/3/administration/settings | Settings
*Rapid7VmConsole::AssetApi* | [**add_asset_tag**](docs/AssetApi.md#add_asset_tag) | **PUT** /api/3/assets/{id}/tags/{tagId} | Asset Tag
*Rapid7VmConsole::AssetApi* | [**create_asset**](docs/AssetApi.md#create_asset) | **POST** /api/3/sites/{id}/assets | Assets
*Rapid7VmConsole::AssetApi* | [**delete_asset**](docs/AssetApi.md#delete_asset) | **DELETE** /api/3/assets/{id} | Asset
*Rapid7VmConsole::AssetApi* | [**find_assets**](docs/AssetApi.md#find_assets) | **POST** /api/3/assets/search | Asset Search
*Rapid7VmConsole::AssetApi* | [**get_asset**](docs/AssetApi.md#get_asset) | **GET** /api/3/assets/{id} | Asset
*Rapid7VmConsole::AssetApi* | [**get_asset_databases**](docs/AssetApi.md#get_asset_databases) | **GET** /api/3/assets/{id}/databases | Asset Databases
*Rapid7VmConsole::AssetApi* | [**get_asset_files**](docs/AssetApi.md#get_asset_files) | **GET** /api/3/assets/{id}/files | Asset Files
*Rapid7VmConsole::AssetApi* | [**get_asset_service**](docs/AssetApi.md#get_asset_service) | **GET** /api/3/assets/{id}/services/{protocol}/{port} | Asset Service
*Rapid7VmConsole::AssetApi* | [**get_asset_service_configurations**](docs/AssetApi.md#get_asset_service_configurations) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/configurations | Asset Service Configurations
*Rapid7VmConsole::AssetApi* | [**get_asset_service_databases**](docs/AssetApi.md#get_asset_service_databases) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/databases | Asset Service Databases
*Rapid7VmConsole::AssetApi* | [**get_asset_service_user_groups**](docs/AssetApi.md#get_asset_service_user_groups) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/user_groups | Asset Service User Groups
*Rapid7VmConsole::AssetApi* | [**get_asset_service_users**](docs/AssetApi.md#get_asset_service_users) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/users | Asset Service Users
*Rapid7VmConsole::AssetApi* | [**get_asset_service_web_application**](docs/AssetApi.md#get_asset_service_web_application) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/web_applications/{webApplicationId} | Asset Service Web Application
*Rapid7VmConsole::AssetApi* | [**get_asset_service_web_applications**](docs/AssetApi.md#get_asset_service_web_applications) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/web_applications | Asset Service Web Applications
*Rapid7VmConsole::AssetApi* | [**get_asset_services**](docs/AssetApi.md#get_asset_services) | **GET** /api/3/assets/{id}/services | Asset Services
*Rapid7VmConsole::AssetApi* | [**get_asset_software**](docs/AssetApi.md#get_asset_software) | **GET** /api/3/assets/{id}/software | Asset Software
*Rapid7VmConsole::AssetApi* | [**get_asset_tags**](docs/AssetApi.md#get_asset_tags) | **GET** /api/3/assets/{id}/tags | Asset Tags
*Rapid7VmConsole::AssetApi* | [**get_asset_user_groups**](docs/AssetApi.md#get_asset_user_groups) | **GET** /api/3/assets/{id}/user_groups | Asset User Groups
*Rapid7VmConsole::AssetApi* | [**get_asset_users**](docs/AssetApi.md#get_asset_users) | **GET** /api/3/assets/{id}/users | Asset Users
*Rapid7VmConsole::AssetApi* | [**get_assets**](docs/AssetApi.md#get_assets) | **GET** /api/3/assets | Assets
*Rapid7VmConsole::AssetApi* | [**get_operating_system**](docs/AssetApi.md#get_operating_system) | **GET** /api/3/operating_systems/{id} | Operating System
*Rapid7VmConsole::AssetApi* | [**get_operating_systems**](docs/AssetApi.md#get_operating_systems) | **GET** /api/3/operating_systems | Operating Systems
*Rapid7VmConsole::AssetApi* | [**get_software**](docs/AssetApi.md#get_software) | **GET** /api/3/software/{id} | Software
*Rapid7VmConsole::AssetApi* | [**get_softwares**](docs/AssetApi.md#get_softwares) | **GET** /api/3/software | Software
*Rapid7VmConsole::AssetApi* | [**remove_asset_tag**](docs/AssetApi.md#remove_asset_tag) | **DELETE** /api/3/assets/{id}/tags/{tagId} | Asset Tag
*Rapid7VmConsole::AssetDiscoveryApi* | [**create_sonar_query**](docs/AssetDiscoveryApi.md#create_sonar_query) | **POST** /api/3/sonar_queries | Sonar Queries
*Rapid7VmConsole::AssetDiscoveryApi* | [**delete_sonar_query**](docs/AssetDiscoveryApi.md#delete_sonar_query) | **DELETE** /api/3/sonar_queries/{id} | Sonar Query
*Rapid7VmConsole::AssetDiscoveryApi* | [**get_discovery_connection**](docs/AssetDiscoveryApi.md#get_discovery_connection) | **GET** /api/3/discovery_connections/{id} | Discovery Connection
*Rapid7VmConsole::AssetDiscoveryApi* | [**get_discovery_connections**](docs/AssetDiscoveryApi.md#get_discovery_connections) | **GET** /api/3/discovery_connections | Discovery Connections
*Rapid7VmConsole::AssetDiscoveryApi* | [**get_sonar_queries**](docs/AssetDiscoveryApi.md#get_sonar_queries) | **GET** /api/3/sonar_queries | Sonar Queries
*Rapid7VmConsole::AssetDiscoveryApi* | [**get_sonar_query**](docs/AssetDiscoveryApi.md#get_sonar_query) | **GET** /api/3/sonar_queries/{id} | Sonar Query
*Rapid7VmConsole::AssetDiscoveryApi* | [**get_sonar_query_assets**](docs/AssetDiscoveryApi.md#get_sonar_query_assets) | **GET** /api/3/sonar_queries/{id}/assets | Sonar Query Assets
*Rapid7VmConsole::AssetDiscoveryApi* | [**reconnect_discovery_connection**](docs/AssetDiscoveryApi.md#reconnect_discovery_connection) | **POST** /api/3/discovery_connections/{id}/connect | Discovery Connection Reconnect
*Rapid7VmConsole::AssetDiscoveryApi* | [**sonar_query_search**](docs/AssetDiscoveryApi.md#sonar_query_search) | **POST** /api/3/sonar_queries/search | Sonar Query Search
*Rapid7VmConsole::AssetDiscoveryApi* | [**update_sonar_query**](docs/AssetDiscoveryApi.md#update_sonar_query) | **PUT** /api/3/sonar_queries/{id} | Sonar Query
*Rapid7VmConsole::AssetGroupApi* | [**add_asset_group_tag**](docs/AssetGroupApi.md#add_asset_group_tag) | **PUT** /api/3/asset_groups/{id}/tags/{tagId} | Asset Group Tag
*Rapid7VmConsole::AssetGroupApi* | [**add_asset_group_user**](docs/AssetGroupApi.md#add_asset_group_user) | **PUT** /api/3/asset_groups/{id}/users/{userId} | Asset Group User
*Rapid7VmConsole::AssetGroupApi* | [**add_asset_to_asset_group**](docs/AssetGroupApi.md#add_asset_to_asset_group) | **PUT** /api/3/asset_groups/{id}/assets/{assetId} | Asset Group Asset
*Rapid7VmConsole::AssetGroupApi* | [**create_asset_group**](docs/AssetGroupApi.md#create_asset_group) | **POST** /api/3/asset_groups | Asset Groups
*Rapid7VmConsole::AssetGroupApi* | [**delete_asset_group**](docs/AssetGroupApi.md#delete_asset_group) | **DELETE** /api/3/asset_groups/{id} | Asset Group
*Rapid7VmConsole::AssetGroupApi* | [**get_asset_group**](docs/AssetGroupApi.md#get_asset_group) | **GET** /api/3/asset_groups/{id} | Asset Group
*Rapid7VmConsole::AssetGroupApi* | [**get_asset_group_assets**](docs/AssetGroupApi.md#get_asset_group_assets) | **GET** /api/3/asset_groups/{id}/assets | Asset Group Assets
*Rapid7VmConsole::AssetGroupApi* | [**get_asset_group_search_criteria**](docs/AssetGroupApi.md#get_asset_group_search_criteria) | **GET** /api/3/asset_groups/{id}/search_criteria | Asset Group Search Criteria
*Rapid7VmConsole::AssetGroupApi* | [**get_asset_group_tags**](docs/AssetGroupApi.md#get_asset_group_tags) | **GET** /api/3/asset_groups/{id}/tags | Asset Group Tags
*Rapid7VmConsole::AssetGroupApi* | [**get_asset_group_users**](docs/AssetGroupApi.md#get_asset_group_users) | **GET** /api/3/asset_groups/{id}/users | Asset Group Users
*Rapid7VmConsole::AssetGroupApi* | [**get_asset_groups**](docs/AssetGroupApi.md#get_asset_groups) | **GET** /api/3/asset_groups | Asset Groups
*Rapid7VmConsole::AssetGroupApi* | [**remove_all_asset_group_tags**](docs/AssetGroupApi.md#remove_all_asset_group_tags) | **DELETE** /api/3/asset_groups/{id}/tags | Asset Group Tags
*Rapid7VmConsole::AssetGroupApi* | [**remove_all_assets_from_asset_group**](docs/AssetGroupApi.md#remove_all_assets_from_asset_group) | **DELETE** /api/3/asset_groups/{id}/assets | Asset Group Assets
*Rapid7VmConsole::AssetGroupApi* | [**remove_asset_from_asset_group**](docs/AssetGroupApi.md#remove_asset_from_asset_group) | **DELETE** /api/3/asset_groups/{id}/assets/{assetId} | Asset Group Asset
*Rapid7VmConsole::AssetGroupApi* | [**remove_asset_group_tag**](docs/AssetGroupApi.md#remove_asset_group_tag) | **DELETE** /api/3/asset_groups/{id}/tags/{tagId} | Asset Group Tag
*Rapid7VmConsole::AssetGroupApi* | [**remove_asset_group_user**](docs/AssetGroupApi.md#remove_asset_group_user) | **DELETE** /api/3/asset_groups/{id}/users/{userId} | Asset Group User
*Rapid7VmConsole::AssetGroupApi* | [**set_asset_group_search_criteria**](docs/AssetGroupApi.md#set_asset_group_search_criteria) | **PUT** /api/3/asset_groups/{id}/search_criteria | Asset Group Search Criteria
*Rapid7VmConsole::AssetGroupApi* | [**set_asset_group_tags**](docs/AssetGroupApi.md#set_asset_group_tags) | **PUT** /api/3/asset_groups/{id}/tags | Asset Group Tags
*Rapid7VmConsole::AssetGroupApi* | [**set_asset_group_users**](docs/AssetGroupApi.md#set_asset_group_users) | **PUT** /api/3/asset_groups/{id}/users | Asset Group Users
*Rapid7VmConsole::AssetGroupApi* | [**update_asset_group**](docs/AssetGroupApi.md#update_asset_group) | **PUT** /api/3/asset_groups/{id} | Asset Group
*Rapid7VmConsole::AssetGroupApi* | [**update_asset_group_assets**](docs/AssetGroupApi.md#update_asset_group_assets) | **PUT** /api/3/asset_groups/{id}/assets | Asset Group Assets
*Rapid7VmConsole::CredentialApi* | [**create_shared_credential**](docs/CredentialApi.md#create_shared_credential) | **POST** /api/3/shared_credentials | Shared Credentials
*Rapid7VmConsole::CredentialApi* | [**delete_all_shared_credentials**](docs/CredentialApi.md#delete_all_shared_credentials) | **DELETE** /api/3/shared_credentials | Shared Credentials
*Rapid7VmConsole::CredentialApi* | [**delete_shared_credential**](docs/CredentialApi.md#delete_shared_credential) | **DELETE** /api/3/shared_credentials/{id} | Shared Credential
*Rapid7VmConsole::CredentialApi* | [**get_shared_credential**](docs/CredentialApi.md#get_shared_credential) | **GET** /api/3/shared_credentials/{id} | Shared Credential
*Rapid7VmConsole::CredentialApi* | [**get_shared_credentials**](docs/CredentialApi.md#get_shared_credentials) | **GET** /api/3/shared_credentials | Shared Credentials
*Rapid7VmConsole::CredentialApi* | [**update_shared_credential**](docs/CredentialApi.md#update_shared_credential) | **PUT** /api/3/shared_credentials/{id} | Shared Credential
*Rapid7VmConsole::PolicyApi* | [**get_asset_policy_children**](docs/PolicyApi.md#get_asset_policy_children) | **GET** /api/3/assets/{assetId}/policies/{policyId}/children | Policy Rules or Groups Directly Under Policy For Asset
*Rapid7VmConsole::PolicyApi* | [**get_asset_policy_group_children**](docs/PolicyApi.md#get_asset_policy_group_children) | **GET** /api/3/assets/{assetId}/policies/{policyId}/groups/{groupId}/children | Policy Rules or Groups Directly Under Policy Group For Asset
*Rapid7VmConsole::PolicyApi* | [**get_asset_policy_rules_summary**](docs/PolicyApi.md#get_asset_policy_rules_summary) | **GET** /api/3/assets/{assetId}/policies/{policyId}/rules | Policy Rules For Asset
*Rapid7VmConsole::PolicyApi* | [**get_descendant_policy_rules**](docs/PolicyApi.md#get_descendant_policy_rules) | **GET** /api/3/policies/{policyId}/groups/{groupId}/rules | Policy Rules Under Policy Group
*Rapid7VmConsole::PolicyApi* | [**get_disabled_policy_rules**](docs/PolicyApi.md#get_disabled_policy_rules) | **GET** /api/3/policies/{policyId}/rules/disabled | Disabled Policy Rules
*Rapid7VmConsole::PolicyApi* | [**get_policies**](docs/PolicyApi.md#get_policies) | **GET** /api/3/policies | Policies
*Rapid7VmConsole::PolicyApi* | [**get_policies_for_asset**](docs/PolicyApi.md#get_policies_for_asset) | **GET** /api/3/assets/{assetId}/policies | Policies For Asset
*Rapid7VmConsole::PolicyApi* | [**get_policy**](docs/PolicyApi.md#get_policy) | **GET** /api/3/policies/{policyId} | Policy
*Rapid7VmConsole::PolicyApi* | [**get_policy_asset_result**](docs/PolicyApi.md#get_policy_asset_result) | **GET** /api/3/policies/{policyId}/assets/{assetId} | Policy Asset Result
*Rapid7VmConsole::PolicyApi* | [**get_policy_asset_results**](docs/PolicyApi.md#get_policy_asset_results) | **GET** /api/3/policies/{policyId}/assets | Policy Asset Results
*Rapid7VmConsole::PolicyApi* | [**get_policy_children**](docs/PolicyApi.md#get_policy_children) | **GET** /api/3/policies/{id}/children | Policy Rules or Groups Directly Under Policy
*Rapid7VmConsole::PolicyApi* | [**get_policy_group**](docs/PolicyApi.md#get_policy_group) | **GET** /api/3/policies/{policyId}/groups/{groupId} | Policy Group
*Rapid7VmConsole::PolicyApi* | [**get_policy_group_asset_result**](docs/PolicyApi.md#get_policy_group_asset_result) | **GET** /api/3/policies/{policyId}/groups/{groupId}/assets/{assetId} | Asset Compliance For Policy Rules Under Policy Group
*Rapid7VmConsole::PolicyApi* | [**get_policy_group_asset_results**](docs/PolicyApi.md#get_policy_group_asset_results) | **GET** /api/3/policies/{policyId}/groups/{groupId}/assets | Assets Compliance For Policy Rules Under Policy Group
*Rapid7VmConsole::PolicyApi* | [**get_policy_group_children**](docs/PolicyApi.md#get_policy_group_children) | **GET** /api/3/policies/{policyId}/groups/{groupId}/children | Policy Rules or Groups Directly Under Policy Group
*Rapid7VmConsole::PolicyApi* | [**get_policy_group_rules_with_asset_assessment**](docs/PolicyApi.md#get_policy_group_rules_with_asset_assessment) | **GET** /api/3/assets/{assetId}/policies/{policyId}/groups/{groupId}/rules | Policy Rules Under Policy Group For Asset
*Rapid7VmConsole::PolicyApi* | [**get_policy_groups**](docs/PolicyApi.md#get_policy_groups) | **GET** /api/3/policies/{policyId}/groups | Policy Groups
*Rapid7VmConsole::PolicyApi* | [**get_policy_rule**](docs/PolicyApi.md#get_policy_rule) | **GET** /api/3/policies/{policyId}/rules/{ruleId} | Policy Rule
*Rapid7VmConsole::PolicyApi* | [**get_policy_rule_asset_result**](docs/PolicyApi.md#get_policy_rule_asset_result) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/assets/{assetId} | Asset Compliance For Policy Rule
*Rapid7VmConsole::PolicyApi* | [**get_policy_rule_asset_result_proof**](docs/PolicyApi.md#get_policy_rule_asset_result_proof) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/assets/{assetId}/proof | Policy Rule Proof For Asset
*Rapid7VmConsole::PolicyApi* | [**get_policy_rule_asset_results**](docs/PolicyApi.md#get_policy_rule_asset_results) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/assets | Assets Compliance For Policy Rule
*Rapid7VmConsole::PolicyApi* | [**get_policy_rule_controls**](docs/PolicyApi.md#get_policy_rule_controls) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/controls | Policy Rule Controls
*Rapid7VmConsole::PolicyApi* | [**get_policy_rule_rationale**](docs/PolicyApi.md#get_policy_rule_rationale) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/rationale | Policy Rule Rationale
*Rapid7VmConsole::PolicyApi* | [**get_policy_rule_remediation**](docs/PolicyApi.md#get_policy_rule_remediation) | **GET** /api/3/policies/{policyId}/rules/{ruleId}/remediation | Policy Rule Remediation
*Rapid7VmConsole::PolicyApi* | [**get_policy_rules**](docs/PolicyApi.md#get_policy_rules) | **GET** /api/3/policies/{policyId}/rules | Policy Rules
*Rapid7VmConsole::PolicyApi* | [**get_policy_summary**](docs/PolicyApi.md#get_policy_summary) | **GET** /api/3/policy/summary | Policy Compliance Summaries
*Rapid7VmConsole::PolicyOverrideApi* | [**create_policy_override**](docs/PolicyOverrideApi.md#create_policy_override) | **POST** /api/3/policy_overrides | Policy Overrides
*Rapid7VmConsole::PolicyOverrideApi* | [**delete_policy_override**](docs/PolicyOverrideApi.md#delete_policy_override) | **DELETE** /api/3/policy_overrides/{id} | Policy Override
*Rapid7VmConsole::PolicyOverrideApi* | [**get_asset_policy_overrides**](docs/PolicyOverrideApi.md#get_asset_policy_overrides) | **GET** /api/3/assets/{id}/policy_overrides | Asset Policy Overrides
*Rapid7VmConsole::PolicyOverrideApi* | [**get_policy_override**](docs/PolicyOverrideApi.md#get_policy_override) | **GET** /api/3/policy_overrides/{id} | Policy Override
*Rapid7VmConsole::PolicyOverrideApi* | [**get_policy_override_expiration**](docs/PolicyOverrideApi.md#get_policy_override_expiration) | **GET** /api/3/policy_overrides/{id}/expires | Policy Override Expiration
*Rapid7VmConsole::PolicyOverrideApi* | [**get_policy_overrides**](docs/PolicyOverrideApi.md#get_policy_overrides) | **GET** /api/3/policy_overrides | Policy Overrides
*Rapid7VmConsole::PolicyOverrideApi* | [**set_policy_override_expiration**](docs/PolicyOverrideApi.md#set_policy_override_expiration) | **PUT** /api/3/policy_overrides/{id}/expires | Policy Override Expiration
*Rapid7VmConsole::PolicyOverrideApi* | [**set_policy_override_status**](docs/PolicyOverrideApi.md#set_policy_override_status) | **POST** /api/3/policy_overrides/{id}/{status} | Policy Override Status
*Rapid7VmConsole::RemediationApi* | [**get_asset_vulnerability_solutions**](docs/RemediationApi.md#get_asset_vulnerability_solutions) | **GET** /api/3/assets/{id}/vulnerabilities/{vulnerabilityId}/solution | Asset Vulnerability Solution
*Rapid7VmConsole::ReportApi* | [**create_report**](docs/ReportApi.md#create_report) | **POST** /api/3/reports | Reports
*Rapid7VmConsole::ReportApi* | [**delete_report**](docs/ReportApi.md#delete_report) | **DELETE** /api/3/reports/{id} | Report
*Rapid7VmConsole::ReportApi* | [**delete_report_instance**](docs/ReportApi.md#delete_report_instance) | **DELETE** /api/3/reports/{id}/history/{instance} | Report History
*Rapid7VmConsole::ReportApi* | [**download_report**](docs/ReportApi.md#download_report) | **GET** /api/3/reports/{id}/history/{instance}/output | Report Download
*Rapid7VmConsole::ReportApi* | [**generate_report**](docs/ReportApi.md#generate_report) | **POST** /api/3/reports/{id}/generate | Report Generation
*Rapid7VmConsole::ReportApi* | [**get_report**](docs/ReportApi.md#get_report) | **GET** /api/3/reports/{id} | Report
*Rapid7VmConsole::ReportApi* | [**get_report_formats**](docs/ReportApi.md#get_report_formats) | **GET** /api/3/report_formats | Report Formats
*Rapid7VmConsole::ReportApi* | [**get_report_instance**](docs/ReportApi.md#get_report_instance) | **GET** /api/3/reports/{id}/history/{instance} | Report History
*Rapid7VmConsole::ReportApi* | [**get_report_instances**](docs/ReportApi.md#get_report_instances) | **GET** /api/3/reports/{id}/history | Report Histories
*Rapid7VmConsole::ReportApi* | [**get_report_template**](docs/ReportApi.md#get_report_template) | **GET** /api/3/report_templates/{id} | Report Template
*Rapid7VmConsole::ReportApi* | [**get_report_templates**](docs/ReportApi.md#get_report_templates) | **GET** /api/3/report_templates | Report Templates
*Rapid7VmConsole::ReportApi* | [**get_reports**](docs/ReportApi.md#get_reports) | **GET** /api/3/reports | Reports
*Rapid7VmConsole::ReportApi* | [**update_report**](docs/ReportApi.md#update_report) | **PUT** /api/3/reports/{id} | Report
*Rapid7VmConsole::RootApi* | [**resources**](docs/RootApi.md#resources) | **GET** /api/3 | Resources
*Rapid7VmConsole::ScanApi* | [**get_scan**](docs/ScanApi.md#get_scan) | **GET** /api/3/scans/{id} | Scan
*Rapid7VmConsole::ScanApi* | [**get_scans**](docs/ScanApi.md#get_scans) | **GET** /api/3/scans | Scans
*Rapid7VmConsole::ScanApi* | [**get_site_scans**](docs/ScanApi.md#get_site_scans) | **GET** /api/3/sites/{id}/scans | Site Scans
*Rapid7VmConsole::ScanApi* | [**set_scan_status**](docs/ScanApi.md#set_scan_status) | **POST** /api/3/scans/{id}/{status} | Scan Status
*Rapid7VmConsole::ScanApi* | [**start_scan**](docs/ScanApi.md#start_scan) | **POST** /api/3/sites/{id}/scans | Site Scans
*Rapid7VmConsole::ScanEngineApi* | [**add_scan_engine_pool_scan_engine**](docs/ScanEngineApi.md#add_scan_engine_pool_scan_engine) | **PUT** /api/3/scan_engine_pools/{id}/engines/{engineId} | Engine Pool Engines
*Rapid7VmConsole::ScanEngineApi* | [**create_scan_engine**](docs/ScanEngineApi.md#create_scan_engine) | **POST** /api/3/scan_engines | Scan Engines
*Rapid7VmConsole::ScanEngineApi* | [**create_scan_engine_pool**](docs/ScanEngineApi.md#create_scan_engine_pool) | **POST** /api/3/scan_engine_pools | Engine Pools
*Rapid7VmConsole::ScanEngineApi* | [**delete_scan_engine**](docs/ScanEngineApi.md#delete_scan_engine) | **DELETE** /api/3/scan_engines/{id} | Scan Engine
*Rapid7VmConsole::ScanEngineApi* | [**get_assigned_engine_pools**](docs/ScanEngineApi.md#get_assigned_engine_pools) | **GET** /api/3/scan_engines/{id}/scan_engine_pools | Assigned Engine Pools
*Rapid7VmConsole::ScanEngineApi* | [**get_engine_pool**](docs/ScanEngineApi.md#get_engine_pool) | **GET** /api/3/scan_engine_pools/{id} | Engine Pool
*Rapid7VmConsole::ScanEngineApi* | [**get_scan_engine**](docs/ScanEngineApi.md#get_scan_engine) | **GET** /api/3/scan_engines/{id} | Scan Engine
*Rapid7VmConsole::ScanEngineApi* | [**get_scan_engine_pool_scan_engines**](docs/ScanEngineApi.md#get_scan_engine_pool_scan_engines) | **GET** /api/3/scan_engine_pools/{id}/engines | Engine Pool Engines
*Rapid7VmConsole::ScanEngineApi* | [**get_scan_engine_pool_sites**](docs/ScanEngineApi.md#get_scan_engine_pool_sites) | **GET** /api/3/scan_engine_pools/{id}/sites | Engine Pool Sites
*Rapid7VmConsole::ScanEngineApi* | [**get_scan_engine_pools**](docs/ScanEngineApi.md#get_scan_engine_pools) | **GET** /api/3/scan_engine_pools | Engine Pools
*Rapid7VmConsole::ScanEngineApi* | [**get_scan_engine_scans**](docs/ScanEngineApi.md#get_scan_engine_scans) | **GET** /api/3/scan_engines/{id}/scans | Scan Engine Scans
*Rapid7VmConsole::ScanEngineApi* | [**get_scan_engine_sites**](docs/ScanEngineApi.md#get_scan_engine_sites) | **GET** /api/3/scan_engines/{id}/sites | Scan Engine Sites
*Rapid7VmConsole::ScanEngineApi* | [**get_scan_engines**](docs/ScanEngineApi.md#get_scan_engines) | **GET** /api/3/scan_engines | Scan Engines
*Rapid7VmConsole::ScanEngineApi* | [**remove_scan_engine_pool**](docs/ScanEngineApi.md#remove_scan_engine_pool) | **DELETE** /api/3/scan_engine_pools/{id} | Engine Pool
*Rapid7VmConsole::ScanEngineApi* | [**remove_scan_engine_pool_scan_engine**](docs/ScanEngineApi.md#remove_scan_engine_pool_scan_engine) | **DELETE** /api/3/scan_engine_pools/{id}/engines/{engineId} | Engine Pool Engines
*Rapid7VmConsole::ScanEngineApi* | [**set_scan_engine_pool_scan_engines**](docs/ScanEngineApi.md#set_scan_engine_pool_scan_engines) | **PUT** /api/3/scan_engine_pools/{id}/engines | Engine Pool Engines
*Rapid7VmConsole::ScanEngineApi* | [**update_scan_engine**](docs/ScanEngineApi.md#update_scan_engine) | **PUT** /api/3/scan_engines/{id} | Scan Engine
*Rapid7VmConsole::ScanEngineApi* | [**update_scan_engine_pool**](docs/ScanEngineApi.md#update_scan_engine_pool) | **PUT** /api/3/scan_engine_pools/{id} | Engine Pool
*Rapid7VmConsole::ScanTemplateApi* | [**create_scan_template**](docs/ScanTemplateApi.md#create_scan_template) | **POST** /api/3/scan_templates | Scan Templates
*Rapid7VmConsole::ScanTemplateApi* | [**delete_scan_template**](docs/ScanTemplateApi.md#delete_scan_template) | **DELETE** /api/3/scan_templates/{id} | Scan Template
*Rapid7VmConsole::ScanTemplateApi* | [**get_scan_template**](docs/ScanTemplateApi.md#get_scan_template) | **GET** /api/3/scan_templates/{id} | Scan Template
*Rapid7VmConsole::ScanTemplateApi* | [**get_scan_templates**](docs/ScanTemplateApi.md#get_scan_templates) | **GET** /api/3/scan_templates | Scan Templates
*Rapid7VmConsole::ScanTemplateApi* | [**update_scan_template**](docs/ScanTemplateApi.md#update_scan_template) | **PUT** /api/3/scan_templates/{id} | Scan Template
*Rapid7VmConsole::SiteApi* | [**add_site_tag**](docs/SiteApi.md#add_site_tag) | **PUT** /api/3/sites/{id}/tags/{tagId} | Site Tag
*Rapid7VmConsole::SiteApi* | [**add_site_user**](docs/SiteApi.md#add_site_user) | **POST** /api/3/sites/{id}/users | Site Users Access
*Rapid7VmConsole::SiteApi* | [**create_site**](docs/SiteApi.md#create_site) | **POST** /api/3/sites | Sites
*Rapid7VmConsole::SiteApi* | [**create_site_credential**](docs/SiteApi.md#create_site_credential) | **POST** /api/3/sites/{id}/site_credentials | Site Scan Credentials
*Rapid7VmConsole::SiteApi* | [**create_site_scan_schedule**](docs/SiteApi.md#create_site_scan_schedule) | **POST** /api/3/sites/{id}/scan_schedules | Site Scan Schedules
*Rapid7VmConsole::SiteApi* | [**create_site_smtp_alert**](docs/SiteApi.md#create_site_smtp_alert) | **POST** /api/3/sites/{id}/alerts/smtp | Site SMTP Alerts
*Rapid7VmConsole::SiteApi* | [**create_site_snmp_alert**](docs/SiteApi.md#create_site_snmp_alert) | **POST** /api/3/sites/{id}/alerts/snmp | Site SNMP Alerts
*Rapid7VmConsole::SiteApi* | [**create_site_syslog_alert**](docs/SiteApi.md#create_site_syslog_alert) | **POST** /api/3/sites/{id}/alerts/syslog | Site Syslog Alerts
*Rapid7VmConsole::SiteApi* | [**delete_all_site_alerts**](docs/SiteApi.md#delete_all_site_alerts) | **DELETE** /api/3/sites/{id}/alerts | Site Alerts
*Rapid7VmConsole::SiteApi* | [**delete_all_site_credentials**](docs/SiteApi.md#delete_all_site_credentials) | **DELETE** /api/3/sites/{id}/site_credentials | Site Scan Credentials
*Rapid7VmConsole::SiteApi* | [**delete_all_site_scan_schedules**](docs/SiteApi.md#delete_all_site_scan_schedules) | **DELETE** /api/3/sites/{id}/scan_schedules | Site Scan Schedules
*Rapid7VmConsole::SiteApi* | [**delete_all_site_smtp_alerts**](docs/SiteApi.md#delete_all_site_smtp_alerts) | **DELETE** /api/3/sites/{id}/alerts/smtp | Site SMTP Alerts
*Rapid7VmConsole::SiteApi* | [**delete_all_site_snmp_alerts**](docs/SiteApi.md#delete_all_site_snmp_alerts) | **DELETE** /api/3/sites/{id}/alerts/snmp | Site SNMP Alerts
*Rapid7VmConsole::SiteApi* | [**delete_all_site_syslog_alerts**](docs/SiteApi.md#delete_all_site_syslog_alerts) | **DELETE** /api/3/sites/{id}/alerts/syslog | Site Syslog Alerts
*Rapid7VmConsole::SiteApi* | [**delete_site**](docs/SiteApi.md#delete_site) | **DELETE** /api/3/sites/{id} | Site
*Rapid7VmConsole::SiteApi* | [**delete_site_credential**](docs/SiteApi.md#delete_site_credential) | **DELETE** /api/3/sites/{id}/site_credentials/{credentialId} | Site Scan Credential
*Rapid7VmConsole::SiteApi* | [**delete_site_scan_schedule**](docs/SiteApi.md#delete_site_scan_schedule) | **DELETE** /api/3/sites/{id}/scan_schedules/{scheduleId} | Site Scan Schedule
*Rapid7VmConsole::SiteApi* | [**delete_site_smtp_alert**](docs/SiteApi.md#delete_site_smtp_alert) | **DELETE** /api/3/sites/{id}/alerts/smtp/{alertId} | Site SMTP Alert
*Rapid7VmConsole::SiteApi* | [**delete_site_snmp_alert**](docs/SiteApi.md#delete_site_snmp_alert) | **DELETE** /api/3/sites/{id}/alerts/snmp/{alertId} | Site SNMP Alert
*Rapid7VmConsole::SiteApi* | [**delete_site_syslog_alert**](docs/SiteApi.md#delete_site_syslog_alert) | **DELETE** /api/3/sites/{id}/alerts/syslog/{alertId} | Site Syslog Alert
*Rapid7VmConsole::SiteApi* | [**enable_shared_credential_on_site**](docs/SiteApi.md#enable_shared_credential_on_site) | **PUT** /api/3/sites/{id}/shared_credentials/{credentialId}/enabled | Assigned Shared Credential Enablement
*Rapid7VmConsole::SiteApi* | [**enable_site_credential**](docs/SiteApi.md#enable_site_credential) | **PUT** /api/3/sites/{id}/site_credentials/{credentialId}/enabled | Site Credential Enablement
*Rapid7VmConsole::SiteApi* | [**get_excluded_asset_groups**](docs/SiteApi.md#get_excluded_asset_groups) | **GET** /api/3/sites/{id}/excluded_asset_groups | Site Excluded Asset Groups
*Rapid7VmConsole::SiteApi* | [**get_excluded_targets**](docs/SiteApi.md#get_excluded_targets) | **GET** /api/3/sites/{id}/excluded_targets | Site Excluded Targets
*Rapid7VmConsole::SiteApi* | [**get_included_asset_groups**](docs/SiteApi.md#get_included_asset_groups) | **GET** /api/3/sites/{id}/included_asset_groups | Site Included Asset Groups
*Rapid7VmConsole::SiteApi* | [**get_included_targets**](docs/SiteApi.md#get_included_targets) | **GET** /api/3/sites/{id}/included_targets | Site Included Targets
*Rapid7VmConsole::SiteApi* | [**get_site**](docs/SiteApi.md#get_site) | **GET** /api/3/sites/{id} | Site
*Rapid7VmConsole::SiteApi* | [**get_site_alerts**](docs/SiteApi.md#get_site_alerts) | **GET** /api/3/sites/{id}/alerts | Site Alerts
*Rapid7VmConsole::SiteApi* | [**get_site_assets**](docs/SiteApi.md#get_site_assets) | **GET** /api/3/sites/{id}/assets | Site Assets
*Rapid7VmConsole::SiteApi* | [**get_site_credential**](docs/SiteApi.md#get_site_credential) | **GET** /api/3/sites/{id}/site_credentials/{credentialId} | Site Scan Credential
*Rapid7VmConsole::SiteApi* | [**get_site_credentials**](docs/SiteApi.md#get_site_credentials) | **GET** /api/3/sites/{id}/site_credentials | Site Scan Credentials
*Rapid7VmConsole::SiteApi* | [**get_site_discovery_connection**](docs/SiteApi.md#get_site_discovery_connection) | **GET** /api/3/sites/{id}/discovery_connection | Site Discovery Connection
*Rapid7VmConsole::SiteApi* | [**get_site_discovery_search_criteria**](docs/SiteApi.md#get_site_discovery_search_criteria) | **GET** /api/3/sites/{id}/discovery_search_criteria | Site Discovery Search Criteria
*Rapid7VmConsole::SiteApi* | [**get_site_organization**](docs/SiteApi.md#get_site_organization) | **GET** /api/3/sites/{id}/organization | Site Organization Information
*Rapid7VmConsole::SiteApi* | [**get_site_scan_engine**](docs/SiteApi.md#get_site_scan_engine) | **GET** /api/3/sites/{id}/scan_engine | Site Scan Engine
*Rapid7VmConsole::SiteApi* | [**get_site_scan_schedule**](docs/SiteApi.md#get_site_scan_schedule) | **GET** /api/3/sites/{id}/scan_schedules/{scheduleId} | Site Scan Schedule
*Rapid7VmConsole::SiteApi* | [**get_site_scan_schedules**](docs/SiteApi.md#get_site_scan_schedules) | **GET** /api/3/sites/{id}/scan_schedules | Site Scan Schedules
*Rapid7VmConsole::SiteApi* | [**get_site_scan_template**](docs/SiteApi.md#get_site_scan_template) | **GET** /api/3/sites/{id}/scan_template | Site Scan Template
*Rapid7VmConsole::SiteApi* | [**get_site_shared_credentials**](docs/SiteApi.md#get_site_shared_credentials) | **GET** /api/3/sites/{id}/shared_credentials | Assigned Shared Credentials
*Rapid7VmConsole::SiteApi* | [**get_site_smtp_alert**](docs/SiteApi.md#get_site_smtp_alert) | **GET** /api/3/sites/{id}/alerts/smtp/{alertId} | Site SMTP Alert
*Rapid7VmConsole::SiteApi* | [**get_site_smtp_alerts**](docs/SiteApi.md#get_site_smtp_alerts) | **GET** /api/3/sites/{id}/alerts/smtp | Site SMTP Alerts
*Rapid7VmConsole::SiteApi* | [**get_site_snmp_alert**](docs/SiteApi.md#get_site_snmp_alert) | **GET** /api/3/sites/{id}/alerts/snmp/{alertId} | Site SNMP Alert
*Rapid7VmConsole::SiteApi* | [**get_site_snmp_alerts**](docs/SiteApi.md#get_site_snmp_alerts) | **GET** /api/3/sites/{id}/alerts/snmp | Site SNMP Alerts
*Rapid7VmConsole::SiteApi* | [**get_site_syslog_alert**](docs/SiteApi.md#get_site_syslog_alert) | **GET** /api/3/sites/{id}/alerts/syslog/{alertId} | Site Syslog Alert
*Rapid7VmConsole::SiteApi* | [**get_site_syslog_alerts**](docs/SiteApi.md#get_site_syslog_alerts) | **GET** /api/3/sites/{id}/alerts/syslog | Site Syslog Alerts
*Rapid7VmConsole::SiteApi* | [**get_site_tags**](docs/SiteApi.md#get_site_tags) | **GET** /api/3/sites/{id}/tags | Site Tags
*Rapid7VmConsole::SiteApi* | [**get_site_users**](docs/SiteApi.md#get_site_users) | **GET** /api/3/sites/{id}/users | Site Users Access
*Rapid7VmConsole::SiteApi* | [**get_sites**](docs/SiteApi.md#get_sites) | **GET** /api/3/sites | Sites
*Rapid7VmConsole::SiteApi* | [**get_web_auth_html_forms**](docs/SiteApi.md#get_web_auth_html_forms) | **GET** /api/3/sites/{id}/web_authentication/html_forms | Web Authentication HTML Forms
*Rapid7VmConsole::SiteApi* | [**get_web_auth_http_headers**](docs/SiteApi.md#get_web_auth_http_headers) | **GET** /api/3/sites/{id}/web_authentication/http_headers | Web Authentication HTTP Headers
*Rapid7VmConsole::SiteApi* | [**remove_all_excluded_asset_groups**](docs/SiteApi.md#remove_all_excluded_asset_groups) | **DELETE** /api/3/sites/{id}/excluded_asset_groups | Site Excluded Asset Groups
*Rapid7VmConsole::SiteApi* | [**remove_all_included_asset_groups**](docs/SiteApi.md#remove_all_included_asset_groups) | **DELETE** /api/3/sites/{id}/included_asset_groups | Site Included Asset Groups
*Rapid7VmConsole::SiteApi* | [**remove_asset_from_site**](docs/SiteApi.md#remove_asset_from_site) | **DELETE** /api/3/sites/{id}/assets/{assetId} | Site Asset
*Rapid7VmConsole::SiteApi* | [**remove_excluded_asset_group**](docs/SiteApi.md#remove_excluded_asset_group) | **DELETE** /api/3/sites/{id}/excluded_asset_groups/{assetGroupId} | Site Excluded Asset Group
*Rapid7VmConsole::SiteApi* | [**remove_included_asset_group**](docs/SiteApi.md#remove_included_asset_group) | **DELETE** /api/3/sites/{id}/included_asset_groups/{assetGroupId} | Site Included Asset Group
*Rapid7VmConsole::SiteApi* | [**remove_site_assets**](docs/SiteApi.md#remove_site_assets) | **DELETE** /api/3/sites/{id}/assets | Site Assets
*Rapid7VmConsole::SiteApi* | [**remove_site_tag**](docs/SiteApi.md#remove_site_tag) | **DELETE** /api/3/sites/{id}/tags/{tagId} | Site Tag
*Rapid7VmConsole::SiteApi* | [**remove_site_user**](docs/SiteApi.md#remove_site_user) | **DELETE** /api/3/sites/{id}/users/{userId} | Site User Access
*Rapid7VmConsole::SiteApi* | [**set_site_credentials**](docs/SiteApi.md#set_site_credentials) | **PUT** /api/3/sites/{id}/site_credentials | Site Scan Credentials
*Rapid7VmConsole::SiteApi* | [**set_site_discovery_connection**](docs/SiteApi.md#set_site_discovery_connection) | **PUT** /api/3/sites/{id}/discovery_connection | Site Discovery Connection
*Rapid7VmConsole::SiteApi* | [**set_site_discovery_search_criteria**](docs/SiteApi.md#set_site_discovery_search_criteria) | **PUT** /api/3/sites/{id}/discovery_search_criteria | Site Discovery Search Criteria
*Rapid7VmConsole::SiteApi* | [**set_site_scan_engine**](docs/SiteApi.md#set_site_scan_engine) | **PUT** /api/3/sites/{id}/scan_engine | Site Scan Engine
*Rapid7VmConsole::SiteApi* | [**set_site_scan_schedules**](docs/SiteApi.md#set_site_scan_schedules) | **PUT** /api/3/sites/{id}/scan_schedules | Site Scan Schedules
*Rapid7VmConsole::SiteApi* | [**set_site_scan_template**](docs/SiteApi.md#set_site_scan_template) | **PUT** /api/3/sites/{id}/scan_template | Site Scan Template
*Rapid7VmConsole::SiteApi* | [**set_site_smtp_alerts**](docs/SiteApi.md#set_site_smtp_alerts) | **PUT** /api/3/sites/{id}/alerts/smtp | Site SMTP Alerts
*Rapid7VmConsole::SiteApi* | [**set_site_snmp_alerts**](docs/SiteApi.md#set_site_snmp_alerts) | **PUT** /api/3/sites/{id}/alerts/snmp | Site SNMP Alerts
*Rapid7VmConsole::SiteApi* | [**set_site_syslog_alerts**](docs/SiteApi.md#set_site_syslog_alerts) | **PUT** /api/3/sites/{id}/alerts/syslog | Site Syslog Alerts
*Rapid7VmConsole::SiteApi* | [**set_site_tags**](docs/SiteApi.md#set_site_tags) | **PUT** /api/3/sites/{id}/tags | Site Tags
*Rapid7VmConsole::SiteApi* | [**set_site_users**](docs/SiteApi.md#set_site_users) | **PUT** /api/3/sites/{id}/users | Site Users Access
*Rapid7VmConsole::SiteApi* | [**update_excluded_asset_groups**](docs/SiteApi.md#update_excluded_asset_groups) | **PUT** /api/3/sites/{id}/excluded_asset_groups | Site Excluded Asset Groups
*Rapid7VmConsole::SiteApi* | [**update_excluded_targets**](docs/SiteApi.md#update_excluded_targets) | **PUT** /api/3/sites/{id}/excluded_targets | Site Excluded Targets
*Rapid7VmConsole::SiteApi* | [**update_included_asset_groups**](docs/SiteApi.md#update_included_asset_groups) | **PUT** /api/3/sites/{id}/included_asset_groups | Site Included Asset Groups
*Rapid7VmConsole::SiteApi* | [**update_included_targets**](docs/SiteApi.md#update_included_targets) | **PUT** /api/3/sites/{id}/included_targets | Site Included Targets
*Rapid7VmConsole::SiteApi* | [**update_site**](docs/SiteApi.md#update_site) | **PUT** /api/3/sites/{id} | Site
*Rapid7VmConsole::SiteApi* | [**update_site_credential**](docs/SiteApi.md#update_site_credential) | **PUT** /api/3/sites/{id}/site_credentials/{credentialId} | Site Scan Credential
*Rapid7VmConsole::SiteApi* | [**update_site_organization**](docs/SiteApi.md#update_site_organization) | **PUT** /api/3/sites/{id}/organization | Site Organization Information
*Rapid7VmConsole::SiteApi* | [**update_site_scan_schedule**](docs/SiteApi.md#update_site_scan_schedule) | **PUT** /api/3/sites/{id}/scan_schedules/{scheduleId} | Site Scan Schedule
*Rapid7VmConsole::SiteApi* | [**update_site_smtp_alert**](docs/SiteApi.md#update_site_smtp_alert) | **PUT** /api/3/sites/{id}/alerts/smtp/{alertId} | Site SMTP Alert
*Rapid7VmConsole::SiteApi* | [**update_site_snmp_alert**](docs/SiteApi.md#update_site_snmp_alert) | **PUT** /api/3/sites/{id}/alerts/snmp/{alertId} | Site SNMP Alert
*Rapid7VmConsole::SiteApi* | [**update_site_syslog_alert**](docs/SiteApi.md#update_site_syslog_alert) | **PUT** /api/3/sites/{id}/alerts/syslog/{alertId} | Site Syslog Alert
*Rapid7VmConsole::TagApi* | [**create_tag**](docs/TagApi.md#create_tag) | **POST** /api/3/tags | Tags
*Rapid7VmConsole::TagApi* | [**delete_tag**](docs/TagApi.md#delete_tag) | **DELETE** /api/3/tags/{id} | Tag
*Rapid7VmConsole::TagApi* | [**get_tag**](docs/TagApi.md#get_tag) | **GET** /api/3/tags/{id} | Tag
*Rapid7VmConsole::TagApi* | [**get_tag_asset_groups**](docs/TagApi.md#get_tag_asset_groups) | **GET** /api/3/tags/{id}/asset_groups | Tag Asset Groups
*Rapid7VmConsole::TagApi* | [**get_tag_search_criteria**](docs/TagApi.md#get_tag_search_criteria) | **GET** /api/3/tags/{id}/search_criteria | Tag Search Criteria
*Rapid7VmConsole::TagApi* | [**get_tagged_assets**](docs/TagApi.md#get_tagged_assets) | **GET** /api/3/tags/{id}/assets | Tag Assets
*Rapid7VmConsole::TagApi* | [**get_tagged_sites**](docs/TagApi.md#get_tagged_sites) | **GET** /api/3/tags/{id}/sites | Tag Sites
*Rapid7VmConsole::TagApi* | [**get_tags**](docs/TagApi.md#get_tags) | **GET** /api/3/tags | Tags
*Rapid7VmConsole::TagApi* | [**remove_tag_search_criteria**](docs/TagApi.md#remove_tag_search_criteria) | **DELETE** /api/3/tags/{id}/search_criteria | Tag Search Criteria
*Rapid7VmConsole::TagApi* | [**remove_tagged_sites**](docs/TagApi.md#remove_tagged_sites) | **DELETE** /api/3/tags/{id}/sites | Tag Sites
*Rapid7VmConsole::TagApi* | [**set_tagged_asset_groups**](docs/TagApi.md#set_tagged_asset_groups) | **PUT** /api/3/tags/{id}/asset_groups | Tag Asset Groups
*Rapid7VmConsole::TagApi* | [**set_tagged_sites**](docs/TagApi.md#set_tagged_sites) | **PUT** /api/3/tags/{id}/sites | Tag Sites
*Rapid7VmConsole::TagApi* | [**tag_asset**](docs/TagApi.md#tag_asset) | **PUT** /api/3/tags/{id}/assets/{assetId} | Tag Asset
*Rapid7VmConsole::TagApi* | [**tag_asset_group**](docs/TagApi.md#tag_asset_group) | **PUT** /api/3/tags/{id}/asset_groups/{assetGroupId} | Tag Asset Group
*Rapid7VmConsole::TagApi* | [**tag_site**](docs/TagApi.md#tag_site) | **PUT** /api/3/tags/{id}/sites/{siteId} | Tag Site
*Rapid7VmConsole::TagApi* | [**untag_all_asset_groups**](docs/TagApi.md#untag_all_asset_groups) | **DELETE** /api/3/tags/{id}/asset_groups | Tag Asset Groups
*Rapid7VmConsole::TagApi* | [**untag_asset**](docs/TagApi.md#untag_asset) | **DELETE** /api/3/tags/{id}/assets/{assetId} | Tag Asset
*Rapid7VmConsole::TagApi* | [**untag_asset_group**](docs/TagApi.md#untag_asset_group) | **DELETE** /api/3/tags/{id}/asset_groups/{assetGroupId} | Tag Asset Group
*Rapid7VmConsole::TagApi* | [**untag_site**](docs/TagApi.md#untag_site) | **DELETE** /api/3/tags/{id}/sites/{siteId} | Tag Site
*Rapid7VmConsole::TagApi* | [**update_tag**](docs/TagApi.md#update_tag) | **PUT** /api/3/tags/{id} | Tag
*Rapid7VmConsole::TagApi* | [**update_tag_search_criteria**](docs/TagApi.md#update_tag_search_criteria) | **PUT** /api/3/tags/{id}/search_criteria | Tag Search Criteria
*Rapid7VmConsole::UserApi* | [**add_user_asset_group**](docs/UserApi.md#add_user_asset_group) | **PUT** /api/3/users/{id}/asset_groups/{assetGroupId} | Asset Group Access
*Rapid7VmConsole::UserApi* | [**add_user_site**](docs/UserApi.md#add_user_site) | **PUT** /api/3/users/{id}/sites/{siteId} | Site Access
*Rapid7VmConsole::UserApi* | [**create_user**](docs/UserApi.md#create_user) | **POST** /api/3/users | Users
*Rapid7VmConsole::UserApi* | [**delete_role**](docs/UserApi.md#delete_role) | **DELETE** /api/3/roles/{id} | Role
*Rapid7VmConsole::UserApi* | [**get_authentication_source**](docs/UserApi.md#get_authentication_source) | **GET** /api/3/authentication_sources/{id} | Authentication Source
*Rapid7VmConsole::UserApi* | [**get_authentication_source_users**](docs/UserApi.md#get_authentication_source_users) | **GET** /api/3/authentication_sources/{id}/users | Authentication Source Users
*Rapid7VmConsole::UserApi* | [**get_authentication_sources**](docs/UserApi.md#get_authentication_sources) | **GET** /api/3/authentication_sources | Authentication Sources
*Rapid7VmConsole::UserApi* | [**get_privilege**](docs/UserApi.md#get_privilege) | **GET** /api/3/privileges/{id} | Privilege
*Rapid7VmConsole::UserApi* | [**get_privileges**](docs/UserApi.md#get_privileges) | **GET** /api/3/privileges | Privileges
*Rapid7VmConsole::UserApi* | [**get_role**](docs/UserApi.md#get_role) | **GET** /api/3/roles/{id} | Role
*Rapid7VmConsole::UserApi* | [**get_role_users**](docs/UserApi.md#get_role_users) | **GET** /api/3/roles/{id}/users | Users With Role
*Rapid7VmConsole::UserApi* | [**get_roles**](docs/UserApi.md#get_roles) | **GET** /api/3/roles | Roles
*Rapid7VmConsole::UserApi* | [**get_two_factor_authentication_key**](docs/UserApi.md#get_two_factor_authentication_key) | **GET** /api/3/users/{id}/2FA | Two-Factor Authentication
*Rapid7VmConsole::UserApi* | [**get_user**](docs/UserApi.md#get_user) | **GET** /api/3/users/{id} | User
*Rapid7VmConsole::UserApi* | [**get_user_asset_groups**](docs/UserApi.md#get_user_asset_groups) | **GET** /api/3/users/{id}/asset_groups | Asset Groups Access
*Rapid7VmConsole::UserApi* | [**get_user_privileges**](docs/UserApi.md#get_user_privileges) | **GET** /api/3/users/{id}/privileges | User Privileges
*Rapid7VmConsole::UserApi* | [**get_user_sites**](docs/UserApi.md#get_user_sites) | **GET** /api/3/users/{id}/sites | Sites Access
*Rapid7VmConsole::UserApi* | [**get_users**](docs/UserApi.md#get_users) | **GET** /api/3/users | Users
*Rapid7VmConsole::UserApi* | [**get_users_with_privilege**](docs/UserApi.md#get_users_with_privilege) | **GET** /api/3/privileges/{id}/users | Users With Privilege
*Rapid7VmConsole::UserApi* | [**regenerate_two_factor_authentication**](docs/UserApi.md#regenerate_two_factor_authentication) | **POST** /api/3/users/{id}/2FA | Two-Factor Authentication
*Rapid7VmConsole::UserApi* | [**remove_all_user_asset_groups**](docs/UserApi.md#remove_all_user_asset_groups) | **DELETE** /api/3/users/{id}/asset_groups | Asset Groups Access
*Rapid7VmConsole::UserApi* | [**remove_all_user_sites**](docs/UserApi.md#remove_all_user_sites) | **DELETE** /api/3/users/{id}/sites | Sites Access
*Rapid7VmConsole::UserApi* | [**remove_user_asset_group**](docs/UserApi.md#remove_user_asset_group) | **DELETE** /api/3/users/{id}/asset_groups/{assetGroupId} | Asset Group Access
*Rapid7VmConsole::UserApi* | [**remove_user_site**](docs/UserApi.md#remove_user_site) | **DELETE** /api/3/users/{id}/sites/{siteId} | Site Access
*Rapid7VmConsole::UserApi* | [**reset_password**](docs/UserApi.md#reset_password) | **PUT** /api/3/users/{id}/password | Password Reset
*Rapid7VmConsole::UserApi* | [**set_two_factor_authentication**](docs/UserApi.md#set_two_factor_authentication) | **PUT** /api/3/users/{id}/2FA | Two-Factor Authentication
*Rapid7VmConsole::UserApi* | [**set_user_asset_groups**](docs/UserApi.md#set_user_asset_groups) | **PUT** /api/3/users/{id}/asset_groups | Asset Groups Access
*Rapid7VmConsole::UserApi* | [**set_user_sites**](docs/UserApi.md#set_user_sites) | **PUT** /api/3/users/{id}/sites | Sites Access
*Rapid7VmConsole::UserApi* | [**unlock_user**](docs/UserApi.md#unlock_user) | **DELETE** /api/3/users/{id}/lock | Unlock Account
*Rapid7VmConsole::UserApi* | [**update_role**](docs/UserApi.md#update_role) | **PUT** /api/3/roles/{id} | Role
*Rapid7VmConsole::UserApi* | [**update_user**](docs/UserApi.md#update_user) | **PUT** /api/3/users/{id} | User
*Rapid7VmConsole::VulnerabilityApi* | [**get_affected_assets**](docs/VulnerabilityApi.md#get_affected_assets) | **GET** /api/3/vulnerabilities/{id}/assets | Vulnerability Affected Assets
*Rapid7VmConsole::VulnerabilityApi* | [**get_exploit**](docs/VulnerabilityApi.md#get_exploit) | **GET** /api/3/exploits/{id} | Exploit
*Rapid7VmConsole::VulnerabilityApi* | [**get_exploit_vulnerabilities**](docs/VulnerabilityApi.md#get_exploit_vulnerabilities) | **GET** /api/3/exploits/{id}/vulnerabilities | Exploitable Vulnerabilities
*Rapid7VmConsole::VulnerabilityApi* | [**get_exploits**](docs/VulnerabilityApi.md#get_exploits) | **GET** /api/3/exploits | Exploits
*Rapid7VmConsole::VulnerabilityApi* | [**get_malware_kit**](docs/VulnerabilityApi.md#get_malware_kit) | **GET** /api/3/malware_kits/{id} | Malware Kit
*Rapid7VmConsole::VulnerabilityApi* | [**get_malware_kit_vulnerabilities**](docs/VulnerabilityApi.md#get_malware_kit_vulnerabilities) | **GET** /api/3/malware_kits/{id}/vulnerabilities | Malware Kit Vulnerabilities
*Rapid7VmConsole::VulnerabilityApi* | [**get_malware_kits**](docs/VulnerabilityApi.md#get_malware_kits) | **GET** /api/3/malware_kits | Malware Kits
*Rapid7VmConsole::VulnerabilityApi* | [**get_prerequisite_solutions**](docs/VulnerabilityApi.md#get_prerequisite_solutions) | **GET** /api/3/solutions/{id}/prerequisites | Solution Prerequisites
*Rapid7VmConsole::VulnerabilityApi* | [**get_solution**](docs/VulnerabilityApi.md#get_solution) | **GET** /api/3/solutions/{id} | Solution
*Rapid7VmConsole::VulnerabilityApi* | [**get_solutions**](docs/VulnerabilityApi.md#get_solutions) | **GET** /api/3/solutions | Solutions
*Rapid7VmConsole::VulnerabilityApi* | [**get_superseded_solutions**](docs/VulnerabilityApi.md#get_superseded_solutions) | **GET** /api/3/solutions/{id}/supersedes | Superseded Solutions
*Rapid7VmConsole::VulnerabilityApi* | [**get_superseding_solutions**](docs/VulnerabilityApi.md#get_superseding_solutions) | **GET** /api/3/solutions/{id}/superseding | Superseding Solutions
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerabilities**](docs/VulnerabilityApi.md#get_vulnerabilities) | **GET** /api/3/vulnerabilities | Vulnerabilities
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability**](docs/VulnerabilityApi.md#get_vulnerability) | **GET** /api/3/vulnerabilities/{id} | Vulnerability
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_categories**](docs/VulnerabilityApi.md#get_vulnerability_categories) | **GET** /api/3/vulnerability_categories | Categories
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_category**](docs/VulnerabilityApi.md#get_vulnerability_category) | **GET** /api/3/vulnerability_categories/{id} | Category
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_category_vulnerabilities**](docs/VulnerabilityApi.md#get_vulnerability_category_vulnerabilities) | **GET** /api/3/vulnerability_categories/{id}/vulnerabilities | Category Vulnerabilities
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_exploits**](docs/VulnerabilityApi.md#get_vulnerability_exploits) | **GET** /api/3/vulnerabilities/{id}/exploits | Vulnerability Exploits
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_malware_kits**](docs/VulnerabilityApi.md#get_vulnerability_malware_kits) | **GET** /api/3/vulnerabilities/{id}/malware_kits | Vulnerability Malware Kits
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_reference**](docs/VulnerabilityApi.md#get_vulnerability_reference) | **GET** /api/3/vulnerability_references/{id} | Reference
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_reference_vulnerabilities**](docs/VulnerabilityApi.md#get_vulnerability_reference_vulnerabilities) | **GET** /api/3/vulnerability_references/{id}/vulnerabilities | Reference Vulnerabilities
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_references**](docs/VulnerabilityApi.md#get_vulnerability_references) | **GET** /api/3/vulnerability_references | References
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_references1**](docs/VulnerabilityApi.md#get_vulnerability_references1) | **GET** /api/3/vulnerabilities/{id}/references | Vulnerability References
*Rapid7VmConsole::VulnerabilityApi* | [**get_vulnerability_solutions**](docs/VulnerabilityApi.md#get_vulnerability_solutions) | **GET** /api/3/vulnerabilities/{id}/solutions | Vulnerability Solutions
*Rapid7VmConsole::VulnerabilityCheckApi* | [**get_vulnerability_check_types**](docs/VulnerabilityCheckApi.md#get_vulnerability_check_types) | **GET** /api/3/vulnerability_checks_types | Check Types
*Rapid7VmConsole::VulnerabilityCheckApi* | [**get_vulnerability_checks**](docs/VulnerabilityCheckApi.md#get_vulnerability_checks) | **GET** /api/3/vulnerability_checks | Checks
*Rapid7VmConsole::VulnerabilityCheckApi* | [**get_vulnerability_checks_for_vulnerability**](docs/VulnerabilityCheckApi.md#get_vulnerability_checks_for_vulnerability) | **GET** /api/3/vulnerabilities/{id}/checks | Vulnerability Checks
*Rapid7VmConsole::VulnerabilityCheckApi* | [**vulnerability_check**](docs/VulnerabilityCheckApi.md#vulnerability_check) | **GET** /api/3/vulnerability_checks/{id} | Check
*Rapid7VmConsole::VulnerabilityExceptionApi* | [**create_vulnerability_exception**](docs/VulnerabilityExceptionApi.md#create_vulnerability_exception) | **POST** /api/3/vulnerability_exceptions | Exceptions
*Rapid7VmConsole::VulnerabilityExceptionApi* | [**get_vulnerability_exception**](docs/VulnerabilityExceptionApi.md#get_vulnerability_exception) | **GET** /api/3/vulnerability_exceptions/{id} | Exception
*Rapid7VmConsole::VulnerabilityExceptionApi* | [**get_vulnerability_exception_expiration**](docs/VulnerabilityExceptionApi.md#get_vulnerability_exception_expiration) | **GET** /api/3/vulnerability_exceptions/{id}/expires | Exception Expiration
*Rapid7VmConsole::VulnerabilityExceptionApi* | [**get_vulnerability_exceptions**](docs/VulnerabilityExceptionApi.md#get_vulnerability_exceptions) | **GET** /api/3/vulnerability_exceptions | Exceptions
*Rapid7VmConsole::VulnerabilityExceptionApi* | [**remove_vulnerability_exception**](docs/VulnerabilityExceptionApi.md#remove_vulnerability_exception) | **DELETE** /api/3/vulnerability_exceptions/{id} | Exception
*Rapid7VmConsole::VulnerabilityExceptionApi* | [**update_vulnerability_exception_expiration**](docs/VulnerabilityExceptionApi.md#update_vulnerability_exception_expiration) | **PUT** /api/3/vulnerability_exceptions/{id}/expires | Exception Expiration
*Rapid7VmConsole::VulnerabilityExceptionApi* | [**update_vulnerability_exception_status**](docs/VulnerabilityExceptionApi.md#update_vulnerability_exception_status) | **POST** /api/3/vulnerability_exceptions/{id}/{status} | Exception Status
*Rapid7VmConsole::VulnerabilityResultApi* | [**create_vulnerability_validation**](docs/VulnerabilityResultApi.md#create_vulnerability_validation) | **POST** /api/3/assets/{id}/vulnerabilities/{vulnerabilityId}/validations | Asset Vulnerability Validations
*Rapid7VmConsole::VulnerabilityResultApi* | [**delete_vulnerability_validation**](docs/VulnerabilityResultApi.md#delete_vulnerability_validation) | **DELETE** /api/3/assets/{id}/vulnerabilities/{vulnerabilityId}/validations/{validationId} | Asset Vulnerability Validation
*Rapid7VmConsole::VulnerabilityResultApi* | [**get_asset_service_vulnerabilities**](docs/VulnerabilityResultApi.md#get_asset_service_vulnerabilities) | **GET** /api/3/assets/{id}/services/{protocol}/{port}/vulnerabilities | Asset Service Vulnerabilities
*Rapid7VmConsole::VulnerabilityResultApi* | [**get_asset_vulnerabilities**](docs/VulnerabilityResultApi.md#get_asset_vulnerabilities) | **GET** /api/3/assets/{id}/vulnerabilities | Asset Vulnerabilities
*Rapid7VmConsole::VulnerabilityResultApi* | [**get_asset_vulnerability**](docs/VulnerabilityResultApi.md#get_asset_vulnerability) | **GET** /api/3/assets/{id}/vulnerabilities/{vulnerabilityId} | Asset Vulnerability
*Rapid7VmConsole::VulnerabilityResultApi* | [**get_vulnerability_validation**](docs/VulnerabilityResultApi.md#get_vulnerability_validation) | **GET** /api/3/assets/{id}/vulnerabilities/{vulnerabilityId}/validations/{validationId} | Asset Vulnerability Validation
*Rapid7VmConsole::VulnerabilityResultApi* | [**get_vulnerability_validations**](docs/VulnerabilityResultApi.md#get_vulnerability_validations) | **GET** /api/3/assets/{id}/vulnerabilities/{vulnerabilityId}/validations | Asset Vulnerability Validations


### Documentation for Models

 - [Rapid7VmConsole::Account](docs/Account.md)
 - [Rapid7VmConsole::AdditionalInformation](docs/AdditionalInformation.md)
 - [Rapid7VmConsole::Address](docs/Address.md)
 - [Rapid7VmConsole::AdhocScan](docs/AdhocScan.md)
 - [Rapid7VmConsole::AdvisoryLink](docs/AdvisoryLink.md)
 - [Rapid7VmConsole::Alert](docs/Alert.md)
 - [Rapid7VmConsole::AssessmentResult](docs/AssessmentResult.md)
 - [Rapid7VmConsole::Asset](docs/Asset.md)
 - [Rapid7VmConsole::AssetCreate](docs/AssetCreate.md)
 - [Rapid7VmConsole::AssetCreatedOrUpdatedReference](docs/AssetCreatedOrUpdatedReference.md)
 - [Rapid7VmConsole::AssetGroup](docs/AssetGroup.md)
 - [Rapid7VmConsole::AssetHistory](docs/AssetHistory.md)
 - [Rapid7VmConsole::AssetPolicy](docs/AssetPolicy.md)
 - [Rapid7VmConsole::AssetPolicyAssessment](docs/AssetPolicyAssessment.md)
 - [Rapid7VmConsole::AssetPolicyItem](docs/AssetPolicyItem.md)
 - [Rapid7VmConsole::AssetTag](docs/AssetTag.md)
 - [Rapid7VmConsole::AssetVulnerabilities](docs/AssetVulnerabilities.md)
 - [Rapid7VmConsole::AuthenticationSettings](docs/AuthenticationSettings.md)
 - [Rapid7VmConsole::AuthenticationSource](docs/AuthenticationSource.md)
 - [Rapid7VmConsole::AvailableReportFormat](docs/AvailableReportFormat.md)
 - [Rapid7VmConsole::BackupsSize](docs/BackupsSize.md)
 - [Rapid7VmConsole::BadRequestError](docs/BadRequestError.md)
 - [Rapid7VmConsole::CPUInfo](docs/CPUInfo.md)
 - [Rapid7VmConsole::Configuration](docs/Configuration.md)
 - [Rapid7VmConsole::ConsoleCommandOutput](docs/ConsoleCommandOutput.md)
 - [Rapid7VmConsole::ContentDescription](docs/ContentDescription.md)
 - [Rapid7VmConsole::CreateAuthenticationSource](docs/CreateAuthenticationSource.md)
 - [Rapid7VmConsole::CreatedOrUpdatedReference](docs/CreatedOrUpdatedReference.md)
 - [Rapid7VmConsole::CreatedReference](docs/CreatedReference.md)
 - [Rapid7VmConsole::CreatedReferenceAssetGroupIDLink](docs/CreatedReferenceAssetGroupIDLink.md)
 - [Rapid7VmConsole::CreatedReferenceCredentialIDLink](docs/CreatedReferenceCredentialIDLink.md)
 - [Rapid7VmConsole::CreatedReferenceDiscoveryQueryIDLink](docs/CreatedReferenceDiscoveryQueryIDLink.md)
 - [Rapid7VmConsole::CreatedReferenceEngineIDLink](docs/CreatedReferenceEngineIDLink.md)
 - [Rapid7VmConsole::CreatedReferencePolicyOverrideIDLink](docs/CreatedReferencePolicyOverrideIDLink.md)
 - [Rapid7VmConsole::CreatedReferenceScanIDLink](docs/CreatedReferenceScanIDLink.md)
 - [Rapid7VmConsole::CreatedReferenceScanTemplateIDLink](docs/CreatedReferenceScanTemplateIDLink.md)
 - [Rapid7VmConsole::CreatedReferenceUserIDLink](docs/CreatedReferenceUserIDLink.md)
 - [Rapid7VmConsole::CreatedReferenceVulnerabilityExceptionIDLink](docs/CreatedReferenceVulnerabilityExceptionIDLink.md)
 - [Rapid7VmConsole::CreatedReferenceVulnerabilityValidationIDLink](docs/CreatedReferenceVulnerabilityValidationIDLink.md)
 - [Rapid7VmConsole::CreatedReferenceintLink](docs/CreatedReferenceintLink.md)
 - [Rapid7VmConsole::Criterion](docs/Criterion.md)
 - [Rapid7VmConsole::Database](docs/Database.md)
 - [Rapid7VmConsole::DatabaseConnectionSettings](docs/DatabaseConnectionSettings.md)
 - [Rapid7VmConsole::DatabaseSettings](docs/DatabaseSettings.md)
 - [Rapid7VmConsole::DatabaseSize](docs/DatabaseSize.md)
 - [Rapid7VmConsole::DiscoveryAsset](docs/DiscoveryAsset.md)
 - [Rapid7VmConsole::DiscoveryConnection](docs/DiscoveryConnection.md)
 - [Rapid7VmConsole::DiscoverySearchCriteria](docs/DiscoverySearchCriteria.md)
 - [Rapid7VmConsole::DiskFree](docs/DiskFree.md)
 - [Rapid7VmConsole::DiskInfo](docs/DiskInfo.md)
 - [Rapid7VmConsole::DiskTotal](docs/DiskTotal.md)
 - [Rapid7VmConsole::DynamicSite](docs/DynamicSite.md)
 - [Rapid7VmConsole::EnginePool](docs/EnginePool.md)
 - [Rapid7VmConsole::EnvironmentProperties](docs/EnvironmentProperties.md)
 - [Rapid7VmConsole::Error](docs/Error.md)
 - [Rapid7VmConsole::ExceptionScope](docs/ExceptionScope.md)
 - [Rapid7VmConsole::ExcludedAssetGroups](docs/ExcludedAssetGroups.md)
 - [Rapid7VmConsole::ExcludedScanTargets](docs/ExcludedScanTargets.md)
 - [Rapid7VmConsole::Exploit](docs/Exploit.md)
 - [Rapid7VmConsole::ExploitSource](docs/ExploitSource.md)
 - [Rapid7VmConsole::ExploitSourceLink](docs/ExploitSourceLink.md)
 - [Rapid7VmConsole::Features](docs/Features.md)
 - [Rapid7VmConsole::File](docs/File.md)
 - [Rapid7VmConsole::Fingerprint](docs/Fingerprint.md)
 - [Rapid7VmConsole::GlobalScan](docs/GlobalScan.md)
 - [Rapid7VmConsole::GroupAccount](docs/GroupAccount.md)
 - [Rapid7VmConsole::HostName](docs/HostName.md)
 - [Rapid7VmConsole::IMetaData](docs/IMetaData.md)
 - [Rapid7VmConsole::IncludedAssetGroups](docs/IncludedAssetGroups.md)
 - [Rapid7VmConsole::IncludedScanTargets](docs/IncludedScanTargets.md)
 - [Rapid7VmConsole::Info](docs/Info.md)
 - [Rapid7VmConsole::InstallSize](docs/InstallSize.md)
 - [Rapid7VmConsole::InstallationTotalSize](docs/InstallationTotalSize.md)
 - [Rapid7VmConsole::InternalServerError](docs/InternalServerError.md)
 - [Rapid7VmConsole::JVMInfo](docs/JVMInfo.md)
 - [Rapid7VmConsole::JsonNode](docs/JsonNode.md)
 - [Rapid7VmConsole::License](docs/License.md)
 - [Rapid7VmConsole::LicenseLimits](docs/LicenseLimits.md)
 - [Rapid7VmConsole::LicensePolicyScanning](docs/LicensePolicyScanning.md)
 - [Rapid7VmConsole::LicensePolicyScanningBenchmarks](docs/LicensePolicyScanningBenchmarks.md)
 - [Rapid7VmConsole::LicenseReporting](docs/LicenseReporting.md)
 - [Rapid7VmConsole::LicenseScanning](docs/LicenseScanning.md)
 - [Rapid7VmConsole::Link](docs/Link.md)
 - [Rapid7VmConsole::Links](docs/Links.md)
 - [Rapid7VmConsole::LocalePreferences](docs/LocalePreferences.md)
 - [Rapid7VmConsole::MalwareKit](docs/MalwareKit.md)
 - [Rapid7VmConsole::MatchedSolution](docs/MatchedSolution.md)
 - [Rapid7VmConsole::MemoryFree](docs/MemoryFree.md)
 - [Rapid7VmConsole::MemoryInfo](docs/MemoryInfo.md)
 - [Rapid7VmConsole::MemoryTotal](docs/MemoryTotal.md)
 - [Rapid7VmConsole::MetadataContainer](docs/MetadataContainer.md)
 - [Rapid7VmConsole::NotFoundError](docs/NotFoundError.md)
 - [Rapid7VmConsole::OperatingSystem](docs/OperatingSystem.md)
 - [Rapid7VmConsole::OperatingSystemCpe](docs/OperatingSystemCpe.md)
 - [Rapid7VmConsole::PCI](docs/PCI.md)
 - [Rapid7VmConsole::PageInfo](docs/PageInfo.md)
 - [Rapid7VmConsole::PageOfAsset](docs/PageOfAsset.md)
 - [Rapid7VmConsole::PageOfAssetGroup](docs/PageOfAssetGroup.md)
 - [Rapid7VmConsole::PageOfAssetPolicy](docs/PageOfAssetPolicy.md)
 - [Rapid7VmConsole::PageOfAssetPolicyItem](docs/PageOfAssetPolicyItem.md)
 - [Rapid7VmConsole::PageOfDiscoveryConnection](docs/PageOfDiscoveryConnection.md)
 - [Rapid7VmConsole::PageOfExploit](docs/PageOfExploit.md)
 - [Rapid7VmConsole::PageOfGlobalScan](docs/PageOfGlobalScan.md)
 - [Rapid7VmConsole::PageOfMalwareKit](docs/PageOfMalwareKit.md)
 - [Rapid7VmConsole::PageOfOperatingSystem](docs/PageOfOperatingSystem.md)
 - [Rapid7VmConsole::PageOfPolicy](docs/PageOfPolicy.md)
 - [Rapid7VmConsole::PageOfPolicyAsset](docs/PageOfPolicyAsset.md)
 - [Rapid7VmConsole::PageOfPolicyControl](docs/PageOfPolicyControl.md)
 - [Rapid7VmConsole::PageOfPolicyGroup](docs/PageOfPolicyGroup.md)
 - [Rapid7VmConsole::PageOfPolicyItem](docs/PageOfPolicyItem.md)
 - [Rapid7VmConsole::PageOfPolicyOverride](docs/PageOfPolicyOverride.md)
 - [Rapid7VmConsole::PageOfPolicyRule](docs/PageOfPolicyRule.md)
 - [Rapid7VmConsole::PageOfReport](docs/PageOfReport.md)
 - [Rapid7VmConsole::PageOfScan](docs/PageOfScan.md)
 - [Rapid7VmConsole::PageOfSite](docs/PageOfSite.md)
 - [Rapid7VmConsole::PageOfSoftware](docs/PageOfSoftware.md)
 - [Rapid7VmConsole::PageOfTag](docs/PageOfTag.md)
 - [Rapid7VmConsole::PageOfUser](docs/PageOfUser.md)
 - [Rapid7VmConsole::PageOfVulnerability](docs/PageOfVulnerability.md)
 - [Rapid7VmConsole::PageOfVulnerabilityCategory](docs/PageOfVulnerabilityCategory.md)
 - [Rapid7VmConsole::PageOfVulnerabilityCheck](docs/PageOfVulnerabilityCheck.md)
 - [Rapid7VmConsole::PageOfVulnerabilityException](docs/PageOfVulnerabilityException.md)
 - [Rapid7VmConsole::PageOfVulnerabilityFinding](docs/PageOfVulnerabilityFinding.md)
 - [Rapid7VmConsole::PageOfVulnerabilityReference](docs/PageOfVulnerabilityReference.md)
 - [Rapid7VmConsole::Policy](docs/Policy.md)
 - [Rapid7VmConsole::PolicyAsset](docs/PolicyAsset.md)
 - [Rapid7VmConsole::PolicyBenchmark](docs/PolicyBenchmark.md)
 - [Rapid7VmConsole::PolicyControl](docs/PolicyControl.md)
 - [Rapid7VmConsole::PolicyGroup](docs/PolicyGroup.md)
 - [Rapid7VmConsole::PolicyItem](docs/PolicyItem.md)
 - [Rapid7VmConsole::PolicyMetadataResource](docs/PolicyMetadataResource.md)
 - [Rapid7VmConsole::PolicyOverride](docs/PolicyOverride.md)
 - [Rapid7VmConsole::PolicyOverrideReviewer](docs/PolicyOverrideReviewer.md)
 - [Rapid7VmConsole::PolicyOverrideScope](docs/PolicyOverrideScope.md)
 - [Rapid7VmConsole::PolicyOverrideSubmitter](docs/PolicyOverrideSubmitter.md)
 - [Rapid7VmConsole::PolicyRule](docs/PolicyRule.md)
 - [Rapid7VmConsole::PolicyRuleAssessmentResource](docs/PolicyRuleAssessmentResource.md)
 - [Rapid7VmConsole::PolicySummaryResource](docs/PolicySummaryResource.md)
 - [Rapid7VmConsole::Privileges](docs/Privileges.md)
 - [Rapid7VmConsole::ReferenceWithAlertIDLink](docs/ReferenceWithAlertIDLink.md)
 - [Rapid7VmConsole::ReferenceWithAssetIDLink](docs/ReferenceWithAssetIDLink.md)
 - [Rapid7VmConsole::ReferenceWithEndpointIDLink](docs/ReferenceWithEndpointIDLink.md)
 - [Rapid7VmConsole::ReferenceWithEngineIDLink](docs/ReferenceWithEngineIDLink.md)
 - [Rapid7VmConsole::ReferenceWithReportIDLink](docs/ReferenceWithReportIDLink.md)
 - [Rapid7VmConsole::ReferenceWithScanScheduleIDLink](docs/ReferenceWithScanScheduleIDLink.md)
 - [Rapid7VmConsole::ReferenceWithSiteIDLink](docs/ReferenceWithSiteIDLink.md)
 - [Rapid7VmConsole::ReferenceWithTagIDLink](docs/ReferenceWithTagIDLink.md)
 - [Rapid7VmConsole::ReferenceWithUserIDLink](docs/ReferenceWithUserIDLink.md)
 - [Rapid7VmConsole::ReferencesWithAssetGroupIDLink](docs/ReferencesWithAssetGroupIDLink.md)
 - [Rapid7VmConsole::ReferencesWithAssetIDLink](docs/ReferencesWithAssetIDLink.md)
 - [Rapid7VmConsole::ReferencesWithEngineIDLink](docs/ReferencesWithEngineIDLink.md)
 - [Rapid7VmConsole::ReferencesWithReferenceWithEndpointIDLinkServiceLink](docs/ReferencesWithReferenceWithEndpointIDLinkServiceLink.md)
 - [Rapid7VmConsole::ReferencesWithSiteIDLink](docs/ReferencesWithSiteIDLink.md)
 - [Rapid7VmConsole::ReferencesWithSolutionNaturalIDLink](docs/ReferencesWithSolutionNaturalIDLink.md)
 - [Rapid7VmConsole::ReferencesWithTagIDLink](docs/ReferencesWithTagIDLink.md)
 - [Rapid7VmConsole::ReferencesWithUserIDLink](docs/ReferencesWithUserIDLink.md)
 - [Rapid7VmConsole::ReferencesWithVulnerabilityCheckIDLink](docs/ReferencesWithVulnerabilityCheckIDLink.md)
 - [Rapid7VmConsole::ReferencesWithVulnerabilityCheckTypeIDLink](docs/ReferencesWithVulnerabilityCheckTypeIDLink.md)
 - [Rapid7VmConsole::ReferencesWithVulnerabilityNaturalIDLink](docs/ReferencesWithVulnerabilityNaturalIDLink.md)
 - [Rapid7VmConsole::ReferencesWithWebApplicationIDLink](docs/ReferencesWithWebApplicationIDLink.md)
 - [Rapid7VmConsole::RepeatResource](docs/RepeatResource.md)
 - [Rapid7VmConsole::RepeatSchedule](docs/RepeatSchedule.md)
 - [Rapid7VmConsole::Report](docs/Report.md)
 - [Rapid7VmConsole::ReportConfigCategoryFilters](docs/ReportConfigCategoryFilters.md)
 - [Rapid7VmConsole::ReportConfigDatabaseCredentialsResource](docs/ReportConfigDatabaseCredentialsResource.md)
 - [Rapid7VmConsole::ReportConfigDatabaseResource](docs/ReportConfigDatabaseResource.md)
 - [Rapid7VmConsole::ReportConfigFiltersResource](docs/ReportConfigFiltersResource.md)
 - [Rapid7VmConsole::ReportConfigScopeResource](docs/ReportConfigScopeResource.md)
 - [Rapid7VmConsole::ReportEmail](docs/ReportEmail.md)
 - [Rapid7VmConsole::ReportEmailSmtp](docs/ReportEmailSmtp.md)
 - [Rapid7VmConsole::ReportFilters](docs/ReportFilters.md)
 - [Rapid7VmConsole::ReportFrequency](docs/ReportFrequency.md)
 - [Rapid7VmConsole::ReportInstance](docs/ReportInstance.md)
 - [Rapid7VmConsole::ReportScope](docs/ReportScope.md)
 - [Rapid7VmConsole::ReportSize](docs/ReportSize.md)
 - [Rapid7VmConsole::ReportStorage](docs/ReportStorage.md)
 - [Rapid7VmConsole::ReportTemplate](docs/ReportTemplate.md)
 - [Rapid7VmConsole::ResourcesAlert](docs/ResourcesAlert.md)
 - [Rapid7VmConsole::ResourcesAssetGroup](docs/ResourcesAssetGroup.md)
 - [Rapid7VmConsole::ResourcesAssetTag](docs/ResourcesAssetTag.md)
 - [Rapid7VmConsole::ResourcesAuthenticationSource](docs/ResourcesAuthenticationSource.md)
 - [Rapid7VmConsole::ResourcesAvailableReportFormat](docs/ResourcesAvailableReportFormat.md)
 - [Rapid7VmConsole::ResourcesConfiguration](docs/ResourcesConfiguration.md)
 - [Rapid7VmConsole::ResourcesDatabase](docs/ResourcesDatabase.md)
 - [Rapid7VmConsole::ResourcesDiscoveryAsset](docs/ResourcesDiscoveryAsset.md)
 - [Rapid7VmConsole::ResourcesEnginePool](docs/ResourcesEnginePool.md)
 - [Rapid7VmConsole::ResourcesFile](docs/ResourcesFile.md)
 - [Rapid7VmConsole::ResourcesGroupAccount](docs/ResourcesGroupAccount.md)
 - [Rapid7VmConsole::ResourcesMatchedSolution](docs/ResourcesMatchedSolution.md)
 - [Rapid7VmConsole::ResourcesPolicyOverride](docs/ResourcesPolicyOverride.md)
 - [Rapid7VmConsole::ResourcesReportInstance](docs/ResourcesReportInstance.md)
 - [Rapid7VmConsole::ResourcesReportTemplate](docs/ResourcesReportTemplate.md)
 - [Rapid7VmConsole::ResourcesRole](docs/ResourcesRole.md)
 - [Rapid7VmConsole::ResourcesScanEngine](docs/ResourcesScanEngine.md)
 - [Rapid7VmConsole::ResourcesScanSchedule](docs/ResourcesScanSchedule.md)
 - [Rapid7VmConsole::ResourcesScanTemplate](docs/ResourcesScanTemplate.md)
 - [Rapid7VmConsole::ResourcesSharedCredential](docs/ResourcesSharedCredential.md)
 - [Rapid7VmConsole::ResourcesSiteCredential](docs/ResourcesSiteCredential.md)
 - [Rapid7VmConsole::ResourcesSiteSharedCredential](docs/ResourcesSiteSharedCredential.md)
 - [Rapid7VmConsole::ResourcesSmtpAlert](docs/ResourcesSmtpAlert.md)
 - [Rapid7VmConsole::ResourcesSnmpAlert](docs/ResourcesSnmpAlert.md)
 - [Rapid7VmConsole::ResourcesSoftware](docs/ResourcesSoftware.md)
 - [Rapid7VmConsole::ResourcesSolution](docs/ResourcesSolution.md)
 - [Rapid7VmConsole::ResourcesSonarQuery](docs/ResourcesSonarQuery.md)
 - [Rapid7VmConsole::ResourcesSyslogAlert](docs/ResourcesSyslogAlert.md)
 - [Rapid7VmConsole::ResourcesTag](docs/ResourcesTag.md)
 - [Rapid7VmConsole::ResourcesUser](docs/ResourcesUser.md)
 - [Rapid7VmConsole::ResourcesUserAccount](docs/ResourcesUserAccount.md)
 - [Rapid7VmConsole::ResourcesVulnerabilityValidationResource](docs/ResourcesVulnerabilityValidationResource.md)
 - [Rapid7VmConsole::ResourcesWebFormAuthentication](docs/ResourcesWebFormAuthentication.md)
 - [Rapid7VmConsole::ResourcesWebHeaderAuthentication](docs/ResourcesWebHeaderAuthentication.md)
 - [Rapid7VmConsole::Review](docs/Review.md)
 - [Rapid7VmConsole::RiskModifierSettings](docs/RiskModifierSettings.md)
 - [Rapid7VmConsole::RiskSettings](docs/RiskSettings.md)
 - [Rapid7VmConsole::Role](docs/Role.md)
 - [Rapid7VmConsole::Scan](docs/Scan.md)
 - [Rapid7VmConsole::ScanEngine](docs/ScanEngine.md)
 - [Rapid7VmConsole::ScanEvents](docs/ScanEvents.md)
 - [Rapid7VmConsole::ScanSchedule](docs/ScanSchedule.md)
 - [Rapid7VmConsole::ScanScope](docs/ScanScope.md)
 - [Rapid7VmConsole::ScanSettings](docs/ScanSettings.md)
 - [Rapid7VmConsole::ScanSize](docs/ScanSize.md)
 - [Rapid7VmConsole::ScanTargetsResource](docs/ScanTargetsResource.md)
 - [Rapid7VmConsole::ScanTemplate](docs/ScanTemplate.md)
 - [Rapid7VmConsole::ScanTemplateAssetDiscovery](docs/ScanTemplateAssetDiscovery.md)
 - [Rapid7VmConsole::ScanTemplateDatabase](docs/ScanTemplateDatabase.md)
 - [Rapid7VmConsole::ScanTemplateDiscovery](docs/ScanTemplateDiscovery.md)
 - [Rapid7VmConsole::ScanTemplateDiscoveryPerformance](docs/ScanTemplateDiscoveryPerformance.md)
 - [Rapid7VmConsole::ScanTemplateDiscoveryPerformancePacketsRate](docs/ScanTemplateDiscoveryPerformancePacketsRate.md)
 - [Rapid7VmConsole::ScanTemplateDiscoveryPerformanceParallelism](docs/ScanTemplateDiscoveryPerformanceParallelism.md)
 - [Rapid7VmConsole::ScanTemplateDiscoveryPerformanceScanDelay](docs/ScanTemplateDiscoveryPerformanceScanDelay.md)
 - [Rapid7VmConsole::ScanTemplateDiscoveryPerformanceTimeout](docs/ScanTemplateDiscoveryPerformanceTimeout.md)
 - [Rapid7VmConsole::ScanTemplateServiceDiscovery](docs/ScanTemplateServiceDiscovery.md)
 - [Rapid7VmConsole::ScanTemplateServiceDiscoveryTcp](docs/ScanTemplateServiceDiscoveryTcp.md)
 - [Rapid7VmConsole::ScanTemplateServiceDiscoveryUdp](docs/ScanTemplateServiceDiscoveryUdp.md)
 - [Rapid7VmConsole::ScanTemplateVulnerabilityCheckCategories](docs/ScanTemplateVulnerabilityCheckCategories.md)
 - [Rapid7VmConsole::ScanTemplateVulnerabilityCheckIndividual](docs/ScanTemplateVulnerabilityCheckIndividual.md)
 - [Rapid7VmConsole::ScanTemplateVulnerabilityChecks](docs/ScanTemplateVulnerabilityChecks.md)
 - [Rapid7VmConsole::ScanTemplateWebSpider](docs/ScanTemplateWebSpider.md)
 - [Rapid7VmConsole::ScanTemplateWebSpiderPaths](docs/ScanTemplateWebSpiderPaths.md)
 - [Rapid7VmConsole::ScanTemplateWebSpiderPatterns](docs/ScanTemplateWebSpiderPatterns.md)
 - [Rapid7VmConsole::ScanTemplateWebSpiderPerformance](docs/ScanTemplateWebSpiderPerformance.md)
 - [Rapid7VmConsole::ScheduledScanTargets](docs/ScheduledScanTargets.md)
 - [Rapid7VmConsole::SearchCriteria](docs/SearchCriteria.md)
 - [Rapid7VmConsole::Service](docs/Service.md)
 - [Rapid7VmConsole::ServiceLink](docs/ServiceLink.md)
 - [Rapid7VmConsole::ServiceUnavailableError](docs/ServiceUnavailableError.md)
 - [Rapid7VmConsole::Settings](docs/Settings.md)
 - [Rapid7VmConsole::SharedCredential](docs/SharedCredential.md)
 - [Rapid7VmConsole::SharedCredentialAccount](docs/SharedCredentialAccount.md)
 - [Rapid7VmConsole::Site](docs/Site.md)
 - [Rapid7VmConsole::SiteCreateResource](docs/SiteCreateResource.md)
 - [Rapid7VmConsole::SiteCredential](docs/SiteCredential.md)
 - [Rapid7VmConsole::SiteDiscoveryConnection](docs/SiteDiscoveryConnection.md)
 - [Rapid7VmConsole::SiteOrganization](docs/SiteOrganization.md)
 - [Rapid7VmConsole::SiteSharedCredential](docs/SiteSharedCredential.md)
 - [Rapid7VmConsole::SiteUpdateResource](docs/SiteUpdateResource.md)
 - [Rapid7VmConsole::SmtpAlert](docs/SmtpAlert.md)
 - [Rapid7VmConsole::SmtpSettings](docs/SmtpSettings.md)
 - [Rapid7VmConsole::SnmpAlert](docs/SnmpAlert.md)
 - [Rapid7VmConsole::Software](docs/Software.md)
 - [Rapid7VmConsole::SoftwareCpe](docs/SoftwareCpe.md)
 - [Rapid7VmConsole::Solution](docs/Solution.md)
 - [Rapid7VmConsole::SolutionMatch](docs/SolutionMatch.md)
 - [Rapid7VmConsole::SonarCriteria](docs/SonarCriteria.md)
 - [Rapid7VmConsole::SonarCriterion](docs/SonarCriterion.md)
 - [Rapid7VmConsole::SonarQuery](docs/SonarQuery.md)
 - [Rapid7VmConsole::StaticSite](docs/StaticSite.md)
 - [Rapid7VmConsole::Steps](docs/Steps.md)
 - [Rapid7VmConsole::Submission](docs/Submission.md)
 - [Rapid7VmConsole::Summary](docs/Summary.md)
 - [Rapid7VmConsole::SwaggerDiscoverySearchCriteriaFilter](docs/SwaggerDiscoverySearchCriteriaFilter.md)
 - [Rapid7VmConsole::SwaggerSearchCriteriaFilter](docs/SwaggerSearchCriteriaFilter.md)
 - [Rapid7VmConsole::SyslogAlert](docs/SyslogAlert.md)
 - [Rapid7VmConsole::Tag](docs/Tag.md)
 - [Rapid7VmConsole::TagAssetSource](docs/TagAssetSource.md)
 - [Rapid7VmConsole::TagLink](docs/TagLink.md)
 - [Rapid7VmConsole::TaggedAssetReferences](docs/TaggedAssetReferences.md)
 - [Rapid7VmConsole::Telnet](docs/Telnet.md)
 - [Rapid7VmConsole::TokenResource](docs/TokenResource.md)
 - [Rapid7VmConsole::UnauthorizedError](docs/UnauthorizedError.md)
 - [Rapid7VmConsole::UniqueId](docs/UniqueId.md)
 - [Rapid7VmConsole::UpdateId](docs/UpdateId.md)
 - [Rapid7VmConsole::UpdateInfo](docs/UpdateInfo.md)
 - [Rapid7VmConsole::UpdateSettings](docs/UpdateSettings.md)
 - [Rapid7VmConsole::User](docs/User.md)
 - [Rapid7VmConsole::UserAccount](docs/UserAccount.md)
 - [Rapid7VmConsole::UserCreateRole](docs/UserCreateRole.md)
 - [Rapid7VmConsole::UserRole](docs/UserRole.md)
 - [Rapid7VmConsole::VersionInfo](docs/VersionInfo.md)
 - [Rapid7VmConsole::Vulnerabilities](docs/Vulnerabilities.md)
 - [Rapid7VmConsole::Vulnerability](docs/Vulnerability.md)
 - [Rapid7VmConsole::VulnerabilityCategory](docs/VulnerabilityCategory.md)
 - [Rapid7VmConsole::VulnerabilityCheck](docs/VulnerabilityCheck.md)
 - [Rapid7VmConsole::VulnerabilityCheckType](docs/VulnerabilityCheckType.md)
 - [Rapid7VmConsole::VulnerabilityCvss](docs/VulnerabilityCvss.md)
 - [Rapid7VmConsole::VulnerabilityCvssV2](docs/VulnerabilityCvssV2.md)
 - [Rapid7VmConsole::VulnerabilityCvssV3](docs/VulnerabilityCvssV3.md)
 - [Rapid7VmConsole::VulnerabilityEvents](docs/VulnerabilityEvents.md)
 - [Rapid7VmConsole::VulnerabilityException](docs/VulnerabilityException.md)
 - [Rapid7VmConsole::VulnerabilityFinding](docs/VulnerabilityFinding.md)
 - [Rapid7VmConsole::VulnerabilityReference](docs/VulnerabilityReference.md)
 - [Rapid7VmConsole::VulnerabilityValidationResource](docs/VulnerabilityValidationResource.md)
 - [Rapid7VmConsole::VulnerabilityValidationSource](docs/VulnerabilityValidationSource.md)
 - [Rapid7VmConsole::WebApplication](docs/WebApplication.md)
 - [Rapid7VmConsole::WebFormAuthentication](docs/WebFormAuthentication.md)
 - [Rapid7VmConsole::WebHeaderAuthentication](docs/WebHeaderAuthentication.md)
 - [Rapid7VmConsole::WebPage](docs/WebPage.md)
 - [Rapid7VmConsole::WebSettings](docs/WebSettings.md)


### Documentation for Authorization


#### Basic

- **Type**: HTTP basic authentication

