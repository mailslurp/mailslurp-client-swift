# DomainControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDomainWildcardCatchAll**](DomainControllerAPI#adddomainwildcardcatchall) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**createDomain**](DomainControllerAPI#createdomain) | **POST** /domains | Create Domain
[**deleteDomain**](DomainControllerAPI#deletedomain) | **DELETE** /domains/{id} | Delete a domain
[**getAvailableDomains**](DomainControllerAPI#getavailabledomains) | **GET** /domains/available-domains | Get all usable domains
[**getDomain**](DomainControllerAPI#getdomain) | **GET** /domains/{id} | Get a domain
[**getDomainIssues**](DomainControllerAPI#getdomainissues) | **GET** /domains/issues | Get domain issues
[**getDomainWildcardCatchAllInbox**](DomainControllerAPI#getdomainwildcardcatchallinbox) | **GET** /domains/{id}/wildcard | Get catch all wild card inbox for domain
[**getDomains**](DomainControllerAPI#getdomains) | **GET** /domains | Get domains
[**getMailSlurpDomains**](DomainControllerAPI#getmailslurpdomains) | **GET** /domains/mailslurp-domains | Get MailSlurp domains
[**updateDomain**](DomainControllerAPI#updatedomain) | **PUT** /domains/{id} | Update a domain


# **addDomainWildcardCatchAll**
```swift
    open class func addDomainWildcardCatchAll( _id: UUID) -> Promise<DomainDto>
```

Add catch all wild card inbox to domain

Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Add catch all wild card inbox to domain
DomainControllerAPI.addDomainWildcardCatchAll(_id: _id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDomain**
```swift
    open class func createDomain( createDomainOptions: CreateDomainOptions) -> Promise<DomainDto>
```

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createDomainOptions = CreateDomainOptions(domain: "domain_example", _description: "_description_example", createdCatchAllInbox: false, domainType: "domainType_example") // CreateDomainOptions | 

// Create Domain
DomainControllerAPI.createDomain(createDomainOptions: createDomainOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDomainOptions** | [**CreateDomainOptions**](CreateDomainOptions) |  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomain**
```swift
    open class func deleteDomain( _id: UUID) -> Promise<[String]>
```

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Delete a domain
DomainControllerAPI.deleteDomain(_id: _id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAvailableDomains**
```swift
    open class func getAvailableDomains( inboxType: InboxType_getAvailableDomains? = nil) -> Promise<DomainGroupsDto>
```

Get all usable domains

List all domains available for use with email address creation

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxType = "inboxType_example" // String |  (optional)

// Get all usable domains
DomainControllerAPI.getAvailableDomains(inboxType: inboxType).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxType** | **String** |  | [optional] 

### Return type

[**DomainGroupsDto**](DomainGroupsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomain**
```swift
    open class func getDomain( _id: UUID,  checkForErrors: Bool? = nil) -> Promise<DomainDto>
```

Get a domain

Returns domain verification status and tokens for a given domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let checkForErrors = true // Bool |  (optional)

// Get a domain
DomainControllerAPI.getDomain(_id: _id, checkForErrors: checkForErrors).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 
 **checkForErrors** | **Bool** |  | [optional] 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainIssues**
```swift
    open class func getDomainIssues() -> Promise<DomainIssuesDto>
```

Get domain issues

List domain issues for domains you have created

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get domain issues
DomainControllerAPI.getDomainIssues().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainIssuesDto**](DomainIssuesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainWildcardCatchAllInbox**
```swift
    open class func getDomainWildcardCatchAllInbox( _id: UUID) -> Promise<InboxDto>
```

Get catch all wild card inbox for domain

Get the catch all inbox for a domain for missed emails

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get catch all wild card inbox for domain
DomainControllerAPI.getDomainWildcardCatchAllInbox(_id: _id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomains**
```swift
    open class func getDomains() -> Promise<[DomainPreview]>
```

Get domains

List all custom domains you have created

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get domains
DomainControllerAPI.getDomains().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[DomainPreview]**](DomainPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMailSlurpDomains**
```swift
    open class func getMailSlurpDomains( inboxType: InboxType_getMailSlurpDomains? = nil) -> Promise<DomainGroupsDto>
```

Get MailSlurp domains

List all MailSlurp domains used with non-custom email addresses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxType = "inboxType_example" // String |  (optional)

// Get MailSlurp domains
DomainControllerAPI.getMailSlurpDomains(inboxType: inboxType).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxType** | **String** |  | [optional] 

### Return type

[**DomainGroupsDto**](DomainGroupsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDomain**
```swift
    open class func updateDomain( _id: UUID,  updateDomainOptions: UpdateDomainOptions) -> Promise<DomainDto>
```

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let updateDomainOptions = UpdateDomainOptions(catchAllInboxId: 123) // UpdateDomainOptions | 

// Update a domain
DomainControllerAPI.updateDomain(_id: _id, updateDomainOptions: updateDomainOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **UUID** |  | 
 **updateDomainOptions** | [**UpdateDomainOptions**](UpdateDomainOptions) |  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

