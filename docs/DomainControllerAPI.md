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
    open class func addDomainWildcardCatchAll(id: UUID, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Add catch all wild card inbox to domain

Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let id = 987 // UUID | 

// Add catch all wild card inbox to domain
DomainControllerAPI.addDomainWildcardCatchAll(id: id) { (response, error) in
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
 **id** | [**UUID**]() |  | 

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
    open class func createDomain(createDomainOptions: CreateDomainOptions, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createDomainOptions = CreateDomainOptions(domain: "domain_example", description: "description_example", createdCatchAllInbox: false, domainType: "domainType_example") // CreateDomainOptions | 

// Create Domain
DomainControllerAPI.createDomain(createDomainOptions: createDomainOptions) { (response, error) in
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
    open class func deleteDomain(id: UUID, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let id = 987 // UUID | 

// Delete a domain
DomainControllerAPI.deleteDomain(id: id) { (response, error) in
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
 **id** | [**UUID**]() |  | 

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomain**
```swift
    open class func getDomain(id: UUID, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Get a domain

Returns domain verification status and tokens for a given domain

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let id = 987 // UUID | 

// Get a domain
DomainControllerAPI.getDomain(id: id) { (response, error) in
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
 **id** | [**UUID**]() |  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDomain**
```swift
    open class func updateDomain(id: UUID, updateDomainOptions: UpdateDomainOptions, completion: @escaping (_ data: DomainDto?, _ error: Error?) -> Void)
```

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let id = 987 // UUID | 
let updateDomainOptions = UpdateDomainOptions(catchAllInboxId: 123) // UpdateDomainOptions | 

// Update a domain
DomainControllerAPI.updateDomain(id: id, updateDomainOptions: updateDomainOptions) { (response, error) in
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
 **id** | [**UUID**]() |  | 
 **updateDomainOptions** | [**UpdateDomainOptions**](UpdateDomainOptions) |  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

