# DomainControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDomainWildcardCatchAll**](DomainControllerAPI#adddomainwildcardcatchall) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**createDomain**](DomainControllerAPI#createdomain) | **POST** /domains | Create Domain
[**deleteDomain**](DomainControllerAPI#deletedomain) | **DELETE** /domains/{id} | Delete a domain
[**getDomain**](DomainControllerAPI#getdomain) | **GET** /domains/{id} | Get a domain
[**getDomains**](DomainControllerAPI#getdomains) | **GET** /domains | Get domains
[**updateDomain**](DomainControllerAPI#updatedomain) | **PUT** /domains/{id} | Update a domain


# **addDomainWildcardCatchAll**
```swift
    open class func addDomainWildcardCatchAll(_id: UUID, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Add catch all wild card inbox to domain

Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | id

// Add catch all wild card inbox to domain
DomainControllerAPI.addDomainWildcardCatchAll(_id: _id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**UUID**]() | id | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDomain**
```swift
    open class func createDomain(domainOptions: CreateDomainOptions, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let domainOptions = CreateDomainOptions(createdCatchAllInbox: false, _description: "_description_example", domain: "domain_example") // CreateDomainOptions | domainOptions

// Create Domain
DomainControllerAPI.createDomain(domainOptions: domainOptions) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainOptions** | [**CreateDomainOptions**](CreateDomainOptions) | domainOptions | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomain**
```swift
    open class func deleteDomain(_id: UUID, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | id

// Delete a domain
DomainControllerAPI.deleteDomain(_id: _id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**UUID**]() | id | 

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomain**
```swift
    open class func getDomain(_id: UUID, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Get a domain

Returns domain verification status and tokens for a given domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | id

// Get a domain
DomainControllerAPI.getDomain(_id: _id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**UUID**]() | id | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomains**
```swift
    open class func getDomains(completion: @escaping (_ data: [DomainPreview]?, _ error: Error?) -> Void)
```

Get domains

List all custom domains you have created

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get domains
DomainControllerAPI.getDomains() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDomain**
```swift
    open class func updateDomain(_id: UUID, updateDomainDto: UpdateDomainOptions, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | id
let updateDomainDto = UpdateDomainOptions(catchAllInboxId: 123) // UpdateDomainOptions | updateDomainDto

// Update a domain
DomainControllerAPI.updateDomain(_id: _id, updateDomainDto: updateDomainDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**UUID**]() | id | 
 **updateDomainDto** | [**UpdateDomainOptions**](UpdateDomainOptions) | updateDomainDto | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

